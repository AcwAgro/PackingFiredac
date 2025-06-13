unit frmImpEtiqBinsSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, RzPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit;

type
  TFfrmImpEtiqBinsSaida = class(TForm)
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    sqlDadosPRODUTOR: TStringField;
    sqlDadosROMANEIO: TStringField;
    sqlDadosDATA: TStringField;
    sqlDadosTIPOBINS: TStringField;
    sqlDadosNOTA: TStringField;
    sqlDadosMOTORISTA: TStringField;
    sqlDadosPESOKG: TStringField;
    sqlDadosPESOBRUTO: TStringField;
    sqlDadosPESOTARA: TStringField;
    sqlDadosPESOLIQUIDO: TStringField;
    sqlDadosLINHA1: TStringField;
    sqlDadosLINHA2: TStringField;
    sqlDadosLINHA3: TStringField;
    sqlDadosLINHA4: TStringField;
    sqlDadosLINHA5: TStringField;
    sqlDadosQTDE: TIntegerField;
    sqlDadosCONTADOR: TIntegerField;
    sqlDadosBARRA: TStringField;
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
    sqlDadosPRODCOD: TIntegerField;
    cdsDadosPRODCOD: TIntegerField;
    RzPanel1: TRzPanel;
    rzpUtilitario: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    PDados: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    M2: TMaskEdit;
    M3: TMaskEdit;
    M6: TMaskEdit;
    M7: TMaskEdit;
    M8: TMaskEdit;
    sb7: TSpeedButton;
    M4: TcxDateEdit;
    M10: TcxCurrencyEdit;
    SBP2: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sb7Click(Sender: TObject);
    procedure SBP2Click(Sender: TObject);
  private
  public
    { Public declarations }
    vImpDireto: Boolean;
  end;

var
  FfrmImpEtiqBinsSaida: TFfrmImpEtiqBinsSaida;
  vTag,vKey:Integer;

implementation

uses Menu, Rotina, Data, Pesq, zModeloRel;

{$R *.DFM}

procedure TFfrmImpEtiqBinsSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmImpEtiqBinsSaida);
end;

procedure TFfrmImpEtiqBinsSaida.FormCreate(Sender: TObject);
begin
  vImpDireto := False;
  cdsDados.Open;
end;

procedure TFfrmImpEtiqBinsSaida.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiqBinsSaida.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmImpEtiqBinsSaida.sb7Click(Sender: TObject);
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
    cdsDadosQtde.Value     := edQtde.Value;
    cdsDadosContador.Value := vinicio;
    cdsDadosProdutor.Text  := M2.Text;
    cdsDadosRomaneio.Text  := M3.Text;
    cdsDadosData.Text      := M4.Text;
    cdsDadosTipoBins.Text  := M6.Text;
    cdsDadosLinha1.Text    := M7.Text;
    cdsDadosLinha2.Text    := M8.Text;
    cdsDadosProdCod.Value  := StrToIntDef(M10.Text,0);
    cdsDadosBarra.Text     := frPree(cdsDadosRomaneio.Text,6,'0',0)+frPree(vinicio,6,'0',0);
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

procedure TFfrmImpEtiqBinsSaida.SBP2Click(Sender: TObject);
begin

  FPQSOProdutor;
  M10.Text := xpqResul;
  if fTra(1,['Select Descricao From CadForne Where Codigo=0'+Trim(M10.Text)],1) then
    M2.Text := dm.qrSqlTra.Fields[0].Text;

end;

end.
