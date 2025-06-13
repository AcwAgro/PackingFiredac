unit frmRomanAbre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmRomanAbre = class(TFModelo)
    SE1: TSpeedButton;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    dtpData: TDateTimePicker;
    DBEdit18: TDBEdit;
    dsRomanPro: TDataSource;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    frmPesquisaVariedade: TfrmPesquisa;
    GroupBox5: TGroupBox;
    frmPesquisaProdutor: TfrmPesquisa;
    GroupBox9: TGroupBox;
    frmPesquisaLocal: TfrmPesquisa;
    btnImportar: TButton;
    GroupBox7: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox10: TGroupBox;
    meLote: TMaskEdit;
    DBRadioGroup4: TDBRadioGroup;
    cdsRomanPro: TFDQuery;
    cdsRomanProLANCIT: TIntegerField;
    cdsRomanProLANC: TIntegerField;
    cdsRomanProPRODCOD: TIntegerField;
    cdsRomanProPRODDES: TStringField;
    cdsRomanProQTDEBIN: TBCDField;
    cdsRomanProPESOBRU: TBCDField;
    cdsRomanProPESOLIQ: TBCDField;
    cdsRomanProLOTEENTRA: TIntegerField;
    cdsRomanProSAFRA: TStringField;
    cdsRomanProREGLOG: TStringField;
    cdsRomanProREG_ID: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosLANC: TIntegerField;
    cdsDadosHORINI: TStringField;
    cdsDadosLOTE: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosFECHA: TStringField;
    cdsDadosHORFIM: TStringField;
    cdsDadosQTDEBIN: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosDATAFIN: TSQLTimeStampField;
    cdsDadosPESOPRO: TBCDField;
    cdsDadosPERCA: TBCDField;
    cdsDadosPEREC: TBCDField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    cdsDadosCODLOTECLASS: TStringField;
    cdsDadosLOCALCOD: TIntegerField;
    cdsDadosPRODUTORCOD: TIntegerField;
    cdsDadosOBS: TStringField;
    cdsDadosFGENVIAWEB: TStringField;
    cdsDadosQTDEMER: TBCDField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDadosZZPRODDES: TStringField;
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
    procedure cdsRomanProxBeforePost(DataSet: TDataSet);
    procedure cdsRomanProBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    xrAno: String;
    procedure pAbreDetalhe;
  public
    { Public declarations }
  end;

var
  FfrmRomanAbre: TFfrmRomanAbre;

implementation

{$R *.dfm}
uses Data, Rotina, Esteira, zModeloRel;

procedure TFfrmRomanAbre.pAbreDetalhe;
begin
  cdsRomanPro.Close;
  cdsRomanPro.Sql.Clear;
  cdsRomanPro.SQL.Add('select * from romanpro where lanc = 0'+cdsDados.FieldByName('Lanc').asString);
  cdsRomanPro.Open;
end;

procedure TFfrmRomanAbre.FormCreate(Sender: TObject);
begin
  inherited;
  xrAno := FormatDateTime('yyyy', Now);
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
var vlotevar: Integer;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDadosVarieCod.AsInteger := frmPesquisaVariedade.vpCodPrincipal;
    vlotevar := fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1);
    if (vlotevar  = 1) then
      cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',0,xrAno+Trim('0'+cdsDadosVarieCod.asString)) + 1
    else
    begin
      if (vlotevar  = 0) then
        cdsDadosLote.AsInteger := cdsDadosLanc.AsInteger;
    end;

    if cdsRomanPro.FieldByName('PesoBru').asFloat = 0 then
      cdsRomanPro.FieldByName('PesoBru').asFloat:= StrToFloatDef(frmPesquisaVariedade.vpCampo_1,0);

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
    pAbreDetalhe;
    frmPesquisaVariedade.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);

    //Se não mostrar produtor
    if (cdsDadosProdutorCod.AsInteger = 0) then
    begin
      if (not cdsRomanPro.Active) then
        cdsRomanPro.Open;
      cdsDados.Edit;
      cdsDadosProdutorCod.AsInteger := cdsRomanPro.FieldByName('ProdCod').asInteger;
    end;
    frmPesquisaProdutor.pRetornaDados(cdsDadosProdutorCod.AsString);

  end;
end;

procedure TFfrmRomanAbre.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaVariedade.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);

    //Se não mostrar produtor
    if (cdsDadosProdutorCod.AsInteger = 0) then
    begin
      pAbreDetalhe;
      if (not cdsRomanPro.Active) then
        cdsRomanPro.Open;
      cdsDados.Edit;
      cdsDadosProdutorCod.AsInteger := cdsRomanPro.FieldByName('ProdCod').asInteger;
    end;

    frmPesquisaProdutor.pRetornaDados(cdsDadosProdutorCod.AsString);

  end;
