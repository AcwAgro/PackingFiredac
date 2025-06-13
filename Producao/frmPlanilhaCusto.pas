unit frmPlanilhaCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, RzPanel, DBClient, Provider, Spin, RzTabs;

type
  TFfrmPlanilhaCusto = class(TForm)
    rzpDados: TRzPanel;
    sbSalvar: TSpeedButton;
    sbEditar: TSpeedButton;
    sbImprimir: TSpeedButton;
    RzPanel2: TRzPanel;
    gbLegenda: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    sqlDadosLANCIT: TIntegerField;
    sqlDadosSAFRA: TStringField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosOPE01: TFloatField;
    sqlDadosEMP01: TFloatField;
    sqlDadosADM01: TFloatField;
    sqlDadosOUT01: TFloatField;
    sqlDadosLUC01: TFloatField;
    sqlDadosOPE02: TFloatField;
    sqlDadosEMP02: TFloatField;
    sqlDadosADM02: TFloatField;
    sqlDadosOUT02: TFloatField;
    sqlDadosLUC02: TFloatField;
    sqlDadosOPE03: TFloatField;
    sqlDadosEMP03: TFloatField;
    sqlDadosADM03: TFloatField;
    sqlDadosOUT03: TFloatField;
    sqlDadosLUC03: TFloatField;
    sqlDadosOPE04: TFloatField;
    sqlDadosEMP04: TFloatField;
    sqlDadosADM04: TFloatField;
    sqlDadosOUT04: TFloatField;
    sqlDadosLUC04: TFloatField;
    sqlDadosOPE05: TFloatField;
    sqlDadosEMP05: TFloatField;
    sqlDadosADM05: TFloatField;
    sqlDadosOUT05: TFloatField;
    sqlDadosLUC05: TFloatField;
    sqlDadosOPE06: TFloatField;
    sqlDadosEMP06: TFloatField;
    sqlDadosADM06: TFloatField;
    sqlDadosOUT06: TFloatField;
    sqlDadosLUC06: TFloatField;
    sqlDadosOPE07: TFloatField;
    sqlDadosEMP07: TFloatField;
    sqlDadosADM07: TFloatField;
    sqlDadosOUT07: TFloatField;
    sqlDadosLUC07: TFloatField;
    sqlDadosOPE08: TFloatField;
    sqlDadosEMP08: TFloatField;
    sqlDadosADM08: TFloatField;
    sqlDadosOUT08: TFloatField;
    sqlDadosLUC08: TFloatField;
    sqlDadosOPE09: TFloatField;
    sqlDadosEMP09: TFloatField;
    sqlDadosADM09: TFloatField;
    sqlDadosOUT09: TFloatField;
    sqlDadosLUC09: TFloatField;
    sqlDadosOPE10: TFloatField;
    sqlDadosEMP10: TFloatField;
    sqlDadosADM10: TFloatField;
    sqlDadosOUT10: TFloatField;
    sqlDadosLUC10: TFloatField;
    sqlDadosOPE11: TFloatField;
    sqlDadosEMP11: TFloatField;
    sqlDadosADM11: TFloatField;
    sqlDadosOUT11: TFloatField;
    sqlDadosLUC11: TFloatField;
    sqlDadosOPE12: TFloatField;
    sqlDadosEMP12: TFloatField;
    sqlDadosADM12: TFloatField;
    sqlDadosOUT12: TFloatField;
    sqlDadosLUC12: TFloatField;
    cdsDadosLANCIT: TIntegerField;
    cdsDadosSAFRA: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosOPE01: TFloatField;
    cdsDadosEMP01: TFloatField;
    cdsDadosADM01: TFloatField;
    cdsDadosOUT01: TFloatField;
    cdsDadosLUC01: TFloatField;
    cdsDadosOPE02: TFloatField;
    cdsDadosEMP02: TFloatField;
    cdsDadosADM02: TFloatField;
    cdsDadosOUT02: TFloatField;
    cdsDadosLUC02: TFloatField;
    cdsDadosOPE03: TFloatField;
    cdsDadosEMP03: TFloatField;
    cdsDadosADM03: TFloatField;
    cdsDadosOUT03: TFloatField;
    cdsDadosLUC03: TFloatField;
    cdsDadosOPE04: TFloatField;
    cdsDadosEMP04: TFloatField;
    cdsDadosADM04: TFloatField;
    cdsDadosOUT04: TFloatField;
    cdsDadosLUC04: TFloatField;
    cdsDadosOPE05: TFloatField;
    cdsDadosEMP05: TFloatField;
    cdsDadosADM05: TFloatField;
    cdsDadosOUT05: TFloatField;
    cdsDadosLUC05: TFloatField;
    cdsDadosOPE06: TFloatField;
    cdsDadosEMP06: TFloatField;
    cdsDadosADM06: TFloatField;
    cdsDadosOUT06: TFloatField;
    cdsDadosLUC06: TFloatField;
    cdsDadosOPE07: TFloatField;
    cdsDadosEMP07: TFloatField;
    cdsDadosADM07: TFloatField;
    cdsDadosOUT07: TFloatField;
    cdsDadosLUC07: TFloatField;
    cdsDadosOPE08: TFloatField;
    cdsDadosEMP08: TFloatField;
    cdsDadosADM08: TFloatField;
    cdsDadosOUT08: TFloatField;
    cdsDadosLUC08: TFloatField;
    cdsDadosOPE09: TFloatField;
    cdsDadosEMP09: TFloatField;
    cdsDadosADM09: TFloatField;
    cdsDadosOUT09: TFloatField;
    cdsDadosLUC09: TFloatField;
    cdsDadosOPE10: TFloatField;
    cdsDadosEMP10: TFloatField;
    cdsDadosADM10: TFloatField;
    cdsDadosOUT10: TFloatField;
    cdsDadosLUC10: TFloatField;
    cdsDadosOPE11: TFloatField;
    cdsDadosEMP11: TFloatField;
    cdsDadosADM11: TFloatField;
    cdsDadosOUT11: TFloatField;
    cdsDadosLUC11: TFloatField;
    cdsDadosOPE12: TFloatField;
    cdsDadosEMP12: TFloatField;
    cdsDadosADM12: TFloatField;
    cdsDadosOUT12: TFloatField;
    cdsDadosLUC12: TFloatField;
    dbgCodigo: TDBGrid;
    Label1: TLabel;
    sbDuplicacao: TSpeedButton;
    rzpDuplicar: TRzPanel;
    lblDuplicar: TLabel;
    spDuplicar_OK: TSpeedButton;
    spDuplicar_NO: TSpeedButton;
    RzPanel7: TRzPanel;
    mesFim: TSpinEdit;
    mesIni: TSpinEdit;
    LimparMs1: TMenuItem;
    N1: TMenuItem;
    dbgCusto: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbEditarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure cdsDadosAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbgCustoKeyPress(Sender: TObject; var Key: Char);
    procedure sbDuplicacaoClick(Sender: TObject);
    procedure spDuplicar_NOClick(Sender: TObject);
    procedure spDuplicar_OKClick(Sender: TObject);
    procedure LimparMs1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure pCadastro;
  public
  end;

