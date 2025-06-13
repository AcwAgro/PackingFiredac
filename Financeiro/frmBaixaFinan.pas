unit frmBaixaFinan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, Grids, DBGrids,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, DBCtrls, Menus, RzTabs,
  RzButton, RzDBNav, Mask, RzPanel, zFrmPesquisa;

type
  TFBaixaFinanceiro = class(TFModelo)
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TDateTimeField;
    cdsDadosCHEQUE: TIntegerField;
    cdsDadosBANCOCOD: TIntegerField;
    cdsDadosTIPO: TStringField;
    cdsDadosFAVORECIDO: TStringField;
    cdsDadosVALOR: TFloatField;
    cdsDadosRECIBO: TIntegerField;
    cdsDadosFORMA: TStringField;
    cdsDadosVENCTO: TDateTimeField;
    cdsDadosDTPAGO: TDateTimeField;
    cdsDadosBAIXA: TStringField;
    cdsDadosPROVE: TStringField;
    cdsDadosVALORREAL: TFloatField;
    cdsDadosIMPRES: TStringField;
    cdsDadosLANCEST: TIntegerField;
    cdsDadosTRECIBO: TStringField;
    cdsDadosTVALE: TStringField;
    cdsDadosFAVORCOD: TIntegerField;
    cdsDadosAREADES: TStringField;
    cdsDadosAREALANC: TIntegerField;
    cdsDadosAREA: TStringField;
    cdsDadosZEMPRECOD: TIntegerField;
    cdsDadosZACESSOCOD: TIntegerField;
    cdsDadosZDATAULT: TDateTimeField;
    cdsDadosZEXCLUIDO: TStringField;
    sqlBanco: TQuery;
    sqlBancoDESCRICAO: TStringField;
    sqlBancoCODIGO: TIntegerField;
    dsBanco: TDataSource;
    GroupBox1: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit19: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit21: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit24: TDBEdit;
    DBComboBox1: TDBComboBox;
    GroupBox7: TGroupBox;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit28: TDBEdit;
    GroupBox11: TGroupBox;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit29: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit33: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit35: TDBEdit;
    cdsDadosvTipoDes: TStringField;
    cdsDadosvFormaDes: TStringField;
    cdsDadosvBancoDes: TStringField;
    GroupBox14: TGroupBox;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    dtIni: TDateTimePicker;
    dtFim: TDateTimePicker;
    gbBanco: TGroupBox;
    DBLCB1: TDBLookupComboBox;
    rgConta: TRadioGroup;
    tab_Baixa: TRzTabSheet;
    tab_alterar: TRzTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbPeriodoClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure rbOpcaoClick(Sender: TObject);
    procedure DBLCB1CloseUp(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure sbIncluirClick(Sender: TObject);
    procedure dtFinalExit(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
  private
    { Private declarations }
    vBancoCod, vdtAntIni, vdtAntFim: String;
  public
    { Public declarations }
  end;

var
  FBaixaFinanceiro: TFBaixaFinanceiro;

implementation

{$R *.dfm}
uses zData, zRotina, zMenu, zPesquisa, zModeloRel;

procedure TFBaixaFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  dtIni.Date := Date - 120;
  dtFim.Date   := Date + 120;
  vdtAntIni := '';
  vdtAntFim := '';
  sqlBanco.Close;
  sqlBanco.Open;
  vBancoCod := sqlBancoCodigo.AsString;
  DBLCB1.KeyValue := sqlBancoDescricao.AsString;
  sbPeriodo.onClick(sbPeriodo);
end;

procedure TFBaixaFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FBaixaFinanceiro);
end;

procedure TFBaixaFinanceiro.DBLCB1CloseUp(Sender: TObject);
begin
  inherited;
  vBancoCod := sqlBancoCodigo.AsString;
  sbPeriodo.onClick(sbPeriodo);
end;

procedure TFBaixaFinanceiro.dtFinalExit(Sender: TObject);
begin
  inherited;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFBaixaFinanceiro.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  vdtAntIni := DateToStr(dtIni.Date);
  vdtAntFim := DateToStr(dtFim.Date);
  cdsDados.Filtered := False;
  cdsDados.Close;
  (dsDados.DataSet As TClientDataSet).IndexName := '';
  sqlDados.Close;
  sqlDados.ParamByName('pInicial').AsString := DateToStr(dtIni.Date);
  sqlDados.ParamByName('pFinal').AsString   := DateToStr(dtFim.Date);
  cdsDados.Open;
  cdsDados.Filtered := True;
  cdsDados.Filter := 'BancoCod = ' + vBancoCod;
  if rgConta.ItemIndex = 0 then
  begin
    cdsDados.Filter := cdsDados.Filter + ' and Baixa = ' + QuotedStr('N');
    sbEditar.Caption := '(F2) Baixar';
  end
  else begin
    cdsDados.Filter := cdsDados.Filter + ' and Baixa = ' + QuotedStr('S');
    sbEditar.Caption := '(F2) Estornar';
  end;
  pOrdemDecrescente;
end;

procedure TFBaixaFinanceiro.sbProximoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Next;
end;

procedure TFBaixaFinanceiro.rbOpcaoClick(Sender: TObject);
begin
  inherited;
  sbPeriodo.onClick(sbPeriodo);
end;

procedure TFBaixaFinanceiro.sbAnteriorClick(Sender: TObject);
begin
  cdsDados.Prior;
end;

procedure TFBaixaFinanceiro.sbEditarClick(Sender: TObject);
var vbaixa:String;
begin
  if sbEditar.Caption = '(F2) Baixar' then
  begin
    vbaixa := frPerg(2,'Deseja baixar nessa data?',DateToStr(Date),'!99/99/9999;1; ');
    if vbaixa <> '0' then
    begin
      if frPerg(1,'Tem certeza?','','') = 'T' then
      begin
        cdsDados.Edit;
        cdsDadosDTPago.Value := StrToDate(vBaixa);
        cdsDadosBaixa.asString := 'S';
        cdsDados.Post;
        cdsDados.ApplyUpdates(0);
        cdsDados.Refresh;
      end;
    end;
  end
  else begin
    if frPerg(1,'Deseja estornar baixa?','','') = 'T' then
    begin
      if frPerg(1,'Tem certeza?','','') = 'T' then
      begin
        cdsDados.Edit;
        cdsDadosDTPago.AsString := '';
        cdsDadosBaixa.asString := 'N';
        cdsDados.Post;
        cdsDados.ApplyUpdates(0);
        cdsDados.Refresh;
      end;
    end;
  end;
end;


procedure TFBaixaFinanceiro.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
//Forma
  if cdsDadosForma.AsString = 'E' then cdsDadosvFormaDes.AsString := 'Entrada'
  else cdsDadosvFormaDes.AsString := 'Saída';
//Tipo
  if cdsDadosTipo.asString = '2' then cdsDadosvTipoDes.asString := '2 - Pagamento Fornecedor'
  else if cdsDadosTipo.asString = '3' then cdsDadosvTipoDes.asString := '3 - Pagto. Func.Mensalista'
  else if cdsDadosTipo.asString = '4' then cdsDadosvTipoDes.asString := '4 - Pagto. Func. Diárista'
  else cdsDadosvTipoDes.asString := '1 - Recebimento Cliente';
//Banco
  if sqlBanco.Locate('Codigo',cdsDadosBancoCod.asInteger,[]) then
    cdsDadosvBancoDes.asString := Trim(sqlBancoDESCRICAO.asString);
end;

procedure TFBaixaFinanceiro.sbIncluirClick(Sender: TObject);
begin
  if TComponent(Sender).Tag = 12 then
    sbEditar.OnClick(sbEditar)
  else
    p_Pesquisa(True);
end;


procedure TFBaixaFinanceiro.sbImprimirClick(Sender: TObject);
var xvii: Integer;
begin
  inherited;
  if not cdsDados.IsEmpty then
  begin
    xRelTela := UpperCase(Name);
    Application.CreateForm(TFModeloRel, FModeloRel);
    if TComponent(Sender).Tag = 18 then
    begin
      if dbDados.SelectedRows.Count > 0 then
      begin
        xvfilt := '';
        with dbDados.DataSource.DataSet do
        begin
          for xvii := 0 to dbDados.SelectedRows.Count-1 do
          begin
            GotoBookmark(pointer(dbDados.SelectedRows.Items[xvii]));
            xvfilt := xvfilt + FieldByName('Lanc').asString + ', ';
          end;
        end;
        xvfilt := Trim(xvfilt);
        xvfilt := Copy(xvfilt,1,Length(xvfilt)-1);
        cdsDados.Filter := 'Lanc in (' + xvfilt + ')';
        cdsDados.Filtered := True;
      end;
    end;
    FModeloRel.dsRelat.DataSet := FBaixaFinanceiro.cdsDados;
    FModeloRel.ShowModal;
    cdsDados.Filtered := False;
  end;
end;

end.
