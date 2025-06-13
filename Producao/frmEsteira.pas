unit frmEsteira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmEsteira = class(TFModelo)
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVQTDE: TBCDField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosVQTDE: TBCDField;
    lbTables: TListBox;
    cdsTabela: TClientDataSet;
    cdsTabelaRegistro: TIntegerField;
    cdsTabelaVariedade: TStringField;
    dsTabela: TDataSource;
    cdsTabelatabela: TStringField;
    cdsTabelaLote: TIntegerField;
    cdsTabelaData: TDateField;
    cdsTabelaProdDes: TStringField;
    Panel1: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    dbTabela: TDBGrid;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    dspRomanMer: TDataSetProvider;
    cdsRomanMer: TClientDataSet;
    cdsRomanMerLANCIT: TIntegerField;
    cdsRomanMerLANC: TIntegerField;
    cdsRomanMerPRODCOD: TIntegerField;
    cdsRomanMerPRODDES: TStringField;
    cdsRomanMerUNIDADE: TStringField;
    cdsRomanMerQTDE: TBCDField;
    cdsRomanMerCODIAUX: TIntegerField;
    cdsRomanMerCALIBRE: TIntegerField;
    cdsRomanMerPESOLIQ: TBCDField;
    cdsRomanMerPESOREAL: TBCDField;
    cdsRomanMerSAFRA: TStringField;
    dsRomanMer: TDataSource;
    dsRomanPro: TDataSource;
    cdsRomanPro: TClientDataSet;
    dspRomanPro: TDataSetProvider;
    sqlRomanPro: TFDQuery;
    sqlRomanMer: TFDQuery;
    sqlRomanProLOTE: TIntegerField;
    sqlRomanProDATA: TSQLTimeStampField;
    sqlRomanProQTDEBIN: TBCDField;
    sqlRomanProPRODCOD: TIntegerField;
    sqlRomanProPRODDES: TStringField;
    sqlRomanMerLANCIT: TIntegerField;
    sqlRomanMerLANC: TIntegerField;
    sqlRomanMerPRODCOD: TIntegerField;
    sqlRomanMerPRODDES: TStringField;
    sqlRomanMerUNIDADE: TStringField;
    sqlRomanMerQTDE: TBCDField;
    sqlRomanMerCODIAUX: TIntegerField;
    sqlRomanMerCALIBRE: TIntegerField;
    sqlRomanMerPESOLIQ: TBCDField;
    sqlRomanMerPESOREAL: TBCDField;
    sqlRomanMerSAFRA: TStringField;
    sqlRomanMerLANCMANUAL: TStringField;
    sqlRomanMerREGLOG: TStringField;
    sqlRomanMerREG_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbImprimirClick(Sender: TObject);
    procedure cdsTabelaAfterScroll(DataSet: TDataSet);
    procedure sbIncluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure pAbreDados;
  public
    { Public declarations }
  end;

var
  FfrmEsteira: TFfrmEsteira;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlPSPEsteira;

procedure TFfrmEsteira.FormCreate(Sender: TObject);
begin
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmEsteira.FormShow(Sender: TObject);
var vlot:Integer;
    vstr:String;
begin
  cdsTabela.close;
  cdsTabela.CreateDataSet;
  cdsTabela.Open;

  fSql(1,2,['Select codigo, descricao From cadvarie where codigo > 0 Order by Codigo'],1);

  dm.qrSql2.First;
  while not dm.qrSql2.Eof do
  begin
    vstr := 'ESTEIRAC'+frStrZero(dm.qrSql2.Fields[0].asString,3);
    fSql(1,1,['Select Lote, Sum(Qtde) as vqtd ',
              '  From '+vstr,
              ' Group By Lote'],3);
    vlot := dm.qrSql1.Fields[0].asInteger;
    if (dm.qrSql1.Fields[1].asInteger > 0) then
    begin
      cdsTabela.Append;
      cdsTabelaRegistro.AsInteger := vlot;
      cdsTabelaVariedade.AsString := dm.qrSql2.Fields[0].asString+' - '+Trim(dm.qrSql2.Fields[1].asString);
      cdsTabelaTabela.AsString := vstr;
      cdsTabelaLote.AsInteger  := vlot;
      cdsTabela.Post;
    end;
  end;
  inherited;

  cdsTabela.First;

  pAbreDados;

  inherited;

  if pcItem.ActivePageIndex = 0 then
    if dbTabela.Focused then
      dbTabela.SetFocus;
end;

procedure TFfrmEsteira.pAbreDados;
begin

  cdsDados.Close;
  sqlDados.SQL.Clear;
  sqlDados.SQL.Add('SELECT CODIGO, DESCRICAO, SUM(QTDE) AS VQTDE');

  if cdsTabelaTabela.AsString <> '' then
  begin
    sqlDados.SQL.Add('FROM '+cdsTabelaTabela.AsString);
    sqlDados.SQL.Add('Where LOTE = 0'+cdsTabelaLote.AsString);
  end
  else begin
    sqlDados.SQL.Add('FROM ESTEIRAC010');
    sqlDados.SQL.Add('Where LOTE = 0');
  end;

  sqlDados.SQL.Add('GROUP BY CODIGO, DESCRICAO');
  sqlDados.SQL.Add('ORDER BY CODIGO DESC');
  cdsDados.Open;
  cdsDados.First;

//Abre tabela romaneio e romaneio
  try
    cdsRomanPro.Close;
    sqlRomanPro.ParamByName('vlanc').asInteger := cdsTabelaRegistro.AsInteger;
    cdsRomanPro.Open;
    cdsRomanMer.Close;
    sqlRomanMer.ParamByName('vlanc').asInteger := cdsTabelaRegistro.AsInteger;
    cdsRomanMer.Open;

    //sbTiraFiltro.onClick(sbTiraFiltro);

  except
  end;


end;

procedure TFfrmEsteira.cdsTabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;

  pAbreDados;

end;

procedure TFfrmEsteira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmEsteira);
end;

procedure TFfrmEsteira.sbImprimirClick(Sender: TObject);
begin
  inherited;

{  xRelTela := UpperCase('FfrmEstResumo');
  DM.TEsteiraRel.Close;
  DM.TEsteiraRel.TableName := DM.TEsteira.TableName;
  DM.TEsteiraRel.Open;

  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := DM.TEsteiraRel;

  FModeloRel.sbMostrar.OnClick(FModeloRel.sbMostrar);

  DM.TEsteiraRel.Close;
}
  if qrPSPEsteira<>Nil then qrPSPEsteira.Destroy; Application.CreateForm(TqrPSPEsteira,qrPSPEsteira);
  with qrPSPEsteira do begin
    QRLabel16.Caption:='Movimento Esteira Registro nr. '+frPree(cdsTabelaRegistro.asInteger,4,'0',0);
    xRelTela := QRLabel16.Caption;
    qrProdu.Close;
    qrProdu.SQL.Clear;
    qrProdu.SQL.Add('SELECT CODIGO, DESCRICAO, SUM(QTDE) AS VQTDE');
    qrProdu.SQL.Add('FROM '+cdsTabelaTabela.AsString);
    qrProdu.SQL.Add('GROUP BY CODIGO, DESCRICAO');
    qrProdu.SQL.Add('ORDER BY CODIGO ');
    qrProdu.Open;

    PrinterSettings.PrinterIndex := fImpr('Imp2');
    Preview;
  end;

end;

procedure TFfrmEsteira.sbIncluirClick(Sender: TObject);
begin
  if TComponent(Sender).Tag > 0 then exit;
  inherited;

end;

end.

