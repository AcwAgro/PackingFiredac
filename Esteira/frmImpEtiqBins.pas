unit frmImpEtiqBins;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, RzPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmImpEtiqBins = class(TForm)
    dsDados: TDataSource;
    RzPanel1: TRzPanel;
    rzpUtilitario: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    PDados: TPanel;
    Label7: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SBP2: TSpeedButton;
    SBP3: TSpeedButton;
    M1: TMaskEdit;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    M2: TMaskEdit;
    M3: TMaskEdit;
    M6: TMaskEdit;
    M5: TMaskEdit;
    M7: TMaskEdit;
    M8: TMaskEdit;
    sb7: TSpeedButton;
    M4: TcxDateEdit;
    M10: TcxCurrencyEdit;
    M9: TcxCurrencyEdit;
    cdsDados: TFDQuery;
    cdsDadosVARIEDADE: TStringField;
    cdsDadosPRODUTOR: TStringField;
    cdsDadosROMANEIO: TStringField;
    cdsDadosDATA: TStringField;
    cdsDadosTIPOBINS: TStringField;
    cdsDadosNOTA: TStringField;
    cdsDadosMOTORISTA: TStringField;
    cdsDadosPESOKG: TStringField;
    cdsDadosPESOBRUTO: TStringField;
    cdsDadosPESOTARA: TStringField;
    cdsDadosPESOLIQUIDO: TStringField;
    cdsDadosLINHA1: TStringField;
    cdsDadosLINHA2: TStringField;
    cdsDadosLINHA3: TStringField;
    cdsDadosLINHA4: TStringField;
    cdsDadosLINHA5: TStringField;
    cdsDadosQTDE: TIntegerField;
    cdsDadosCONTADOR: TIntegerField;
    cdsDadosBARRA: TStringField;
    cdsDadosVARCOD: TIntegerField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sb7Click(Sender: TObject);
    procedure SBP2Click(Sender: TObject);
    procedure SBP3Click(Sender: TObject);
  private
  public
    { Public declarations }
    vImpDireto: Boolean;
  end;

var
  FfrmImpEtiqBins: TFfrmImpEtiqBins;
  vTag,vKey:Integer;

implementation

uses Esteira, Rotina, Data, Pesq, zModeloRel;

{$R *.DFM}

procedure TFfrmImpEtiqBins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(FfrmImpEtiqBins);
end;

procedure TFfrmImpEtiqBins.FormCreate(Sender: TObject);
begin
  vImpDireto := False;
  cdsDados.Open;
end;

procedure TFfrmImpEtiqBins.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiqBins.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmImpEtiqBins.sb7Click(Sender: TObject);
var vinicio, vqtde, vqtdeFim, vcontador: Integer;
begin
//  vcontador := edContador.Value + edQtde.Value;
//  if vcontador > 10000 then vinicio := 10
//  else vinicio := edContador.Value;
//  if edQtde.Value = 1 then vqtdeFim := 2
//  else vqtdeFim := edQtde.Value;

  vinicio := 1;
  for vqtde := 1 to edQtde.Value do
  begin
    vinicio := vinicio + 1;
    cdsDados.Append;
    cdsDadosQtde.Value      := edQtde.Value;
    cdsDadosContador.Value  := vinicio;
    cdsDadosVariedade.Text  := M1.Text;
    cdsDadosProdutor.Text   := M2.Text;
    cdsDadosRomaneio.Text   := M3.Text;
    cdsDadosData.Text       := M4.Text;
    cdsDadosNota.Text       := M5.Text;
    cdsDadosTipoBins.Text   := M6.Text;
    cdsDadosLinha1.Text     := M7.Text;
    cdsDadosLinha2.Text     := M8.Text;
    cdsDadosVarcod.AsString := Trim(M9.Text);
    cdsDadosProdCod.AsString:= Trim(M10.Text);
    cdsDadosLinha5.Text     := Trim(M10.Text);
    cdsDadosBarra.Text      := frPree(cdsDadosRomaneio.Text,6,'0',0)+frPree(vinicio,6,'0',0);
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
end;

procedure TFfrmImpEtiqBins.SBP2Click(Sender: TObject);
begin

  fPqVariedade;
  M9.Text := xpqResul;
  if fTra(1,['Select Descricao From CadVarie Where Codigo=0'+Trim(M9.Text)],1) then
    M1.Text := dm.qrSqlTra.Fields[0].Text;

end;

procedure TFfrmImpEtiqBins.SBP3Click(Sender: TObject);
begin

  FPQForneCooper;
  M10.Text := xpqResul;
  if fTra(1,['Select Descricao From CadForne Where Codigo=0'+Trim(M10.Text)],1) then
    M2.Text := dm.qrSqlTra.Fields[0].Text;

end;

end.
