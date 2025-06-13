unit frmControleFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmControleFrete = class(TFModelo)
    DBRadioGroup1: TDBRadioGroup;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox9: TGroupBox;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosPLACA: TStringField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosLOCALIDADE: TStringField;
    sqlDadosVALOR: TBCDField;
    sqlDadosHISTORICO: TStringField;
    sqlDadosTIPO: TStringField;
    sqlDadosPAGO: TStringField;
    sqlDadosDTPAGO: TSQLTimeStampField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    sqlDadosRECIBO: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosPLACA: TStringField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosLOCALIDADE: TStringField;
    cdsDadosVALOR: TBCDField;
    cdsDadosHISTORICO: TStringField;
    cdsDadosTIPO: TStringField;
    cdsDadosPAGO: TStringField;
    cdsDadosDTPAGO: TSQLTimeStampField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    cdsDadosRECIBO: TIntegerField;
    GroupBox7: TGroupBox;
    DBEdit1: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox6: TGroupBox;
    cdsDadosvlrExtenso: TStringField;
    GroupBox8: TGroupBox;
    DBEdit2: TDBEdit;
    frmPesquisaMot: TfrmPesquisa;
    frmPesquisaPro: TfrmPesquisa;
    sbBaixar: TSpeedButton;
    rzpnlBaixar: TRzPanel;
    sbBaixarok: TSpeedButton;
    sbBaixarSair: TSpeedButton;
    RzPanel4: TRzPanel;
    GroupBox10: TGroupBox;
    dtpDataBaixar: TDateTimePicker;
    dbDadosDBTableView1RECIBO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1PLACA: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1LOCALIDADE: TcxGridDBColumn;
    dbDadosDBTableView1HISTORICO: TcxGridDBColumn;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1TIPO: TcxGridDBColumn;
    dbDadosDBTableView1PAGO: TcxGridDBColumn;
    dbDadosDBTableView1DTPAGO: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1vlrExtenso: TcxGridDBColumn;
    DBEdit16: TcxDBDateEdit;
    DBEdit5: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure sbBaixarSairClick(Sender: TObject);
    procedure sbBaixarokClick(Sender: TObject);
    procedure sbBaixarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmControleFrete: TFfrmControleFrete;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmControleFrete.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaPro.pInicia('ttProdutor', FfrmControleFrete,7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista', FfrmControleFrete,7,147,GroupBox1,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmControleFrete.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmControleFrete.GroupBox1Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaMot.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosCodigo.AsInteger  := frmPesquisaMot.vpCodPrincipal;
    if cdsDadosPlaca.asString = '' then
      cdsDadosPlaca.asString := fBus(1,['select TRPlaca from cadtrans where codigo = 0'+cdsDadosCodigo.asString],1);
  end;
end;

procedure TFfrmControleFrete.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaPro.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
    if cdsDadosLocalidade.asString = '' then
      cdsDadosLocalidade.asString := fBus(1,['select Endereco from cadforne where codigo = 0'+cdsDadosProdCod.asString],1);
  end;
end;

procedure TFfrmControleFrete.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosCodigo.AsString);
  end;
end;

procedure TFfrmControleFrete.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit16.SetFocus;
end;

procedure TFfrmControleFrete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmControleFrete);
end;

procedure TFfrmControleFrete.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;
  if TComponent(Sender).Tag = 18 then
  begin
    cdsDados.Edit;
    cdsDadosvlrExtenso.AsString := frPree('('+frExte(cdsDadosValor.asFloat)+')',200,'x. ',1);
  end;


  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaPro.pLimpaCampo;
           frmPesquisaMot.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('CXFRETE','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CXFRETE_ID');
//           cdsDadosRecibo.AsInteger := frGenerator('GERAL','FRETERECIBO',0)+1;

           cdsDadosData.asDateTime := date;
           cdsDadosSafra.AsString := FormatDateTime('yyyy', date);
           cdsDadosTipo.AsString := 'S';
           cdsDadosPago.AsString := 'N';
           dbEdit16.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit16.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            if cdsDadosRecibo.AsInteger = 0 then
              cdsDadosRecibo.AsInteger := frGenerator('GERAL','FRETEREC',1);
            cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
            cdsDadosProdDes.AsString   := frmPesquisaPro.vpDescricao;
            cdsDadosCodigo.AsInteger   := frmPesquisaMot.vpCodPrincipal;
            cdsDadosDescricao.AsString := frmPesquisaMot.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
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

procedure TFfrmControleFrete.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from cxfrete '+
                   ' where Tipo in ('+QuotedStr('E')+','+QuotedStr('S')+') '+
                   '   and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmControleFrete.sbBaixarClick(Sender: TObject);
begin
  inherited;
  if cdsDados.IsEmpty then exit;

  pcItem.ActivePageIndex := 1;
  if cdsDadosPago.asString = 'S' then
    ShowMessage('Lançamento já baixado')
  else begin
    rzpnlBaixar.Visible := True;
    dtpDataBaixar.Date := Date;
    dtpDataBaixar.SetFocus;
  end;

end;

procedure TFfrmControleFrete.sbBaixarokClick(Sender: TObject);
begin
  inherited;

  rzpnlBaixar.Visible := False;

  if rzpDados.Visible then
    sbIncluir.OnClick(sbSalvar);

  cdsDados.Edit;
  cdsDadosPago.asString := 'S';
  cdsDadosDTPago.AsDateTime := dtpDataBaixar.Date;
  cdsDados.Post;
  cdsDados.ApplyUpdates(0);
  pcItem.ActivePageIndex := 0;

end;

procedure TFfrmControleFrete.sbBaixarSairClick(Sender: TObject);
begin
  inherited;

  rzpnlBaixar.Visible := False;

end;

end.

