unit FrmCadVariedade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadVariedade = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosVAL1: TBCDField;
    sqlDadosVAL2: TBCDField;
    sqlDadosVAL3: TBCDField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosVAL1: TBCDField;
    cdsDadosVAL2: TBCDField;
    cdsDadosVAL3: TBCDField;
    sqlDadosCALNORMAL: TStringField;
    sqlDadosCALMEIA: TStringField;
    cdsDadosCALNORMAL: TStringField;
    cdsDadosCALMEIA: TStringField;
    sqlDadosDUPLICACOD: TIntegerField;
    cdsDadosDUPLICACOD: TIntegerField;
    gbPrecoMedio: TGroupBox;
    frmPesquisa: TfrmPesquisa;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    GroupBox7: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox8: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit7: TDBEdit;
    sqlDadosSIGLANOR: TStringField;
    sqlDadosSIGLAOUT: TStringField;
    cdsDadosSIGLANOR: TStringField;
    cdsDadosSIGLAOUT: TStringField;
    GroupBox12: TGroupBox;
    DBEdit8: TDBEdit;
    sqlDadosNCM: TStringField;
    cdsDadosNCM: TStringField;
    sbClonar: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosCODIGOID: TIntegerField;
    cdsDadosCODIGOID: TIntegerField;
    GroupBox14: TGroupBox;
    DBEdit11: TDBEdit;
    sqlDadosDIASVALID: TIntegerField;
    cdsDadosDIASVALID: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure sbClonarClick(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadVariedade: TFfrmCadVariedade;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadVariedade.FormCreate(Sender: TObject);
var vmostra: String;
begin
  frmPesquisa.pInicia('ttVariedade', TForm(Sender),7,147,gbPrecoMedio,true);

  vmostra := fBus(1,['Select valor From zGenerator Where Tabela = ''PRECOMEDIO'' and Campo = ''DUPLICA'''],1);
  gbPrecoMedio.Visible := vmostra = '1';

  inherited;

  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;

end;

procedure TFfrmCadVariedade.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;


procedure TFfrmCadVariedade.pcItemChange(Sender: TObject);
begin
  inherited;
  if (pcItem.ActivePageIndex = 1) and (gbPrecoMedio.Visible) then
    frmPesquisa.pRetornaDados(cdsDadosDuplicaCod.AsString);
end;

procedure TFfrmCadVariedade.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadvarie where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadvarie where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadVariedade.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmCadVariedade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadVariedade);
end;

procedure TFfrmCadVariedade.sbIncluirClick(Sender: TObject);
var vnormal, vmeia: String;
begin
  inherited;

  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisa.pLimpaCampo;
          cdsDados.First;
          vnormal := cdsDadosCalNormal.AsString;
          vmeia   := cdsDadosCalMeia.AsString;
          cdsDados.Append;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADVARIE_ID');
          cdsDadosCodigoID.AsInteger := frGenerator('CADVARIE','CODIGOID',10);
          cdsDadosCodigo.AsInteger := 0;//frGenerator('CADVARIE','CODIGO',0) + 1;
          cdsDadosCalNormal.AsString := vnormal;
          cdsDadosCalMeia.AsString := vmeia;
          cdsDadosATIVO.AsString   := 'S';
          cdsDadosNCM.AsString     := '08081000';
          DBEdit1.ReadOnly := False;
          DBEdit1.SetFocus;
        end;
     13: begin
          DBEdit1.ReadOnly := True;
          cdsDados.Edit;
          frmPesquisa.pRetornaDados(cdsDadosDuplicaCod.AsString);
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
              if cdsDadosCodigo.AsInteger = 0 then
                cdsDadosCodigo.AsInteger := frGenerator('CADVARIE','CODIGO',1);
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;

            //Retorna variedade digita
            if gbPrecoMedio.Visible then
              cdsDadosDuplicaCod.AsInteger := frmPesquisa.vpCodPrincipal;

            if cdsDadosDuplicaCod.AsInteger = 0 then
              cdsDadosDuplicaCod.AsInteger := cdsDadosCodigo.AsInteger;

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
  91,92: frmPesquisa.pRetornaDados(cdsDadosDuplicaCod.AsString);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadVariedade.sbClonarClick(Sender: TObject);
var vmsg: String;
begin
  inherited;
  if (sbSalvar.Visible) then Exit;

  vmsg := 'Deseja Clonar o cadastro:'+#13#10+
          cdsDadosCODIGO.AsString +'-'+ cdsDadosDESCRICAO.AsString;

  if not frPerg(pchar(vmsg)) then Exit;

  try

    fSql(1,1,['Select * from CadVarie where codigo = 0'+cdsDadosCODIGO.AsString],1);

    sbIncluir.OnClick(sbIncluir);

    cdsDadosDESCRICAO.AsString := dm.qrsql1.FieldByName('DESCRICAO').asString;
    cdsDadosPESOLIQ.AsFloat    := dm.qrsql1.FieldByName('PESOLIQ').asFloat;
    cdsDadosNCM.AsString       := dm.qrsql1.FieldByName('NCM').asString;
    cdsDadosCALNORMAL.AsString := dm.qrsql1.FieldByName('CALNORMAL').asString;
    cdsDadosCALMEIA.AsString   := dm.qrsql1.FieldByName('CALMEIA').asString;
    cdsDadosSIGLANOR.AsString  := dm.qrsql1.FieldByName('SIGLANOR').asString;
    cdsDadosSIGLAOUT.AsString  := dm.qrsql1.FieldByName('SIGLAOUT').asString;

    fSql(1,1,['Select max(codigo) from CadVarie where SubString(codigo from 1 for 1) = 0'+Copy(dm.qrsql1.FieldByName('CODIGO').AsString,1,1)],1);
    cdsDadosCODIGO.AsInteger   := dm.qrsql1.Fields[0].AsInteger + 1;

    dbEdit1.SetFocus;

  finally

    dm.qrsql1.Close;

  end;

end;

procedure TFfrmCadVariedade.GroupBox1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  if fBus(1,['Select Count(*) From CadVarie Where Codigo = 0'+cdsDadosCodigo.Text + ' and CodigoID <> 0'+cdsDadosCodigoID.Text],1) > 0 then
  begin
    ShowMessage('Código já existe, só permite alterações!');
    dbEdit1.Setfocus;
    Exit;
  end;
end;

end.
