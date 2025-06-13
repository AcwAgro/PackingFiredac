unit FrmCadPlano;

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
  TFfrmCadPlano = class(TFModelo)
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
    pgParametro: TPageControl;
    tbParametro: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    sqlDadosFGRELFINAN: TStringField;
    sqlDadosFGFECHAMENTO: TStringField;
    cdsDadosFGRELFINAN: TStringField;
    cdsDadosFGFECHAMENTO: TStringField;
    sqlDadosSUBGRUPO: TStringField;
    cdsDadosSUBGRUPO: TStringField;
    btnSubGrupo: TButton;
    sqlDadosSUBGRUPOREDUZ: TIntegerField;
    sqlDadosGRUPOREDUZ: TIntegerField;
    cdsDadosSUBGRUPOREDUZ: TIntegerField;
    cdsDadosGRUPOREDUZ: TIntegerField;
    sqlDadosATIVO: TStringField;
    cdsDadosATIVO: TStringField;
    DBRadioGroup16: TDBRadioGroup;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    sqlDadosFGCUSTOEMB: TStringField;
    sqlDadosFGCUSTOOPE: TStringField;
    cdsDadosFGCUSTOEMB: TStringField;
    cdsDadosFGCUSTOOPE: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosREGLOG: TStringField;
    cdsDadosREGLOG: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSubGrupoClick(Sender: TObject);
    procedure GroupBox5Exit(Sender: TObject);
    procedure rbgAtivoClick(Sender: TObject);
    procedure tsDadosShow(Sender: TObject);
  private
    { Private declarations }

    procedure pObtemSubGrupo;

  public
    { Public declarations }
  end;

var
  FfrmCadPlano: TFfrmCadPlano;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmCadPlanoGrupoSub;

procedure TFfrmCadPlano.FormCreate(Sender: TObject);
begin
  btnSubGrupo.Visible := False;
  if (xAcess = 'ACWebAgro') then
    btnSubGrupo.Visible := True;

  inherited;

  frmPesquisaCTC.pInicia('ttPlanoSubGrupo', TForm(Sender),7,147,GroupBox5,true);
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadPlano.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadPlano.GroupBox5Exit(Sender: TObject);
var vn1, vn2: String;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (not cdsDados.Active) then Exit;

  //Nivel 1-> 1
  if (Trim(frmPesquisaCtc.edtPesquisa.Text) = '') then
  begin
    fSql(1,1,['select codigo from cadplano where nivel = 1 order by codigo desc'],1);
    cdsDadosCodigo.AsString := IntToStr(StrToIntDef(dm.qrSql1.Fields[0].asString,0)+1);
  end
  else begin
    //Nivel 3-> 1.01.001
    vn1 := frmPesquisaCtc.vpCampo_1;
    if (Copy(vn1,3,1) = '.') then
    begin
      fSql(1,1,['select codigo from cadplano where SubString(codigo from 1 for 5) = '+QuotedStr(vn1)+' and nivel = 3 order by codigo desc'],1);
      vn2 := dm.qrSql1.Fields[0].asString;
      vn2 := Copy(vn2,7,3);
      cdsDadosCodigo.AsString := vn1+'.'+frStrZero(IntToStr((StrToIntDef(vn2,0)+1)),3);
      //cdsDadosCodigo.AsString := Copy(dm.qrSql1.Fields[0].asString, 1,5)+'.'+frStrZero(IntToStr((StrToIntDef(vn2,0)+1)),3);
    end
    else begin
      if (Copy(vn1,1,2) <> '') then
      begin
        fSql(1,1,['select codigo from cadplano where SubString(codigo from 1 for 2) = '+QuotedStr(vn1)+' and nivel = 2 order by codigo desc'],1);
        vn2 := dm.qrSql1.Fields[0].asString;
        vn2 := Copy(vn2,4,2);
        cdsDadosCodigo.AsString := vn1+'.'+frStrZero((IntToStr(StrToIntDef(vn2,0)+1)),2);
      end;
    end;
  end;

end;

