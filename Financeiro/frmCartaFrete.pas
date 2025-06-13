unit frmCartaFrete;

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
  TFfrmCartaFrete = class(TFModelo)
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
    cdsDadosCidadeUF: TStringField;
    frmPesquisaMot: TfrmPesquisa;
    frmPesquisaCli: TfrmPesquisa;
    rzpnlBaixar: TRzPanel;
    sbBaixarok: TSpeedButton;
    sbBaixarSair: TSpeedButton;
    RzPanel4: TRzPanel;
    GroupBox10: TGroupBox;
    dtpDataBaixar: TDateTimePicker;
    sbBaixar: TSpeedButton;
    cdsDadosTIPODES: TStringField;
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
    dbDadosDBTableView1TIPODES: TcxGridDBColumn;
    dbDadosDBTableView1PAGO: TcxGridDBColumn;
    dbDadosDBTableView1DTPAGO: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1vlrExtenso: TcxGridDBColumn;
    dbDadosDBTableView1CidadeUF: TcxGridDBColumn;
    DBEdit16: TcxDBDateEdit;
    DBEdit5: TcxDBDateEdit;
    sqlDadosLANCINT: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosLANCINT: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure sbBaixarClick(Sender: TObject);
    procedure sbBaixarSairClick(Sender: TObject);
    procedure sbBaixarokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCartaFrete: TFfrmCartaFrete;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCartaFrete.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCli.pInicia('ttCliente', FfrmCartaFrete,7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista', FfrmCartaFrete,7,147,GroupBox1,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmCartaFrete.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCartaFrete.GroupBox1Exit(Sender: TObject);
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

procedure TFfrmCartaFrete.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaCli.dbgLista.Visible then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosProdCod.AsInteger  := frmPesquisaCli.vpCodPrincipal;
    if cdsDadosLocalidade.asString = '' then
      cdsDadosLocalidade.asString := fBus(1,['select CidadeDes from empresa where codigo = 0'+IntToStr(xEmp)],1)
                                   + '/'+ fBus(1,['select Estado from empresa where codigo = 0'+IntToStr(xEmp)],1)
                                   + ' - '+
                                   + fBus(1,['select CidadeDes from cadClien where codigo = 0'+cdsDadosProdCod.asString],1)
                                   + '/'+ fBus(1,['select Estado from cadClien where codigo = 0'+cdsDadosProdCod.asString],1);
  end;
end;

procedure TFfrmCartaFrete.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaCli.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosCodigo.AsString);
  end;
end;

procedure TFfrmCartaFrete.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit16.SetFocus;
end;

procedure TFfrmCartaFrete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCartaFrete);
end;

procedure TFfrmCartaFrete.sbBaixarClick(Sender: TObject);
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

procedure TFfrmCartaFrete.sbBaixarokClick(Sender: TObject);
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

procedure TFfrmCartaFrete.sbBaixarSairClick(Sender: TObject);
begin
  inherited;

  rzpnlBaixar.Visible := False;

end;

procedure TFfrmCartaFrete.sbIncluirClick(Sender: TObject);
begin

  if TComponent(Sender).Tag = 13 then
  begin
    if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
      exit;
  end;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  if TComponent(Sender).Tag = 18 then
  begin
    cdsDados.Edit;
    cdsDadosvlrExtenso.AsString := frPree('('+frExte(cdsDadosValor.asFloat)+')',200,'x. ',1);
    cdsDadosCidadeUF.asString := fBus(1,['select CidadeDes from cadClien where codigo = 0'+cdsDadosProdCod.asString],1)
                          + '/'+ fBus(1,['select Estado from cadClien where codigo = 0'+cdsDadosProdCod.asString],1);
    if (cdsDadosTIPO.AsString = 'E') then
      cdsDadosTIPODES.AsString := 'Receber'
    else
      cdsDadosTIPODES.AsString := 'Pagar';
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaCli.pLimpaCampo;
           frmPesquisaMot.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('CXFRETE','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CXFRETE_ID');
//           cdsDadosRecibo.AsInteger := frGenerator('GERAL','CARTAFRETE',0)+1;
           cdsDadosData.asDateTime := date;
           cdsDadosSafra.AsString := FormatDateTime('yyyy', date);
           cdsDadosTipo.AsString := 'R';
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
              cdsDadosRecibo.AsInteger := frGenerator('GERAL','CARTAFRE',1);
            cdsDadosProdCod.AsInteger  := frmPesquisaCli.vpCodPrincipal;
            cdsDadosProdDes.AsString   := frmPesquisaCli.vpDescricao;
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
     16:begin
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

procedure TFfrmCartaFrete.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from cxfrete '+
                   ' where Tipo in ('+QuotedStr('R')+','+QuotedStr('P')+') '+
                   '   and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

end.

