unit frmPaletConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, DBTables, StdCtrls, Mask, Grids, DBGrids,
  ComCtrls, Buttons, ExtCtrls, DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmPaletConsulta = class(TForm)
    PMenu: TPanel;
    sbConsultar: TSpeedButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    sbImportar: TSpeedButton;
    GroupBox5: TGroupBox;
    pnlPalet: TPanel;
    GroupBox1: TGroupBox;
    mePalet: TMaskEdit;
    dspDados: TDataSetProvider;
    dsDados: TDataSource;
    edzTotal: TDBEdit;
    cdsDados: TClientDataSet;
    cdsDadosnumero: TIntegerField;
    cdsDadosdata: TSQLTimeStampField;
    cdsDadosvqtde: TBCDField;
    cdsDadospalet: TIntegerField;
    cdsDadosvqtdepr: TBCDField;
    cdsDadoscodigo: TIntegerField;
    cdsDadosdescricao: TStringField;
    cdsDadoslotelanc: TIntegerField;
    cdsDadoslote: TIntegerField;
    cdsDadoszSel: TStringField;
    cdsDadoszQtde: TBCDField;
    cdsDadoszTotal: TAggregateField;
    cdsDadosProdCod: TIntegerField;
    cdsDadosProdDes: TStringField;
    sqlDados: TFDQuery;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosVQTDE: TBCDField;
    sqlDadosPALET: TIntegerField;
    sqlDadosVQTDEPR: TBCDField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosLOTELANC: TIntegerField;
    sqlDadosLOTE: TIntegerField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure sbConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mePaletExit(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vKey: Integer;
  end;

var
  FfrmPaletConsulta: TFfrmPaletConsulta;

implementation

{$R *.dfm}
uses Data, Rotina, frmVendaProdutoLote;

procedure TFfrmPaletConsulta.cdsDadosCalcFields(DataSet: TDataSet);
begin

{  if (cdsDadoszQtde.AsInteger >= 0) then
    cdsDadoszSel.AsString := 'X'
  else
    cdsDadoszSel.Clear;
}
end;

procedure TFfrmPaletConsulta.DBGrid1DblClick(Sender: TObject);
var vpalet: Int64;
begin

  if cdsDados.IsEmpty then
     Exit;

  vpalet := StrToIntDef(Trim(cdsDadospalet.Text),0);
  if (vpalet <= 0) then
    Exit;

  cdsDados.DisableControls;
  cdsDados.Filtered := False;
  cdsDados.Filter   := 'Palet = 0'+Trim(IntToStr(vpalet));
  cdsDados.Filtered := True;

  while not cdsDados.Eof do
  begin

    cdsDados.Edit;
    if (cdsDadoszSel.AsString <> 'X') then
    begin
      cdsDadoszSel.AsString := 'X';
      cdsDadoszQtde.AsInteger := cdsDadosvqtdepr.AsInteger;
    end
    else begin
      cdsDadoszSel.Clear;
      cdsDadoszQtde.Clear;
    end;
    cdsDados.Post;

    cdsDados.Next;

  end;
  cdsDados.Filtered := False;
  cdsDados.Filter   := '';
  cdsDados.EnableControls;

  if cdsDados.Locate('PALET', vpalet, []) then
    mePalet.Text := ''
  else
    mePalet.Text := '';

  if mePalet.Canfocus then
    mePalet.Setfocus;

end;

procedure TFfrmPaletConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  //FreeAndNil(FfrmPaletConsulta);

end;

procedure TFfrmPaletConsulta.FormCreate(Sender: TObject);
begin

  dtpInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy', date));
  dtpfinal.Date := Date;

end;

procedure TFfrmPaletConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin

  vKey:=0;
  if key = #13 then
  begin
    key  := #0;
    vKey := 13;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TFfrmPaletConsulta.FormShow(Sender: TObject);
begin

  sbConsultar.onClick(sbConsultar);

end;

procedure TFfrmPaletConsulta.mePaletExit(Sender: TObject);
var vpalet: Int64;
begin

  if vKey <> 13 then exit;

  vpalet := StrToIntDef(Trim(mePalet.Text),0);
  if vpalet <= 0 then
    exit;

  dtpInicial.SetFocus;
  if cdsDados.Locate('PALET', vpalet, []) then
    DBGrid1.onDblClick(DBGrid1)
  else
    mePalet.Text := '';

  if mePalet.Canfocus then
    mePalet.Setfocus;

end;

procedure TFfrmPaletConsulta.sbConsultarClick(Sender: TObject);
var vdtper: String;
begin

  vdtper := '(cc.Data >='+frInvD(dtpInicial.Date)+' and cc.Data < '+frInvD(dtpFinal.Date+1)+')';

  sqlDados.Close;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.Sql.Add('Select cc.numero, cc.data, cc.qtde as vqtde, cc.palet, pp.qtde as vqtdepr, pp.codigo, pp.descricao, pp.lotelanc, pp.lote, rr.ProdCod, rr.ProdDes');
  sqlDados.Sql.Add('  From PaletCab cc, PaletPro pp, RomanPro rr');
  sqlDados.Sql.Add(' Where (cc.numero = pp.numero) and (pp.lotelanc = rr.lanc)');
  sqlDados.Sql.Add('   and '+vdtper);
  sqlDados.Sql.Add('   and cc.Baixa = ''N''');
  sqlDados.Sql.Add(' Order by cc.palet, pp.Codigo');
  cdsDados.Open;

  if mePalet.Canfocus then
    mePalet.Setfocus;

end;

procedure TFfrmPaletConsulta.sbImportarClick(Sender: TObject);
var  vtexto: String;
     vQtdeTotal, vQtdeCx, vqtd, vxqtdx, vcont, vsomapr: Integer;
     vid, vi, vpal, vnumero, vnumlancit: Integer;
begin

  //Calcula Qtde
  vQtdeTotal := StrToIntDef(edzTotal.Text,0);

  if (vQtdeTotal < 1) then exit;

  if not frPerg(PChar('Deseja importar Palets?')) then
    exit;

  try
    try

      //Limpa tabela detalhes
      FfrmVendaProdutoLote.cdsDetalhe.EmptyDataSet;

      cdsDados.DisableControls;
      cdsDados.First;
      while not cdsDados.Eof do
      begin

        if (cdsDadoszSel.AsString = 'X') then
        begin

          if FfrmVendaProdutoLote.cdsDetalhe.Locate('CODIGO;LOTEROMAN;PRODCOD;PALETNUM',
                                  VarArrayOf([cdsDadosCodigo.AsInteger,
                                              cdsDadosLote.AsInteger,
                                              cdsDadosProdCod.AsInteger,
                                              cdsDadosPalet.AsInteger]), []) then
          begin
            FfrmVendaProdutoLote.cdsDetalhe.Edit;
            FfrmVendaProdutoLote.cdsDetalheQTDE.AsFloat        := FfrmVendaProdutoLote.cdsDetalheQTDE.AsFloat
                                                                + cdsDadosvqtdepr.AsFloat;
          end
          else begin
            FfrmVendaProdutoLote.cdsDetalhe.Append;
            FfrmVendaProdutoLote.cdsDetalheCODIGO.AsInteger    := cdsDadosCodigo.AsInteger;
            FfrmVendaProdutoLote.cdsDetalheLOTEROMAN.AsInteger := cdsDadosLote.AsInteger;
            FfrmVendaProdutoLote.cdsDetalhePRODCOD.AsInteger   := cdsDadosProdCod.AsInteger;
            FfrmVendaProdutoLote.cdsDetalhePALETNUM.AsInteger  := cdsDadosPalet.AsInteger;
            FfrmVendaProdutoLote.cdsDetalheEMPRECOD.AsInteger  := xEmp;
            FfrmVendaProdutoLote.cdsDetalheACESOCOD.AsInteger  := xAce;

            FfrmVendaProdutoLote.cdsDetalheQTDE.AsFloat        := cdsDadosvqtdepr.AsFloat;

            if fTra(1,['Select Descricao, Unidade, Venda1, PesoLiq From CadProdu Where Codigo=0'+cdsDadosCodigo.Text],1) then
            begin
              FfrmVendaProdutoLote.cdsDetalheDescricao.Text   :=dm.qrSqlTra.Fields[0].Text;
              FfrmVendaProdutoLote.cdsDetalheUnidade.Text     :=dm.qrSqlTra.Fields[1].Text;
              FfrmVendaProdutoLote.cdsDetalheUnit.AsFloat     :=dm.qrSqlTra.Fields[2].asFloat;
              FfrmVendaProdutoLote.cdsDetalhePesoLiq.AsFloat  :=dm.qrSqlTra.Fields[3].asFloat;
              FfrmVendaProdutoLote.cdsDetalheRUnit.AsFloat     :=dm.qrSqlTra.Fields[2].asFloat;
            end

          end;
          FfrmVendaProdutoLote.cdsDetalhe.Post;

        end;

        cdsDados.Next;

      end;
      cdsDados.EnableControls;
      cdsDados.First;

    except

      on E: Exception do
        ShowMessage('Falha: '+E.Message);

    end;
  finally

    Close;

  end;


end;

end.
