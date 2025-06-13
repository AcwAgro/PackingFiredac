unit frmControleCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, Grids, DBGrids,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, DBCtrls, Menus, RzTabs,
  RzButton, RzDBNav, Mask, RzPanel, zFrmPesquisa, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmControleCheque = class(TFModelo)
    Panel1: TPanel;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    DBCx1: TComboBox;
    DBCx2: TComboBox;
    DBCx3: TComboBox;
    DBCx4: TComboBox;
    sbBaixar: TSpeedButton;
    sqlDadosLANC: TIntegerField;
    sqlDadosDTEMIS: TSQLTimeStampField;
    sqlDadosCHEQUE: TIntegerField;
    sqlDadosAGENCIA: TStringField;
    sqlDadosBANCO: TStringField;
    sqlDadosCLIENTE: TStringField;
    sqlDadosTERCEIRO: TStringField;
    sqlDadosVALOR: TBCDField;
    sqlDadosDTBOM: TSQLTimeStampField;
    sqlDadosDTDEPO: TSQLTimeStampField;
    sqlDadosOBS: TStringField;
    sqlDadosOUTROS: TStringField;
    sqlDadosBAIXA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDTEMIS: TSQLTimeStampField;
    cdsDadosCHEQUE: TIntegerField;
    cdsDadosAGENCIA: TStringField;
    cdsDadosBANCO: TStringField;
    cdsDadosCLIENTE: TStringField;
    cdsDadosTERCEIRO: TStringField;
    cdsDadosVALOR: TBCDField;
    cdsDadosDTBOM: TSQLTimeStampField;
    cdsDadosDTDEPO: TSQLTimeStampField;
    cdsDadosOBS: TStringField;
    cdsDadosOUTROS: TStringField;
    cdsDadosBAIXA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    Panel3: TPanel;
    gbBanco: TGroupBox;
    DBCx0: TComboBox;
    rgConta: TRadioGroup;
    GroupBox14: TGroupBox;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    dtIni: TDateTimePicker;
    dtFim: TDateTimePicker;
    DBEdit1: TcxDBDateEdit;
    DBEdit2: TcxDBDateEdit;
    DBEdit4: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    qrFiltro: TFDQuery;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1DTEMIS: TcxGridDBColumn;
    dbDadosDBTableView1CHEQUE: TcxGridDBColumn;
    dbDadosDBTableView1AGENCIA: TcxGridDBColumn;
    dbDadosDBTableView1BANCO: TcxGridDBColumn;
    dbDadosDBTableView1CLIENTE: TcxGridDBColumn;
    dbDadosDBTableView1TERCEIRO: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1DTBOM: TcxGridDBColumn;
    dbDadosDBTableView1DTDEPO: TcxGridDBColumn;
    dbDadosDBTableView1BAIXA: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1OUTROS: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbPeriodoClick(Sender: TObject);
    procedure sbIncluirClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure sbBaixarClick(Sender: TObject);
  private
    { Private declarations }
    procedure fFiltro;
  public
    { Public declarations }
  end;

var
  FfrmControleCheque: TFfrmControleCheque;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlCTCheque;

procedure TFfrmControleCheque.FormCreate(Sender: TObject);
begin
  inherited;
  dtIni.Date := Date - 180;
  dtFim.Date := Date + 90;
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(Sender);  
  fFiltro;
end;

procedure TFfrmControleCheque.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    DBCx1.Text := cdsDadosAgencia.Text;
    DBCx2.Text := cdsDadosBanco.Text;
    DBCx3.Text := cdsDadosCliente.Text;
    DBCx4.Text := cdsDadosTerceiro.Text;
  end;
end;

procedure TFfrmControleCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmControleCheque);
end;

procedure TFfrmControleCheque.fFiltro;
var vff:Integer; vfil:String; vdbcx:TComboBox;
begin
  with qrFiltro do
  begin
    DBCx0.Items.Clear;
    vdbcx:=DBCx1;
    for vff:=1 to 4 do
    begin
      Close; Sql.Clear;
      Case vff of
         1: begin vfil:='AGENCIA';  vdbcx:=DBCx1; end;
         2: begin vfil:='BANCO';    vdbcx:=DBCx2; end;
         3: begin vfil:='CLIENTE';  vdbcx:=DBCx3; end;
         4: begin vfil:='TERCEIRO'; vdbcx:=DBCx4; end;
      end;
      Sql.Add('Select '+vfil+', Count('+vfil+') From FICheque Group by '+vfil);
      Prepare;
      Open;
      vdbcx.ItemHeight:=RecordCount;
      vdbcx.Items.Clear; vdbcx.Text:='';
      if vff = 2 then  DBCx0.ItemHeight := RecordCount;
      while not Eof do
      begin
        vdbcx.Items.Add(Fields[0].Text);
        if vff = 2 then  DBCx0.Items.Add(Fields[0].Text);
        Next;
      end;
    end;
  end;
