unit FrmCadPlanoGrupoSub;

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
  TFfrmCadPlanoGrupoSub = class(TFModelo)
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
    GroupBox5: TGroupBox;
    frmPesquisaCtc: TfrmPesquisa;
    SpeedButton1: TSpeedButton;
    DBRadioGroup16: TDBRadioGroup;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosREGLOG: TStringField;
    cdsDadosREGLOG: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure frmPesquisaCtcedtPesquisaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure tsDadosShow(Sender: TObject);
  private
    { Private declarations }

    procedure pObtemGrupo;

  public
    { Public declarations }
  end;

var
  FfrmCadPlanoGrupoSub: TFfrmCadPlanoGrupoSub;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmCadPlanoGrupo;


procedure TFfrmCadPlanoGrupoSub.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCTC.pInicia('ttPlanoGrupo', TForm(Sender),7,147,GroupBox5,true);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadPlanoGrupoSub.FormShow(Sender: TObject);
begin
  inherited;
  sbExcluir.Enabled := False;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadPlanoGrupoSub.frmPesquisaCtcedtPesquisaExit(Sender: TObject);
var vn1, vn2: String;
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  if not GroupBox5.Enabled then exit;

  //Nivel 1-> 01
  if (Trim(frmPesquisaCtc.edtPesquisa.Text) = '') then
  begin
    fSql(1,1,['select codigo from cadplano where nivel = 1 order by codigo desc'],1);
    cdsDadosCodigo.AsString := frStrZero(IntToStr(StrToIntDef(dm.qrSql1.Fields[0].asString,0)+1),2);
  end
  else begin
    //Nivel 3-> 01.01.001
    vn1 := frStrZero(frmPesquisaCtc.vpCampo_1,2);
    if (Copy(vn1,3,1) = '.') then
    begin
      fSql(1,1,['select codigo from cadplano where SubString(codigo from 1 for 5) = '+QuotedStr(vn1)+' and nivel = 3 order by codigo desc'],1);
      vn2 := dm.qrSql1.Fields[0].asString;
      vn2 := Copy(vn2,4,2);
      cdsDadosCodigo.AsString := vn1+'.'+frStrZero(IntToStr(StrToIntDef(vn2,0)+1),2);
    end
    else begin
      //Nivel 2-> 01.01
      if (Copy(vn1,1,2) <> '') then
      begin
        fSql(1,1,['select codigo from cadplano where SubString(codigo from 1 for 2) = '+QuotedStr(vn1)+' and nivel = 2 order by codigo desc'],1);
        vn2 := dm.qrSql1.Fields[0].asString;
        vn2 := Copy(vn2,4,2);
        cdsDadosCodigo.AsString := vn1+'.'+frStrZero(IntToStr(StrToIntDef(vn2,0)+1),2);
      end
    end;
  end;
end;

procedure TFfrmCadPlanoGrupoSub.pObtemGrupo;
var vstr: String;
begin
  inherited;
  if (Copy(cdsDadosCodigo.AsString,2,1) = '.') then
    vstr := Copy(cdsDadosCodigo.AsString,1,1)
  else
    vstr := Copy(cdsDadosCodigo.AsString,1,2);
  vstr := fBus(1,['Select Reduz From cadplano where nivel = 1 and codigo = '+QuotedStr(vstr)],1);
  frmPesquisaCtc.pRetornaDados(vstr);

end;

procedure TFfrmCadPlanoGrupoSub.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadplano where nivel = 2 and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadplano where nivel = 2 and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadPlanoGrupoSub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadPlanoGrupoSub);
end;

procedure TFfrmCadPlanoGrupoSub.sbIncluirClick(Sender: TObject);
begin
  if (TComponent(Sender).Tag = 13) or (TComponent(Sender).Tag = 14) then
  begin
    if (cdsDadosNivel.asInteger < 2) then
    begin
      ShowMessage('Somente nível 2 pode ser alterado/excluído!');
      exit;
    end;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaCTC.pLimpaCampo;
          GroupBox1.Enabled := True;
          GroupBox4.Enabled := False;
          GroupBox5.Enabled := True;
          cdsDados.Append;
          cdsDadosReduz.AsInteger := frGenerator('CADPLANO','REDUZ',0) + 1;
          cdsDadosREG_ID.AsInteger  := frGeneratorFB('GEN_CADPLANO_ID');
          cdsDadosSinalDes.AsString := 'S';
          cdsDadosATIVO.AsString  := 'S';
          cdsDadosNivel.asInteger := 2;
          frmPesquisaCtc.edtPesquisa.SetFocus;
        end;
     13: begin
          GroupBox1.Enabled := False;
          GroupBox4.Enabled := True;
          GroupBox5.Enabled := False;
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
            GroupBox5.Enabled := False;
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
     91,92: pObtemGrupo;

  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadPlanoGrupoSub.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frForm(TFfrmCadPlanoGrupo, FfrmCadPlanoGrupo);

end;

procedure TFfrmCadPlanoGrupoSub.tsDadosShow(Sender: TObject);
begin

  pObtemGrupo;

end;

procedure TFfrmCadPlanoGrupoSub.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  cdsDadosCodigo.AsString := frStrZero(cdsDadosCodigo.AsString,5);

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