var
  FfrmPlanilhaCusto: TFfrmPlanilhaCusto;

implementation

uses Menu, Rotina, Data, Pesq;

{$R *.DFM}

procedure TFfrmPlanilhaCusto.cdsDadosAfterInsert(DataSet: TDataSet);
begin
  cdsDados.Cancel;
end;

procedure TFfrmPlanilhaCusto.sbSalvarClick(Sender: TObject);
begin
  DBGCusto.ReadOnly := True;
  sbEditar.Enabled := True;
  sbSalvar.Enabled := False;
  if cdsDados.State = dsEdit then
    cdsDados.Post;
  cdsDados.ApplyUpdates(0);
end;

procedure TFfrmPlanilhaCusto.spDuplicar_NOClick(Sender: TObject);
begin
  rzpDados.Enabled  := True;
  dbgCodigo.Enabled := True;
  dbgCusto.Enabled  := True;
  rzpDuplicar.Visible := False;
end;

procedure TFfrmPlanilhaCusto.spDuplicar_OKClick(Sender: TObject);
var safra,mesi,mesf: String;
begin
  rzpDados.Enabled  := True;
  dbgCodigo.Enabled := True;
  dbgCusto.Enabled  := True;
  rzpDuplicar.Visible := False;

  if frPerg(PChar('Deseja duplicar ?'+#13+' Mês: '+IntToStr(mesIni.Value)+#13+' para mês: '+IntToStr(mesFim.Value)),'SN') then
  begin
    mesi := frPree(mesIni.Value,2,'0',0);
    mesf := frPree(mesFim.Value,2,'0',0);
    safra := cdsDados.FieldByName('Safra').asString;
    fSql(1,3,['Update CadCusto set ope'+mesf+' = ope'+mesi+
                                ', emp'+mesf+' = emp'+mesi+
                                ', adm'+mesf+' = adm'+mesi+
                                ', out'+mesf+' = out'+mesi+
                                ', luc'+mesf+' = luc'+mesi,
              ' Where safra = '+QuotedStr(safra)],2);
    cdsDados.Close;
    cdsDados.Open;
  end;
end;

procedure TFfrmPlanilhaCusto.dbgCustoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key =#13) then
  begin
    cdsDados.Edit;
    if DBGCusto.SelectedIndex <> 46 then DBGCusto.SelectedIndex := DBGCusto.SelectedIndex + 1
    else DBGCusto.SelectedIndex:=0;
  end;
end;

procedure TFfrmPlanilhaCusto.sbDuplicacaoClick(Sender: TObject);
begin
  rzpDados.Enabled  := False;
  dbgCodigo.Enabled := False;
  dbgCusto.Enabled  := False;
  rzpDuplicar.Visible := True;
  mesIni.SetFocus;
  mesFim.Value := StrToInt(FormatDateTime('mm', Date));
end;

procedure TFfrmPlanilhaCusto.sbEditarClick(Sender: TObject);
begin
  DBGCusto.ReadOnly := False;
  sbEditar.Enabled := False;
  sbSalvar.Enabled := True;
  cdsDados.Edit;
  DBGCusto.SetFocus;
end;

procedure TFfrmPlanilhaCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmPlanilhaCusto);
end;

procedure TFfrmPlanilhaCusto.FormCreate(Sender: TObject);
begin
  cdsDados.Open;
end;

procedure TFfrmPlanilhaCusto.FormShow(Sender: TObject);
begin
  pCadastro;
end;

procedure TFfrmPlanilhaCusto.pCadastro;
var codigo: Integer; codvar,codcat,desvar,descat,safra,descricao: String;
begin
  safra := xAno;
  fSql(1,2,['Select Codigo, Descricao From CadVarie order by codigo'],1);
  while not dm.qrSql2.eof do
  begin
    codvar := frPree(dm.qrSql2.Fields[0].asInteger,2,'0',0);
    desvar := dm.qrSql2.Fields[1].asString;
    fSql(1,1,['Select Codigo, Descricao From CadCateg order by codigo'],1);
    while not dm.qrSql1.eof do
    begin
      codcat := frPree(dm.qrSql1.Fields[0].asInteger,2,'0',0);
      descat := dm.qrSql1.Fields[1].asString;
      codigo := StrToIntDef(codvar + codcat,0);
      descricao := Trim(desvar)+'/'+Trim(descat);
      if not cdsDados.Locate('Codigo', codigo, []) then
      begin
        fSql(1,3,['Insert into CadCusto (Lancit, Safra, Codigo, Descricao)',
                  'Values ('+IntToStr(frGenerator('CADCUSTO','LANCIT',1))+', '+
                           Safra+', '+
                           IntToStr(codigo)+', '+
                           QuotedStr(descricao)+')'],2);
      end;
      dm.qrSql1.Next;
    end;
    dm.qrSql2.Next;
  end;
  cdsDados.Close;
  cdsDados.Open;
end;

procedure TFfrmPlanilhaCusto.Excluir1Click(Sender: TObject);
var mesi,safra:String; mesf:Integer;
begin
  if frPerg('Deseja ZERAR tudo ?','SN') then
  begin
    for mesf := 1 to 12 do
    begin
      mesi := frPree(mesf,2,'0',0);
      safra := cdsDados.FieldByName('Safra').asString;
      fSql(1,3,['Update CadCusto set ope'+mesi+' = NULL'+
                                  ', emp'+mesi+' = NULL'+
                                  ', adm'+mesi+' = NULL'+
                                  ', out'+mesi+' = NULL'+
                                  ', luc'+mesi+' = NULL',
                ' Where safra = '+QuotedStr(safra)],2);
    end;
    cdsDados.Close;
    cdsDados.Open;
  end;
end;

procedure TFfrmPlanilhaCusto.LimparMs1Click(Sender: TObject);
var mesi,safra:String; mesf:Integer;
begin
  mesi := frImpu(0,'Zerar Mês: ',FormatDateTime('mm', Date));
  mesf := StrToIntDef(mesi,0);
  mesi := frPree(mesf,2,'0',0);
  if frPerg(PChar('Deseja limpar mês: '+mesi),'SN') then
  begin
    safra := cdsDados.FieldByName('Safra').asString;
    fSql(1,3,['Update CadCusto set ope'+mesi+' = NULL'+
                                ', emp'+mesi+' = NULL'+
                                ', adm'+mesi+' = NULL'+
                                ', out'+mesi+' = NULL'+
                                ', luc'+mesi+' = NULL',
              ' Where safra = '+QuotedStr(safra)],2);
    cdsDados.Close;
    cdsDados.Open;
  end;
end;

end.


