unit frmRomanAbre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa;

type
  TFfrmRomanAbre = class(TFModelo)
    SE1: TSpeedButton;
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TDateTimeField;
    sqlDadosHORINI: TStringField;
    sqlDadosHORFIM: TStringField;
    sqlDadosQTDEBIN: TFloatField;
    sqlDadosPESOBRU: TFloatField;
    sqlDadosPESOLIQ: TFloatField;
    sqlDadosDATAFIN: TDateTimeField;
    sqlDadosLOTE: TIntegerField;
    sqlDadosPESOPRO: TFloatField;
    sqlDadosPERCA: TFloatField;
    sqlDadosPEREC: TFloatField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosFECHA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TDateTimeField;
    cdsDadosHORINI: TStringField;
    cdsDadosHORFIM: TStringField;
    cdsDadosQTDEBIN: TFloatField;
    cdsDadosPESOBRU: TFloatField;
    cdsDadosPESOLIQ: TFloatField;
    cdsDadosDATAFIN: TDateTimeField;
    cdsDadosLOTE: TIntegerField;
    cdsDadosPESOPRO: TFloatField;
    cdsDadosPERCA: TFloatField;
    cdsDadosPEREC: TFloatField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosFECHA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    dtpData: TDateTimePicker;
    DBEdit18: TDBEdit;
    sqlRomanPro: TQuery;
    sqlRomanMer: TQuery;
    dspRomanMer: TDataSetProvider;
    dspRomanPro: TDataSetProvider;
    cdsRomanPro: TClientDataSet;
    cdsRomanMer: TClientDataSet;
    dsRomanMer: TDataSource;
    dsRomanPro: TDataSource;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    sqlDadosCODLOTECLASS: TStringField;
    cdsDadosCODLOTECLASS: TStringField;
    frmPesquisaVariedade: TfrmPesquisa;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    GroupBox5: TGroupBox;
    frmPesquisaProdutor: TfrmPesquisa;
    GroupBox9: TGroupBox;
    frmPesquisaLocal: TfrmPesquisa;
    sqlDadosPRODUTORCOD: TIntegerField;
    cdsDadosPRODUTORCOD: TIntegerField;
    btnImportar: TButton;
    GroupBox7: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit4: TDBEdit;
    sqlRomanProLANC: TIntegerField;
    sqlRomanProPRODCOD: TIntegerField;
    sqlRomanProPRODDES: TStringField;
    sqlRomanProQTDEBIN: TFloatField;
    sqlRomanProPESOBRU: TFloatField;
    sqlRomanProPESOLIQ: TFloatField;
    sqlRomanProLOTEENTRA: TIntegerField;
    sqlRomanProLANCIT: TIntegerField;
    sqlRomanProSAFRA: TStringField;
    cdsRomanMerLANC: TIntegerField;
    cdsRomanMerPRODCOD: TIntegerField;
    cdsRomanMerPRODDES: TStringField;
    cdsRomanMerUNIDADE: TStringField;
    cdsRomanMerQTDE: TFloatField;
    cdsRomanMerCODIAUX: TIntegerField;
    cdsRomanMerCALIBRE: TIntegerField;
    cdsRomanMerPESOLIQ: TFloatField;
    cdsRomanMerPESOREAL: TFloatField;
    cdsRomanMerLANCIT: TIntegerField;
    cdsRomanMerSAFRA: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure dtpDataChange(Sender: TObject);
    procedure frmPesquisaVariedadeExit(Sender: TObject);
    procedure SE1Click(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
    procedure sbPeriodoClick(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure frmPesquisaProdutorExit(Sender: TObject);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImportarClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure cdsRomanProBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure pCriarTabela;
  public
    { Public declarations }
  end;

var
  FfrmRomanAbre: TFfrmRomanAbre;

implementation

{$R *.dfm}
uses Data, Rotina, Esteira, zModeloRel;

procedure TFfrmRomanAbre.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaVariedade.pInicia('ttVariedade',TForm(Sender),7,147,GroupBox4,True);
  frmPesquisaProdutor.pInicia('ttProdutor',TForm(Sender),7,147,GroupBox5,True);
  frmPesquisaLocal.pInicia('ttLocal',TForm(Sender),7,147,GroupBox9,True);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomanAbre.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomanAbre.frmPesquisaVariedadeExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    if (cdsDadosVarieCod.AsInteger <> frmPesquisaVariedade.vpCodPrincipal) or
       (cdsDadosLote.asInteger = 0) then
    begin
      cdsDadosVarieCod.AsInteger := frmPesquisaVariedade.vpCodPrincipal;
//      cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',1,xAno+Trim('0'+cdsDadosVarieCod.asString));
    end;
  end;
end;

procedure TFfrmRomanAbre.frmPesquisaProdutorExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if pcItem.ActivePageIndex = 1 then
    cdsDadosProdutorCod.AsInteger := frmPesquisaProdutor.vpCodPrincipal;

end;

procedure TFfrmRomanAbre.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaVariedade.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaProdutor.pRetornaDados(cdsDadosProdutorCod.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);
  end;
end;

procedure TFfrmRomanAbre.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaVariedade.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaProdutor.pRetornaDados(cdsDadosProdutorCod.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);
  end;
end;

procedure TFfrmRomanAbre.cdsRomanProBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanPro.FieldByName('Lanc').asInteger = 0 then
    cdsRomanPro.FieldByName('Lanc').asInteger := cdsDados.FieldByName('Lanc').asInteger;
  if cdsRomanPro.FieldByName('Lancit').asInteger = 0 then
    cdsRomanPro.FieldByName('Lancit').asInteger := frGenerator('ROMANPRO','LANCIT',1);
end;

procedure TFfrmRomanAbre.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (cdsDadosFECHA.asString <> 'S') then
  begin
    With dbDados do
    begin
      Canvas.Font.Color := clRed;
      Canvas.Brush.Color := clBtnFace;
      DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
    end;
  end;
end;

procedure TFfrmRomanAbre.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (cdsDadosLote.AsInteger = 0) then
  begin
    frPerg('Informe um lote válido!', 'OK');
    DBEdit15.SetFocus;
    exit;
  end;

  if (not cdsRomanPro.Active) then
    cdsRomanPro.Open;

  if (cdsRomanPro.IsEmpty) then
    cdsRomanPro.Append
  else
    cdsRomanPro.Edit;

end;

procedure TFfrmRomanAbre.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (vkey = 13) then
  begin
    dtpData.Date := cdsDadosDATA.Value;
    Application.ProcessMessages;
    if (FormatDateTime('mm/yyyy', cdsDadosData.AsDateTime) <> FormatDateTime('mm/yyyy', Date))  then
      frPerg('Data mês e ano,'+#13+'diferente da atual!', 'OK');
  end;
end;

procedure TFfrmRomanAbre.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  if fSalvar then sbIncluirClick(sbSalvar) else DBEdit15.SetFocus;
end;

procedure TFfrmRomanAbre.dtpDataChange(Sender: TObject);
begin
  inherited;
  cdsDadosDATA.Value := dtpData.Date;
end;

procedure TFfrmRomanAbre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FEsteira.tmLeitor.Enabled := True;
  FreeAndNil(FfrmRomanAbre);
  FEsteira.pExecutar;
end;

procedure TFfrmRomanAbre.sbIncluirClick(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
    13,14: if cdsDadosFecha.AsString = 'S' then
           begin
             frPerg('Esse lote já foi fechado.', 'OK');
             Abort;
           end;
  End;

  if TComponent(Sender).Tag = 15 then
  begin
    if frmPesquisaVariedade.vpCodPrincipal = 0 then
    begin
      frPerg('Obrigatório informar a variedade!', 'OK');
      frmPesquisaVariedade.edtPesquisa.SetFocus;
      Abort;
    end;
    if frmPesquisaProdutor.vpCodPrincipal = 0 then
    begin
      frPerg('Obrigatório informar o produtor!', 'OK');
      frmPesquisaProdutor.edtPesquisa.SetFocus;
      Abort;
    end;
  end;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          frmPesquisaVariedade.pLimpaCampo;
          frmPesquisaProdutor.pLimpaCampo;
          frmPesquisaLocal.pLimpaCampo;
          cdsDados.Append;
          cdsDadosLanc.AsInteger := frGenerator('ROMAN','LANC',1);
          cdsDadosData.Value := Date;
          cdsDadosHorIni.asString := FormatDateTime('HH:MM', Time);
          cdsDadosLote.AsInteger := 0; //cdsDadosLanc.AsInteger;
          cdsDadosSafra.AsString := FormatDateTime('yyyy', Now);
          cdsDadosFecha.AsString := 'N';
          cdsDadosLocalCod.asInteger := 1;
          DBEdit15.SetFocus;
          //frmPesquisaVariedade.edtPesquisa.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          cdsRomanPro.Edit;
          DBEdit16.SetFocus;
        end;
     14: begin
           fSql(1,['Delete From RomanPro Where Lanc=0'+cdsDadosLanc.Text],1);
           fSql(1,['Delete From RomanMer Where Lanc=0'+cdsDadosLanc.Text],1);
           fSql(1,['Delete From RomanEmbal Where Lanc=0'+cdsDadosLanc.Text],1);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
         end;
     15: begin
          try
            cdsDadosVarieCod.AsInteger := frmPesquisaVariedade.vpCodPrincipal;
            cdsDadosVarieDes.AsString  := frmPesquisaVariedade.vpDescricao;
            cdsDadosProdutorCod.AsInteger := frmPesquisaProdutor.vpCodPrincipal;
            cdsDadosLocalCod.AsInteger := frmPesquisaLocal.vpCodPrincipal;
            if cdsDadosLocalCod.asInteger < 1 then
              cdsDadosLocalCod.asInteger := 1;

            cdsDadosEmpreCod.asInteger := 1;
            cdsDadosAcesoCod.asInteger := 1;
            cdsDados.Post;
            cdsDados.ApplyUpdates(0);

            if not (cdsRomanPro.State in [dsInsert, dsEdit]) then
              cdsRomanPro.Edit;
            cdsRomanPro.Post;
            cdsRomanPro.ApplyUpdates(-1);

            if frPerg('Deseja enviar para esteira/produção?') then
              SE1.OnClick(SE1);

            cdsDados.Refresh;

          except
            frPerg('Erro salvando dados!', 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           cdsDados.Cancel;
           pLiberar('Geral');
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmRomanAbre.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsRomanPro.Close;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from roman where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
  cdsRomanPro.Open;
end;

procedure TFfrmRomanAbre.SE1Click(Sender: TObject);
var vconf,varr:String; vArq:TextFile;
begin
  if cdsDadosFecha.AsString = 'S' then
  begin
    frPerg('Esse lote já foi fechado!', 'OK');
    Abort;
  end;

  if frPerg(PChar('Deseja Abrir ESTEIRA -> 01'+#13+
                  'Lote nº '+cdsDadosLote.asString)) then
  begin
    try
      vconf := xdirSi+'DADOS\Config.INI';
      DeleteFile(vconf);
      AssignFile(varq,xdirsi+'DADOS\Config.INI');
      Rewrite(varq);
      Writeln(varq,'Lote     ='+cdsDadosLote.Text);
      Writeln(varq,'Codigo   ='+cdsDadosVarieCod.Text);
      Writeln(varq,'Variedade='+cdsDadosVarieDes.Text);
      Writeln(varq,'Registro ='+cdsDadosLanc.Text);
      Writeln(varq,'LoteClass='+cdsDadosCodLoteClass.Text);
      CloseFile(varq);

      pCriarTabela;
      sleep(200);
      pCriarTabela;

    except

    end;

    if fileexists(xdirsi+'DADOS\MUDOU.INI') then
    begin
      DeleteFile(xdirini+'DADOS\MUDOU.INI');
      Sleep(300);
    end;

    AssignFile(varq,xdirsi+'DADOS\MUDOU.INI');
    Rewrite(varq);
    Writeln(varq,'Lote     ='+cdsDadosLote.Text);
    CloseFile(varq);

    FEsteira.TMudou.Enabled := True;

  end;
end;

procedure TFfrmRomanAbre.btnImportarClick(Sender: TObject);
var vlanc: Integer;
begin
  inherited;
  if (cdsDadosLote.AsInteger <> 0) then
  begin

    if not frPerg(PChar('Importar romaneio de entrada'+#13+
                    'nº '+cdsDadosLote.asString)) then
      exit;

    if fTra(1,['Select Lanc, ProdCod, ProdDes, Qtde, BinsLiq, LocalCod From EntRE Where Recibo=0'+cdsDadosLote.Text],1) then
    begin
      if (not cdsRomanPro.Active) then
        cdsRomanPro.Open;

      if (cdsRomanPro.IsEmpty) then
        cdsRomanPro.Append
      else
        cdsRomanPro.Edit;

      if cdsRomanPro.FieldByName('Lanc').asInteger = 0 then
        cdsRomanPro.FieldByName('Lanc').asInteger := cdsDados.FieldByName('Lanc').asInteger;
      if cdsRomanPro.FieldByName('Lancit').asInteger = 0 then
        cdsRomanPro.FieldByName('Lancit').asInteger := frGenerator('ROMANPRO','LANCIT',1);

      vlanc := dm.qrSqlTra.Fields[0].asInteger;
      cdsRomanPro.FieldByName('ProdCod').Value  :=dm.qrSqlTra.Fields[1].Value;
      cdsRomanPro.FieldByName('ProdDes').Text   :=dm.qrSqlTra.Fields[2].Text;
      cdsRomanPro.FieldByName('LOTEENTRA').asString := cdsDadosLote.Text;
      cdsRomanPro.FieldByName('QTDEBIN').asFloat := dm.qrSqlTra.Fields[3].asFloat;
      if dm.qrSqlTra.Fields[3].asFloat > 0 then
        cdsRomanPro.FieldByName('PesoBru').asFloat:=fTransfx(dm.qrSqlTra.Fields[4].asFloat/dm.qrSqlTra.Fields[3].asFloat,2);

      cdsDadosProdutorCod.AsString := dm.qrSqlTra.Fields[1].Text;
      cdsDadosLocalCod.AsString    := dm.qrSqlTra.Fields[5].Text;

      if fTra(1,['Select variecod From EntREvar Where Lanc=0'+IntToStr(vlanc)],1) then
        cdsDadosVarieCod.AsString := dm.qrSqlTra.Fields[0].Text;

      frmPesquisaVariedade.pRetornaDados(cdsDadosVarieCod.AsString);
      frmPesquisaProdutor.pRetornaDados(cdsDadosProdutorCod.AsString);
      frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);

      cdsRomanPro.Post;
      cdsRomanPro.Edit;

      DBEdit1.SetFocus;
    end
    else begin
      ShowMessage('Romaneio não encontrado!');
      Abort;
    end;
  end;

end;

procedure TFfrmRomanAbre.pCriarTabela;
var vestcopy: String;
begin
  dm.TEsteira.Close;
  vestcopy := 'ESTEIRA'+ 'V'+frPree(cdsDadosVarieCod.Text,2,'0',0)
                       + 'L'+frPree(cdsDadosLanc.Text,4,'0',0);

  dm.TEsteira.TableName := vestcopy;

  if dm.TEsteira.Exists then
    dm.TEsteira.Open
  else begin
    fProc(1,['Create Table '+vestcopy+
              ' ( LOTE      INTEGER,'+
              '   VARIECOD  INTEGER,'+
              '   ESTEIRA   INTEGER,'+
              '   LANC      INTEGER,'+
              '   BARRA     VARCHAR(13),'+
              '   NUMERO    INTEGER,'+
              '   CODIGO    INTEGER,'+
              '   QTDE      DOUBLE,'+
              '   VARIEDES  VARCHAR(30),'+
              '   DESCRICAO VARCHAR(50),'+
              '   QTDEANT   DOUBLE,'+
              '   QTDEATU   DOUBLE,'+
              '   EMBALCOD  INTEGER,'+
              '   CALIBREDES VARCHAR(10))'], 1);
  end;
  dm.qrProc1.Close;
end;

end.