end;

procedure TFfrmRomanAbre.cdsRomanProxBeforePost(DataSet: TDataSet);
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
    dtpData.Date := cdsDadosDATA.AsDateTime;
    Application.ProcessMessages;
    //if (FormatDateTime('mm/yyyy', cdsDadosData.AsDateTime) <> FormatDateTime('mm/yyyy', Date))  then
    //  frPerg('Data mês e ano,'+#13+'diferente da atual!', 'OK');
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
  cdsDadosDATA.AsDateTime := dtpData.Date;
end;

procedure TFfrmRomanAbre.cdsRomanProBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanProLanc.asInteger   = 0 then cdsRomanProLanc.asInteger := cdsDados.FieldByName('Lanc').asInteger;
  if cdsRomanProLancit.asInteger = 0 then cdsRomanProLancit.asInteger := frGenerator('ROMANPRO','LANCIT',1);
  if cdsRomanProREG_ID.asInteger = 0 then cdsRomanProREG_ID.asInteger := frGeneratorFB('GEN_ROMANPRO_ID');
end;

procedure TFfrmRomanAbre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FEsteira.tmLeitor.Enabled := True;
  FEsteira.edCodigo.Text := '';
  FEsteira.fLoteArquivo;
  FEsteira.fLoteLeitura;
  FEsteira.pInserirEstoque(0);
end;

procedure TFfrmRomanAbre.sbIncluirClick(Sender: TObject);
var vlot: Integer;
begin
{  Case TComponent(Sender).Tag of
    13,14: if cdsDadosFecha.AsString = 'S' then
           begin
             frPerg('Esse lote já foi fechado.', 'OK');
             //Abort;
           end;
  End;
}
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
          cdsDados.Append;
          cdsDadosLanc.AsInteger     := frGenerator('ROMAN','LANC',1);
          cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ROMAN_ID');
          cdsDadosData.AsDateTime    := Date;
          cdsDadosHorIni.asString    := FormatDateTime('HH:MM', Time);
          cdsDadosSafra.AsString     := FormatDateTime('yyyy', Now);
          cdsDadosFecha.AsString     := 'N';
          frmPesquisaVariedade.pLimpaCampo;
          frmPesquisaProdutor.pLimpaCampo;
          frmPesquisaLocal.pLimpaCampo;

          cdsDadosLocalCod.asInteger := 1;
          frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);
          cdsDadosLote.AsInteger     := cdsDadosLanc.AsInteger;

          DBEdit15.SetFocus;

          //cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',1,xAno+Trim('0'+cdsDadosVarieCod.asString));
          //frmPesquisaVariedade.edtPesquisa.SetFocus;
        end;
     13:begin
          cdsDados.Edit;
          cdsRomanPro.Edit;
          DBEdit16.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           //cdsDadosFECHA.AsString  := 'S';
           cdsDados.Post;
           cdsDados.ApplyUpdates(0);
         end;
     15: begin
           try
              if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
              begin
                vlot := frGenerator('ROMAN','LOTE',0,xrAno+Trim('0'+cdsDadosVarieCod.asString)) + 1;
                if cdsDadosLote.AsInteger = vlot then
                  cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',1,xrAno+Trim('0'+cdsDadosVarieCod.asString));
              end;

              cdsDadosVarieCod.AsInteger := frmPesquisaVariedade.vpCodPrincipal;
              cdsDadosVarieDes.AsString  := frmPesquisaVariedade.vpDescricao;
              cdsDadosProdutorCod.AsInteger := frmPesquisaProdutor.vpCodPrincipal;
              cdsDadosLocalCod.AsInteger := frmPesquisaLocal.vpCodPrincipal;
              if cdsDadosLocalCod.asInteger < 1 then
                cdsDadosLocalCod.asInteger := 1;

              cdsDadosEmpreCod.asInteger   := xEmp;
              cdsDadosAcesoCod.asInteger   := xAcesso;
              cdsDados.Post;
              cdsDados.ApplyUpdates(-1);

              //Se tiver informado o produtor vai lançar no detalhe
              if (cdsDadosProdutorCod.AsInteger > 0) then
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

                cdsRomanPro.FieldByName('ProdCod').asInteger  := cdsDadosProdutorCod.AsInteger;
                cdsRomanPro.FieldByName('ProdDes').Text       := frmPesquisaProdutor.vpDescricao;
                cdsRomanPro.FieldByName('LOTEENTRA').asString := Trim(meLote.Text);

                cdsRomanPro.Post;
                cdsRomanPro.ApplyUpdates(-1);

              end;

