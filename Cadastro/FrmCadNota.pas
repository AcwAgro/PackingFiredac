unit FrmCadNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  Vcl.Menus, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxCurrencyEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadNota = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbgNormal: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosTIPO: TStringField;
    sqlDadosNATURDEN: TBCDField;
    sqlDadosNATURFOR: TBCDField;
    sqlDadosICMSTIPO: TStringField;
    sqlDadosICMSDEN: TBCDField;
    sqlDadosICMSFOR: TBCDField;
    sqlDadosESTOQUE: TStringField;
    sqlDadosFINANCEIRO: TStringField;
    sqlDadosFUNRURAL: TStringField;
    sqlDadosFUNVALOR: TBCDField;
    sqlDadosITEM: TStringField;
    sqlDadosRAZAO: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosTIPO: TStringField;
    cdsDadosNATURDEN: TBCDField;
    cdsDadosNATURFOR: TBCDField;
    cdsDadosICMSTIPO: TStringField;
    cdsDadosICMSDEN: TBCDField;
    cdsDadosICMSFOR: TBCDField;
    cdsDadosESTOQUE: TStringField;
    cdsDadosFINANCEIRO: TStringField;
    cdsDadosFUNRURAL: TStringField;
    cdsDadosFUNVALOR: TBCDField;
    cdsDadosITEM: TStringField;
    cdsDadosRAZAO: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    GroupBox7: TGroupBox;
    DBEdit7: TDBEdit;
    sqlDadosALIQIPI: TBCDField;
    sqlDadosALIQFUN: TBCDField;
    GroupBox8: TGroupBox;
    DBEdit8: TDBEdit;
    cdsDadosALIQIPI: TBCDField;
    cdsDadosALIQFUN: TBCDField;
    GroupBox9: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit10: TDBEdit;
    sqlDadosSERIE: TStringField;
    sqlDadosMODELO: TStringField;
    cdsDadosSERIE: TStringField;
    cdsDadosMODELO: TStringField;
    dbgrImporta: TDBRadioGroup;
    sqlDadosIMPORTACAO: TStringField;
    cdsDadosIMPORTACAO: TStringField;
    gbCSOSN: TGroupBox;
    btCSOSN: TButton;
    sqlDadosICMS_ORI: TStringField;
    sqlDadosICMS_SIT: TStringField;
    cdsDadosICMS_ORI: TStringField;
    cdsDadosICMS_SIT: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    sqlDadosFINNFE: TStringField;
    cdsDadosFINNFE: TStringField;
    GroupBox11: TGroupBox;
    DBEdit11: TDBEdit;
    sqlDadosCFOPDESC: TStringField;
    cdsDadosCFOPDESC: TStringField;
    DBRadioGroup9: TDBRadioGroup;
    sqlDadosREL_VENDA: TStringField;
    cdsDadosREL_VENDA: TStringField;
    DBRadioGroup10: TDBRadioGroup;
    sqlDadosCOMISSAO: TStringField;
    cdsDadosCOMISSAO: TStringField;
    GroupBox12: TGroupBox;
    DBEdit12: TDBEdit;
    gbIEP: TGroupBox;
    DBEdit13: TDBEdit;
    sqlDadosDADOSADIC: TStringField;
    sqlDadosIEPRODUTOR: TStringField;
    cdsDadosDADOSADIC: TStringField;
    cdsDadosIEPRODUTOR: TStringField;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    sqlDadosFGIMPOSTO: TStringField;
    sqlDadosFGTRANS: TStringField;
    sqlDadosFGTRANSPL: TStringField;
    cdsDadosFGIMPOSTO: TStringField;
    cdsDadosFGTRANS: TStringField;
    cdsDadosFGTRANSPL: TStringField;
    DBRadioGroup14: TDBRadioGroup;
    sqlDadosFGREFER: TStringField;
    cdsDadosFGREFER: TStringField;
    GroupBox13: TGroupBox;
    DBEdit14: TDBEdit;
    sqlDadosICMS_CREDPER: TBCDField;
    cdsDadosICMS_CREDPER: TBCDField;
    DBRadioGroup15: TDBRadioGroup;
    sqlDadosFGFISCO: TStringField;
    cdsDadosFGFISCO: TStringField;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    sqlDadosGERAROMENT: TStringField;
    cdsDadosGERAROMENT: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREG_ID: TIntegerField;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1TIPO: TcxGridDBColumn;
    dbDadosDBTableView1NATURDEN: TcxGridDBColumn;
    dbDadosDBTableView1NATURFOR: TcxGridDBColumn;
    dbDadosDBTableView1ICMSTIPO: TcxGridDBColumn;
    dbDadosDBTableView1ICMSDEN: TcxGridDBColumn;
    dbDadosDBTableView1ICMSFOR: TcxGridDBColumn;
    dbDadosDBTableView1ESTOQUE: TcxGridDBColumn;
    dbDadosDBTableView1FINANCEIRO: TcxGridDBColumn;
    dbDadosDBTableView1FUNRURAL: TcxGridDBColumn;
    dbDadosDBTableView1FUNVALOR: TcxGridDBColumn;
    dbDadosDBTableView1ITEM: TcxGridDBColumn;
    dbDadosDBTableView1RAZAO: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1ALIQIPI: TcxGridDBColumn;
    dbDadosDBTableView1ALIQFUN: TcxGridDBColumn;
    dbDadosDBTableView1SERIE: TcxGridDBColumn;
    dbDadosDBTableView1MODELO: TcxGridDBColumn;
    dbDadosDBTableView1IMPORTACAO: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_ORI: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_SIT: TcxGridDBColumn;
    dbDadosDBTableView1FINNFE: TcxGridDBColumn;
    dbDadosDBTableView1CFOPDESC: TcxGridDBColumn;
    dbDadosDBTableView1REL_VENDA: TcxGridDBColumn;
    dbDadosDBTableView1COMISSAO: TcxGridDBColumn;
    dbDadosDBTableView1DADOSADIC: TcxGridDBColumn;
    dbDadosDBTableView1IEPRODUTOR: TcxGridDBColumn;
    dbDadosDBTableView1FGIMPOSTO: TcxGridDBColumn;
    dbDadosDBTableView1FGTRANS: TcxGridDBColumn;
    dbDadosDBTableView1FGTRANSPL: TcxGridDBColumn;
    dbDadosDBTableView1FGREFER: TcxGridDBColumn;
    dbDadosDBTableView1ICMS_CREDPER: TcxGridDBColumn;
    dbDadosDBTableView1FGFISCO: TcxGridDBColumn;
    dbDadosDBTableView1ATIVO: TcxGridDBColumn;
    dbDadosDBTableView1GERAROMENT: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    cdsDadosREGLOG: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCSOSNClick(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadNota: TFfrmCadNota;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadNota.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadNota.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadNota.pcItemChange(Sender: TObject);
begin
  inherited;
  dbgNormal.Visible := dm.TEmpresa.FieldByName('simples').AsString <> 'S';
  gbCSOSN.Visible   := dm.TEmpresa.FieldByName('simples').AsString = 'S';
  gbCSOSN.Left := dbgNormal.Left;
  gbIEP.Visible := (StrToIntDef(cdsDadosSerie.asString,0) >= 920);
end;

procedure TFfrmCadNota.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadnota where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadnota where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadNota.btCSOSNClick(Sender: TObject);
begin
  inherited;
  FPQCSOSN;
end;

procedure TFfrmCadNota.DBEdit9Exit(Sender: TObject);
begin
  inherited;

  gbIEP.Visible := (StrToIntDef(cdsDadosSerie.asString,0) >= 920);

end;

procedure TFfrmCadNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadNota);
end;

