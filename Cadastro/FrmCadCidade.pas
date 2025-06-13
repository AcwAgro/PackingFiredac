unit FrmCadCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadCidade = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosESTADO: TStringField;
    sqlDadosCEP: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    sqlDadosNUMERO: TIntegerField;
    cdsDadosNUMERO: TIntegerField;
    dsIbge: TDataSource;
    cdsIbge: TClientDataSet;
    cdsIbgecodigo: TStringField;
    cdsIbgecidade: TStringField;
    cbCidade: TComboBox;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit6: TDBEdit;
    sqlDadosPAISCOD: TIntegerField;
    sqlDadosPAISNOME: TStringField;
    cdsDadosPAISCOD: TIntegerField;
    cdsDadosPAISNOME: TStringField;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure cbCidadeEnter(Sender: TObject);
    procedure cbCidadeExit(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
    procedure pFiltraIbge;
    function  pUFparaCodigo(const UF: string): integer;
    procedure pObterCodigoMunicipio(xUF: string);
//    function TFfrmCadCidade.ObterCodigoMunicipio(const xMun, xUF: string): integer;
  public
    { Public declarations }
  end;

var
  FfrmCadCidade: TFfrmCadCidade;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadCidade.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadCidade.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadCidade.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    pFiltraIbge;
end;

procedure TFfrmCadCidade.cbCidadeEnter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
end;

procedure TFfrmCadCidade.cbCidadeExit(Sender: TObject);
begin
  inherited;
  if cdsDados.State = dsBrowse then Exit;

  if (Trim(cdsDadosEstado.AsString) = 'EX') then
  begin
    cdsDadosNumero.asString := '9999999';
    cdsDadosDescricao.asString := 'EXTERIOR';
    cbCidade.Text := 'EXTERIOR';
    keyPreview := True;
    DBEdit5.SetFocus;
  end
  else begin
    if cdsIbge.Locate('Cidade', cbCidade.Text, []) then
    begin
      cdsDadosNumero.asString := cdsIbgeCodigo.asString;
      cdsDadosDescricao.asString := cdsIbgeCidade.asString;
      keyPreview := True;
      DBEdit5.SetFocus;
    end;
  end;
end;

procedure TFfrmCadCidade.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cbCidade.Text := cdsDadosdescricao.asString;
  if cdsDados.State = dsBrowse then Exit;

  if cdsIbge.Active then
  begin
    if (Trim(cdsDadosEstado.AsString) = 'EX') then
      cbCidade.Text := 'EXTERIOR'
    else begin
      if cdsIbge.Locate('Cidade', cdsDadosdescricao.Text, []) then
        cbCidade.Text := cdsDadosdescricao.asString;
    end;
  end;
end;

procedure TFfrmCadCidade.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit3.SetFocus;
end;

procedure TFfrmCadCidade.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  if not frUF(cdsDadosEstado.asString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit4.SetFocus;
    Exit;
  end;
  pFiltraIbge;
end;

procedure TFfrmCadCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadCidade);
end;

procedure TFfrmCadCidade.sbAnteriorClick(Sender: TObject);
begin
  inherited;
  cdsDados.Prior;
  cbCidade.Text := cdsDadosdescricao.asString;
  if cdsDados.State = dsBrowse then Exit;

  if cdsIbge.Active then
  begin
    if (Trim(cdsDadosEstado.AsString) = 'EX') then
      cbCidade.Text := 'EXTERIOR'
    else begin
      if cdsIbge.Locate('Cidade', cdsDadosdescricao.Text, []) then
        cbCidade.Text := cdsDadosdescricao.asString;
    end;
  end;
end;

procedure TFfrmCadCidade.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger  := frGenerator('CADCIDAD','CODIGO',1);
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADCIDAD_ID');
          cdsDadosPaisCod.asString  := '1058';
          cdsDadosPaisNome.asString := 'BRASIL';
          cdsDadosATIVO.AsString  := 'S';
          DBEdit4.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit4.SetFocus;
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
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadCidade.sbProximoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Next;
  cbCidade.Text := cdsDadosdescricao.asString;
  if cdsDados.State = dsBrowse then Exit;

  if cdsIbge.Active then
  begin
    if (Trim(cdsDadosEstado.AsString) = 'EX') then
      cbCidade.Text := 'EXTERIOR'
    else begin
      if cdsIbge.Locate('Cidade', cdsDadosdescricao.Text, []) then
        cbCidade.Text := cdsDadosdescricao.asString;
    end;
  end;
end;

procedure TFfrmCadCidade.pFiltraIbge;
begin
  if (Trim(cdsDadosEstado.AsString) <> '') and
     (Trim(cdsDadosEstado.AsString) <> 'EX') then
    pObterCodigoMunicipio(cdsDadosEstado.AsString)
  else begin
    if (Trim(cdsDadosEstado.AsString) = 'EX') then
    begin
      cbCidade.Items.Clear;
      cdsIbge.Close;
      cdsIbge.CreateDataSet;
      cdsIbge.Append;
      cdsIbgeCodigo.AsString := '9999999';
      cdsIbgeCidade.AsString := 'EXTERIOR';
      cdsIbge.Post;
      cbCidade.Items.Add(cdsIbgeCidade.AsString);
      cbCidade.Text := cdsIbgeCidade.AsString;
    end;
  end;
end;

function TFfrmCadCidade.pUFparaCodigo(const UF: string): integer;
const
  (**)UFS = '.AC.AL.AP.AM.BA.CE.DF.ES.GO.MA.MT.MS.MG.PA.PB.PR.PE.PI.RJ.RN.RS.RO.RR.SC.SP.SE.TO.';
  CODIGOS = '.12.27.16.13.29.23.53.32.52.21.51.50.31.15.25.41.26.22.33.24.43.11.14.42.35.28.17.';
begin
  try
    result := StrToInt(copy(CODIGOS, pos('.' + UF + '.', UFS) + 1, 2));
  except
    result := 0;
  end;
end;

procedure TFfrmCadCidade.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadcidad where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadcidad where ativo = ''N''';
  cdsDados.Open;


end;

procedure TFfrmCadCidade.pObterCodigoMunicipio(xUF: string);
var
  i: integer;
  PathArquivo: string;
  List: TstringList;
begin
  cbCidade.Items.Clear;
  cdsIbge.Close;
  cdsIbge.CreateDataSet;
  PathArquivo :=  xdirsi + 'MunIBGE\MunIBGE-UF' + InttoStr(pUFparaCodigo(xUF)) + '.txt';
  if FileExists(PathArquivo) then
   begin
     List := TstringList.Create;
     List.LoadFromFile(PathArquivo);
     i := 0;
     while (i < list.count) do
      begin
        cdsIbge.Append;
        cdsIbgeCodigo.AsString := Copy(List[i],1,7);
        cdsIbgeCidade.AsString := frMaiu(UpperCase(Copy(List[i],9,30)));
        cdsIbge.Post;
        cbCidade.Items.Add(cdsIbgeCidade.AsString);
        inc(i);
      end;
     List.free;
   end;
   if cdsIbge.Locate('Cidade', cdsDadosdescricao.Text, []) then
     cbCidade.Text := cdsDadosdescricao.asString;
end;


end.
