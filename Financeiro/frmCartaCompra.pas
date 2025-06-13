unit frmCartaCompra;

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
  TFfrmCartaCompra = class(TFModelo)
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox9: TGroupBox;
    DBEdit46: TDBEdit;
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
    DBRadioGroup2: TDBRadioGroup;
    GroupBox6: TGroupBox;
    cdsDadosvlrExtenso: TStringField;
    frmPesquisa: TfrmPesquisa;
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
    sqlDadosLANCINT: TIntegerField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosLANCINT: TIntegerField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosREGLOG: TStringField;
    cdsDadosREGLOG: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCartaCompra: TFfrmCartaCompra;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCartaCompra.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisa.pInicia('ttProdutor', TForm(Sender),7,147,GroupBox4,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmCartaCompra.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCartaCompra.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisa.pRetornaDados(cdsDadosProdCod.AsString);
end;

procedure TFfrmCartaCompra.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDadosvlrExtenso.AsString := frPree('('+frExte(cdsDadosValor.asFloat)+')',200,'x. ',1);
end;

procedure TFfrmCartaCompra.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit16.SetFocus;
end;

procedure TFfrmCartaCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCartaCompra);
end;

procedure TFfrmCartaCompra.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisa.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('CXFRETE','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CXFRETE_ID');
//           cdsDadosRecibo.AsInteger := frGenerator('GERAL','CARTACOMPRA',0)+1;
           cdsDadosData.asDateTime := date;
           cdsDadosSafra.AsString := FormatDateTime('yyyy', date);
           cdsDadosTipo.AsString := 'C';
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
              cdsDadosRecibo.AsInteger := frGenerator('GERAL','CARTACOM',1);
            cdsDadosProdCod.AsInteger  := frmPesquisa.vpCodPrincipal;
            cdsDadosProdDes.AsString   := frmPesquisa.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            cdsDados.Refresh;
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

procedure TFfrmCartaCompra.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from cxfrete '+
                   ' where Tipo in ('+QuotedStr('C')+','+QuotedStr('V')+') '+
                   '   and '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

end.

