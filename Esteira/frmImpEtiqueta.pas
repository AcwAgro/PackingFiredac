unit frmImpEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, ACBrBase, AppEvnts,
  RzPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmImpEtiqueta = class(TForm)
    dsDados: TDataSource;
    RzPanel1: TRzPanel;
    rzpUtilitario: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel5: TRzPanel;
    PDados: TPanel;
    Label7: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edDesc: TEdit;
    edLote: TEdit;
    edLinha1: TEdit;
    edPeso: TEdit;
    edLinha2: TEdit;
    edLinha4: TEdit;
    edLinha3: TEdit;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    edLinha5: TEdit;
    sb7: TSpeedButton;
    ME1: TcxCurrencyEdit;
    SBP1: TSpeedButton;
    SBP2: TSpeedButton;
    cdsDados: TFDQuery;
    cdsDadosCODIGO: TIntegerField;
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
    cdsDadosVARIEDADE: TStringField;
    cdsDadosCATEGORIA: TStringField;
    cdsDadosCALIBRE: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosLINHA10: TStringField;
    cdsDadosLINHA11: TStringField;
    cdsDadosLINHA12: TStringField;
    cdsDadosLINHA13: TStringField;
    cdsDadosID_LANC: TIntegerField;
    cdsDadosID_LOTE: TIntegerField;
    cdsDadosWEBLOCALPRO: TStringField;
    cdsDadosWEBLOCALEMP: TStringField;
    cdsDadosWEBLOCALCLI: TStringField;
    cdsDadosWEBQRCODEL1: TStringField;
    cdsDadosWEBQRCODEL2: TStringField;
    cdsDadosWEBQRCODEL3: TStringField;
    cdsDadosWEBQRCODEL4: TStringField;
    cdsDadosEMPRESAEND: TStringField;
    cdsDadosPRODUTORDES: TStringField;
    cdsDadosPRODUTORDOC: TStringField;
    cdsDadosEMPRESADOC: TStringField;
    cdsDadosPRODUTOREND: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure SBP1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ME1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sb7Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure ME1KeyPress(Sender: TObject; var Key: Char);
    procedure SBP2Click(Sender: TObject);
  private
  public
    { Public declarations }
    vImpDireto: Boolean;
  end;

var
  FfrmImpEtiqueta: TFfrmImpEtiqueta;
  vTag,vKey:Integer;

implementation

uses Esteira, Rotina, Data, Pesq, zModeloRel;

{$R *.DFM}

procedure TFfrmImpEtiqueta.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.wParam = VK_TAB) then
    vkey := 13;
end;

procedure TFfrmImpEtiqueta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FreeAndNil(FfrmImpEtiqueta);
end;

procedure TFfrmImpEtiqueta.FormCreate(Sender: TObject);
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

procedure TFfrmImpEtiqueta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
    Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
    Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmImpEtiqueta.SBP1Click(Sender: TObject);
begin
  fPqProduto;
  ME1.Text := xpqResul;
  ME1.SetFocus;
end;

procedure TFfrmImpEtiqueta.SBP2Click(Sender: TObject);
var vcod:String;
begin
  FPQForneCooper;
  vcod := xpqResul;
  if fTra(1,['Select Descricao,Cpf From CadForne Where Codigo=0'+Trim(vcod)],1) then
  begin
    edLinha3.Text:=dm.qrSqlTra.Fields[0].Text;
    edLinha4.Text:=dm.qrSqlTra.Fields[1].Text;
  end;
  edLinha3.SetFocus;
end;

procedure TFfrmImpEtiqueta.ME1Exit(Sender: TObject);
var vcat: String;
begin
  if fTra(1,['Select Descricao, pesoliq, categcod, calibredes From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
  begin
    edDesc.Text:=dm.qrSqlTra.Fields[0].Text;
    edPeso.Text:=dm.qrSqlTra.Fields[1].Text+' kg';
    vcat :=dm.qrSqlTra.Fields[2].Text;
    edLinha5.Text :=dm.qrSqlTra.Fields[3].Text;

    if fTra(1,['Select codclass From CadCateg Where Codigo=0'+Trim(vcat)],1) then
      if trim(dm.qrSqlTra.Fields[0].Text) <> '' then
        edLinha4.Text:=dm.qrSqlTra.Fields[0].Text;
  end
  else SBP1.OnClick(Sender);
end;

procedure TFfrmImpEtiqueta.ME1KeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if (key=#13) then
  begin
    key:=#0; vKey:=13;
    Selectnext((Sender As TWinControl),True,True);
  end;
end;

procedure TFfrmImpEtiqueta.sb7Click(Sender: TObject);
var vinicio, vqtde, vcontador: Integer;
begin
  vcontador := edContador.Value + edQtde.Value;
  if vcontador > 10000 then vinicio := 10
  else vinicio := edContador.Value;

  cdsDados.First;
  while not cdsDados.Eof do cdsDados.Delete;
  
  for vqtde := 1 to edQtde.Value do//(edQtde.Value -1) do
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
    cdsDadosQtde.Value  := edQtde.Value;
    cdsDadosContador.Value := vinicio;
    if fTra(1,['Select VarieDes, CategDes, Calibre, CalibreDes From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
    begin
      cdsDadosVariedade.Text := dm.qrSqlTra.Fields[0].Text;
      cdsDadosCategoria.Text := dm.qrSqlTra.Fields[1].Text;
      cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[2].Text;
      cdsDadosLinha5.Text    := dm.qrSqlTra.Fields[3].Text;
    end;
    if length(Trim(ME1.Text))= 8 then
      cdsDadosBarra.Text := Copy(cdsDadosCodigo.Text,4,5)+frPree(vinicio,7,'0',0)
    else
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
      if FModeloRel.cdsDados.RecordCount <= 1 then
        FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir)
      else begin
        FModeloRel.rzpMenu.Visible := False;
        FModeloRel.ShowModal;
      end;
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
  cdsDadosQtde.Value  := edQtde.Value;
  cdsDadosContador.Value := vinicio;
  if fTra(1,['Select VarieDes, CategDes, Calibre, CalibreDes From CadProdu Where Codigo=0'+Trim(ME1.Text)],1) then
  begin
    cdsDadosVariedade.Text := dm.qrSqlTra.Fields[0].Text;
    cdsDadosCategoria.Text := dm.qrSqlTra.Fields[1].Text;
    cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[2].Text;
    cdsDadosLinha5.Text    := dm.qrSqlTra.Fields[3].Text;
  end;
  if length(cdsDadosCodigo.Text)= 8 then
    cdsDadosBarra.Text := Copy(cdsDadosCodigo.Text,4,5)+frPree(vinicio,7,'0',0)
  else
    cdsDadosBarra.Text := Copy(cdsDadosCodigo.Text,3,5)+frPree(vinicio,7,'0',0);
  cdsDados.Post;
//  cdsDados.ApplyUpdates(0);
  edContador.Value := vinicio + 1;
end;
end.
