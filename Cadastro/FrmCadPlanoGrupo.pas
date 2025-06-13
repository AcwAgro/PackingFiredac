unit FrmCadPlanoGrupo;

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
  TFfrmCadPlanoGrupo = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    sqlDadosCODIGO: TStringField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosSINALCOD: TStringField;
    sqlDadosSINALDES: TStringField;
    sqlDadosNIVEL: TIntegerField;
    sqlDadosREDUZ: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosLANCIT: TIntegerField;
    cdsDadosCODIGO: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosSINALCOD: TStringField;
    cdsDadosSINALDES: TStringField;
    cdsDadosNIVEL: TIntegerField;
    cdsDadosREDUZ: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosLANCIT: TIntegerField;
    DBRadioGroup16: TDBRadioGroup;
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
    procedure DBEdit1Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadPlanoGrupo: TFfrmCadPlanoGrupo;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadPlanoGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadPlanoGrupo.FormShow(Sender: TObject);
begin
  inherited;
  sbExcluir.Enabled := False;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadPlanoGrupo.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadplano where nivel = 1 and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadplano where nivel = 1 and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadPlanoGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadPlanoGrupo);
end;

procedure TFfrmCadPlanoGrupo.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          GroupBox1.Enabled := True;
          GroupBox4.Enabled := True;
          cdsDados.Append;
          cdsDadosReduz.AsInteger   := frGenerator('CADPLANO','REDUZ',0) + 1;
          cdsDadosREG_ID.AsInteger  := frGeneratorFB('GEN_CADPLANO_ID');

          fSql(1,1,['select Max(codigo) from cadplano where nivel = 1'],1);
          cdsDadosCodigo.AsInteger  := StrToIntDef(frStrZero(dm.qrSql1.Fields[0].asString,2),0) +1;

          //cdsDadosCodigo.AsInteger  := frGenerator('CADPLANO','CODIGO',10);
          cdsDadosSinalDes.AsString := 'S';
          cdsDadosATIVO.AsString    := 'S';
          cdsDadosNivel.AsInteger   := 1;
          DBEdit1.SetFocus;
        end;
     13: begin
          GroupBox1.Enabled := False;
          GroupBox4.Enabled := True;
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
            cdsDadosCodigo.asString := frStrZero(cdsDadosCodigo.asString,2);
            DBEdit3.SetFocus;
            if (Trim(cdsDadosCodigo.asString) = '') then
            begin
              frPerg('Opção Inválida! Informe um código válido.', 'OK');
              DBEdit2.SetFocus;
              Exit;
            end;
            if (Trim(cdsDadosDescricao.asString) = '') then
            begin
              frPerg('Opção Inválida! Informe uma descrição.', 'OK');
              DBEdit2.SetFocus;
              Exit;
            end;

            if vTag = 12 then
              cdsDadosReduz.AsInteger := frGenerator('CADPLANO','REDUZ',1);

            cdsDadosEmpreCod.asInteger := xEmp;
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

procedure TFfrmCadPlanoGrupo.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  cdsDadosCodigo.AsString := frStrZero(cdsDadosCodigo.AsString,2);

  fSql(1,3,['Select Count(Codigo) From CadPLANO '+
            ' Where Reduz <> '+ cdsDadosReduz.asString+
            '   and Codigo='+QuotedStr(cdsDadosCodigo.Text)],1);
  if dm.qrSql3.Fields[0].asInteger > 0 then
  begin
    if DBEdit1.Focused then
      DBEdit1.SetFocus;
    frPerg('Código já existente!', 'OK');
    Abort;
  end;

end;

end.