//              if frPerg('Deseja enviar para esteira/produção?') then
//                SE1.OnClick(SE1);
        except
             on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           cdsDados.Cancel;
           pLiberar('Geral');
         end;
     91,92: pAbreDetalhe;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmRomanAbre.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  cdsDados.SQL.Clear;
  cdsDados.SQL.Add('select roman.*, cadforne.descricao as ZZProdDes');
  cdsDados.SQL.Add('  from roman');
  cdsDados.SQL.Add('  left join cadforne on cadforne.codigo = roman.produtorcod');
  cdsDados.SQL.Add('  where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmRomanAbre.SE1Click(Sender: TObject);
var vconf,varr:String; vArq:TextFile;
begin
{  if cdsDadosFecha.AsString = 'S' then
  begin
    frPerg('Esse lote já foi fechado!', 'OK');
    Abort;
  end;
}
  if frPerg(PChar('Deseja Abrir ESTEIRA -> 01'+#13+
                  'Lote nº '+cdsDadosLote.asString)) then
  begin
    try
      vconf := xdirSi+'DADOS\Config'+xBDConexao+'.INI';
      DeleteFile(vconf);
      AssignFile(varq,xdirsi+'DADOS\Config'+xBDConexao+'.INI');
      Rewrite(varq);
      Writeln(varq,'Lote     ='+cdsDadosLote.Text);
      Writeln(varq,'Codigo   ='+cdsDadosVarieCod.Text);
      Writeln(varq,'Variedade='+cdsDadosVarieDes.Text);
      Writeln(varq,'Registro ='+cdsDadosLanc.Text);
      Writeln(varq,'LoteClass='+cdsDadosCodLoteClass.Text);
      Writeln(varq,'Data     ='+cdsDadosDATA.AsString);
      Writeln(varq,'DataVal  ='+DateToStr(cdsDadosDATA.AsDateTime + 15));
      CloseFile(varq);

      //Ajusta dados tela

      FEsteira.edLinha1.Text  := cdsDadosDATA.AsString;
      FEsteira.edLinha11.Text := DateToStr(cdsDadosDATA.AsDateTime + 15);

      if (Trim(cdsDadosCodLoteClass.Text) <> '') then
        FEsteira.edLote.Text   := cdsDadosCodLoteClass.Text;
      if (cdsDadosProdutorCod.AsInteger > 0) then
      begin
        if fTra(1,['Select Descricao,Cpf From CadForne Where Codigo=0'+Trim(cdsDadosProdutorCod.Text)],1) then
        begin
          FEsteira.edLinha3.Text := dm.qrSqlTra.Fields[0].Text;
          FEsteira.edLinha4.Text := dm.qrSqlTra.Fields[1].Text;
        end;
      end;

      dm.pCriarTabelaEsteira(cdsDadosVarieCod.Text, cdsDadosLanc.Text);
      sleep(200);
      dm.pCriarTabelaEsteira(cdsDadosVarieCod.Text, cdsDadosLanc.Text);

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

    xTotal := 0;
    FEsteira.TMudou.Enabled := True;

    Close;

  end;
end;

procedure TFfrmRomanAbre.btnImportarClick(Sender: TObject);
var vlanc, vloteent: Integer;
begin
  inherited;

  vloteent := StrToIntDef(Trim(meLote.Text),0);

  if (vloteent <> 0) then
  begin

    if not frPerg(PChar('Importar romaneio de entrada'+#13+'nº '+IntToStr(vloteent))) then
      exit;

    if fTra(1,['Select Lanc, ProdCod, ProdDes, Qtde, BinsLiq, LocalCod From EntRE Where Recibo=0'+IntToStr(vloteent)],1) then
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
      cdsRomanPro.FieldByName('ProdCod').Value      :=dm.qrSqlTra.Fields[1].Value;
      cdsRomanPro.FieldByName('ProdDes').Text       :=dm.qrSqlTra.Fields[2].Text;
      cdsRomanPro.FieldByName('LOTEENTRA').asString := IntToStr(vloteent);
      cdsRomanPro.FieldByName('QTDEBIN').asFloat    := dm.qrSqlTra.Fields[3].asFloat;
      if dm.qrSqlTra.Fields[3].asFloat > 0 then
        cdsRomanPro.FieldByName('PesoBru').asFloat:=fTransfx(dm.qrSqlTra.Fields[4].asFloat/dm.qrSqlTra.Fields[3].asFloat,2);

      cdsDadosProdutorCod.AsString := dm.qrSqlTra.Fields[1].Text;
      cdsDadosLocalCod.AsString    := dm.qrSqlTra.Fields[5].Text;
      cdsDadosObs.AsString         := 'Lote de entrada '+ IntToStr(vloteent);

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
      ShowMessage('Romaneio de entrada não encontrado!');
      Abort;
    end;
  end;

end;


end.