end;

procedure TFfrmControleCheque.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit1.SetFocus;
end;

procedure TFfrmControleCheque.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  try
    if cdsDados.IndexName <> '' then
    begin
      cdsDados.IndexName := '';
      cdsDados.DeleteIndex('iIndice');
    end;
  except
  end;

  sqlDados.SQL.Clear;
  sqlDados.Sql.Add('SELECT * FROM FICHEQUE');
  sqlDados.Sql.Add(' WHERE BANCO = '+QuotedStr(dbcx0.Text));
  sqlDados.Sql.Add('   AND DTEMIS BETWEEN '+frInvD(dtIni.Date)+ ' and '+frInvD(dtFim.Date));
  if rgConta.ItemIndex = 0 then sqlDados.Sql.Add('   AND BAIXA <> '+ QuotedStr('S'))
  else sqlDados.Sql.Add('   AND BAIXA = '+ QuotedStr('S'));
  sqlDados.Sql.Add(' ORDER BY DTEMIS');
  cdsDados.Open;
end;

procedure TFfrmControleCheque.sbBaixarClick(Sender: TObject);
begin
  inherited;
  if not frPerg('Deseja baixar o lançamento') then exit;
  if not frPerg('Tem certeza?') then exit;
  cdsDados.Edit;
  cdsDadosBaixa.AsString  := 'S';
  cdsDados.Post;
  cdsDados.ApplyUpdates(0);
end;

procedure TFfrmControleCheque.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosDTEmis.AsDateTime) then
    exit;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('FICHEQUE','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_FICHEQUE_ID');
           cdsDadosDTEMIS.AsDateTime := date;
           cdsDadosBaixa.AsString  := 'N';
           dbEdit1.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit1.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosAgencia.Text  := DBCx1.Text;
            cdsDadosBanco.Text    := DBCx2.Text;
            cdsDadosCliente.Text  := DBCx3.Text;
            cdsDadosTerceiro.Text := DBCx4.Text;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            fFiltro;
          except
            on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           try
             cdsDados.Cancel;
           except
           end;
           pLiberar('Geral');
         end;
     91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;


procedure TFfrmControleCheque.sbImprimirClick(Sender: TObject);
var vval: Double;
begin
  inherited;
  if qrCTCheque<>Nil then qrCTCheque.Destroy; Application.CreateForm(TqrCTCheque, qrCTCheque);
  with qrCTCheque do begin
    if rgConta.ItemIndex = 0 then qrlabel16.Caption:='Relação de Cheque em aberto'
    else qrlabel16.Caption:='Relação de Cheque baixado';
    QRLabel3.Caption:='';
    qrConta.Close;
    qrConta.Sql.Clear;
    qrConta.Sql.Add('SELECT * FROM FICHEQUE');
    qrConta.Sql.Add(' WHERE BANCO = '+QuotedStr(dbcx0.Text));
    qrConta.Sql.Add('   AND DTEMIS BETWEEN '+frInvD(dtIni.Date)+ ' and '+frInvD(dtFim.Date));
    if rgConta.ItemIndex = 0 then qrConta.Sql.Add('   AND BAIXA = '+ QuotedStr('N'))
    else qrConta.Sql.Add('   AND BAIXA = '+ QuotedStr('S'));
    qrConta.Sql.Add(' ORDER BY DTEMIS');
    qrConta.Open;
    vval := 0;
    while not qrConta.eof do
    begin
      vval := vval + qrConta.FieldByName('Valor').asFloat;
      qrConta.Next;
    end;
    qrConta.First;
    qrLabel6.Caption:=FormatFloat('#,0.00', vval);
    PrinterSettings.PrinterIndex := fImpr('Imp1');
    Preview;
  end;
end;

end.