procedure TFfrmCadNota.sbIncluirClick(Sender: TObject);
begin
  if TComponent(Sender).Tag = 14 then
  begin
    if cdsDadosCodigo.asInteger < 1 then
    begin
      frPerg('Não pode excluir Nota Cancelada!', 'OK');
      exit;
    end;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger     := frGenerator('CADNOTA','CODIGO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADNOTA_ID');
          cdsDadosTipo.AsString        := 'S';
          cdsDadosIcmsTipo.AsString    := 'Isento';
          cdsDadosItem.AsString        := 'P';
          cdsDadosRazao.AsString       := 'C';
          cdsDadosEstoque.AsString     := 'N';
          cdsDadosFinanceiro.AsString  := 'N';
          cdsDadosImportacao.AsString  := 'N';
          cdsDadosICMS_ORI.AsString    := '0';
          cdsDadosICMS_SIT.AsString    := '900';
          cdsDadosFinnfe.AsString      := 'S';
          cdsDadosRel_Venda.AsString   := 'N';
          cdsDadosComissao.AsString    := 'N';
          cdsDadosFGImposto.AsString   := 'N';
          cdsDadosFGTrans.AsString     := 'N';
          cdsDadosFGTranspl.AsString   := 'N';
          cdsDadosFGREFER.AsString     := 'N';
          cdsDadosATIVO.AsString       := 'S';
          cdsDadosGERAROMENT.AsString  := 'N';
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosCodigo.AsInteger := frGenerator('CADNOTA','CODIGO',1);

            //financeiro = 'N' -> comissão = 'N'
            if (cdsDadosFinanceiro.AsString = 'N') then
              cdsDadosComissao.AsString := 'N';

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
  end;
  vTag := TComponent(Sender).Tag;
end;

end.