procedure TFfrmCadPlano.pObtemSubGrupo;
var vstr: String;
begin
  inherited;
  if (Copy(cdsDadosCodigo.AsString,5,1) = '.') then
    vstr := Copy(cdsDadosCodigo.AsString,1,4)
  else
    vstr := Copy(cdsDadosCodigo.AsString,1,5);

  vstr := fBus(1,['Select Reduz From cadplano where nivel = 2 and codigo = '+QuotedStr(vstr)],1);
  frmPesquisaCtc.pRetornaDados(vstr);

end;

procedure TFfrmCadPlano.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadplano where nivel = 3 and ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadplano where nivel = 3 and ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadPlano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadPlano);
end;

procedure TFfrmCadPlano.sbIncluirClick(Sender: TObject);
begin
  if (TComponent(Sender).Tag = 13) or (TComponent(Sender).Tag = 14) then
  begin
    if (cdsDadosNivel.asInteger < 3) then
    begin
      ShowMessage('Somente nível 3 pode ser alterado/excluído!');
      exit;
    end;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaCTC.pLimpaCampo;
          GroupBox1.Enabled := True;
          GroupBox4.Enabled := True;
          GroupBox5.Enabled := True;
          cdsDados.Append;
          cdsDadosReduz.AsInteger := frGenerator('CADPLANO','REDUZ',0) + 1;
          cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CADPLANO_ID');
          cdsDadosSinalDes.AsString := 'S';
          cdsDadosFGRelFinan.AsString := 'S';
          cdsDadosFGFechamento.AsString := 'N';
          cdsDadosATIVO.AsString  := 'S';
          cdsDadosNivel.asInteger := 3;
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
            cdsDadosSubGrupo.asString  := Trim(frmPesquisaCtc.edtPesquisa.Text);

            GroupBox5.Enabled := False;
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
     91,92: pObtemSubGrupo;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCadPlano.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frForm(TFfrmCadPlanoGrupoSub, FfrmCadPlanoGrupoSub);

end;

procedure TFfrmCadPlano.tsDadosShow(Sender: TObject);
begin

  pObtemSubGrupo;

end;

procedure TFfrmCadPlano.btnSubGrupoClick(Sender: TObject);
var vajustaCod: Boolean;
begin
  inherited;

  cdsDados.Close;
  sqlDados.Close;
  sqlDados.Sql.Text := 'select * from cadplano order by codigo';
  cdsDados.Open;

  vajustaCod := False;
  cdsDados.First;

  //Se não tiver 2 digitos no primeiro nivel - deve inserir um zero na frente para todos
  //if Copy(cdsDadosCodigo.asString,1,1) = '1' then
    vajustaCod := True;

  if vajustaCod then
  begin

    while not cdsDados.Eof do
    begin

      if (Copy(cdsDadosCodigo.asString,1,1) <> '0') then
      begin
        cdsDados.Edit;
        cdsDadosCodigo.asString := '0'+cdsDadosCodigo.asString;
        cdsDados.Post;
      end;

      cdsDados.Next;
    end;
    cdsDados.ApplyUpdates(0);
  end;

  //Arruma o restante

  cdsDados.Close;
  sqlDados.Close;
  sqlDados.Sql.Text := 'select * from cadplano where nivel = 3 order by codigo';
  cdsDados.Open;


  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;

    fSql(1,1,['select reduz, descricao from cadplano where SubString(codigo from 1 for 5) = '+QuotedStr(Copy(cdsDadosCodigo.AsString,1,5))+' and nivel = 2 order by codigo desc'],1);
    cdsDadosSubGrupoReduz.asInteger  := dm.qrSql1.Fields[0].asInteger;
    cdsDadosSubGrupo.asString  := dm.qrSql1.Fields[1].asString;

    fSql(1,1,['select reduz from cadplano where SubString(codigo form 1 for 2) = '+QuotedStr(Copy(cdsDadosCodigo.AsString,1,2))+' and nivel = 1 order by codigo desc'],1);
    cdsDadosGrupoReduz.asInteger  := dm.qrSql1.Fields[0].asInteger;

    fSql(1,1,['update cxbanco set conta = '+QuotedStr(cdsDadosCodigo.AsString)+' where reduz = 0'+cdsDadosReduz.AsString],1);

    cdsDados.Post;

    cdsDados.Next;
  end;
  cdsDados.ApplyUpdates(0);
  cdsDados.First;
  frPerg('Finalizado!', 'OK');

end;

procedure TFfrmCadPlano.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

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
