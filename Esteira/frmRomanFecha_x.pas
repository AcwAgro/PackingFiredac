unit frmRomanFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, ShellApi, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP;

type
  TFfrmRomanFecha = class(TFModelo)
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
    dsRomanMer: TDataSource;
    cdsRomanMer: TClientDataSet;
    dspRomanMer: TDataSetProvider;
    sqlRomanMer: TQuery;
    dsRomanPro: TDataSource;
    cdsRomanPro: TClientDataSet;
    dspRomanPro: TDataSetProvider;
    sqlRomanPro: TQuery;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    dtpDataFin: TDateTimePicker;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    sqlRomanProLANC: TIntegerField;
    sqlRomanProPRODCOD: TIntegerField;
    sqlRomanProPRODDES: TStringField;
    sqlRomanProQTDEBIN: TFloatField;
    sqlRomanProPESOBRU: TFloatField;
    sqlRomanProPESOLIQ: TFloatField;
    sqlRomanProLOTEENTRA: TIntegerField;
    sqlRomanProLANCIT: TIntegerField;
    sqlRomanProSAFRA: TStringField;
    cdsRomanProLANC: TIntegerField;
    cdsRomanProPRODCOD: TIntegerField;
    cdsRomanProPRODDES: TStringField;
    cdsRomanProQTDEBIN: TFloatField;
    cdsRomanProPESOBRU: TFloatField;
    cdsRomanProPESOLIQ: TFloatField;
    cdsRomanProLOTEENTRA: TIntegerField;
    cdsRomanProLANCIT: TIntegerField;
    cdsRomanProSAFRA: TStringField;
    sqlRomanMerLANC: TIntegerField;
    sqlRomanMerPRODCOD: TIntegerField;
    sqlRomanMerPRODDES: TStringField;
    sqlRomanMerUNIDADE: TStringField;
    sqlRomanMerQTDE: TFloatField;
    sqlRomanMerCODIAUX: TIntegerField;
    sqlRomanMerCALIBRE: TIntegerField;
    sqlRomanMerPESOLIQ: TFloatField;
    sqlRomanMerPESOREAL: TFloatField;
    sqlRomanMerLANCIT: TIntegerField;
    sqlRomanMerSAFRA: TStringField;
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
    GroupBox2: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit7: TDBEdit;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    sqlDadosCODLOTECLASS: TStringField;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosCODLOTECLASS: TStringField;
    cdsDadosLOCALCOD: TIntegerField;
    Sb: TStatusBar;
    pbBarra: TProgressBar;
    sqlDadosFGENVIAWEB: TStringField;
    cdsDadosFGENVIAWEB: TStringField;
    sbRastrear: TSpeedButton;
    sqlRomanMerLANCMANUAL: TStringField;
    cdsRomanMerLANCMANUAL: TStringField;
    IdFTP1: TIdFTP;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpDataFinChange(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsRomanProBeforePost(DataSet: TDataSet);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Integer);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Integer);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);

    procedure sbRastrearClick(Sender: TObject);

   private
    { Private declarations }
//    IdFTP1: TIdFTP;

    procedure fSomaBin;
    procedure fClassifacao(vTip:Boolean; vLanc:Integer);
    procedure fFechamento;
    procedure fSomaPeso;

    procedure pEnviaRastrear;
    function  pCriaArquivo(vpasta, varquivo, varquivoAnt:String):Boolean;
    function  pEnviaArquivoAtu(vde, vparaAtu, varquivo:String):Boolean;
    procedure pDeletaArquivo(vpasta, varquivo:String);

  public
    { Public declarations }
    AbortTransfer: Boolean;
    TransferrignData: Boolean;
    BytesToTransfer: LongWord;
    STime: TDateTime;
    xDirFtpAtu, xDirFtpAnt, xcpfcnpj, xanoant, xanoatu: String;
  end;

var
  FfrmRomanFecha: TFfrmRomanFecha;

implementation

{$R *.dfm}
uses Data, Rotina, zModeloRel, Pesq, frmRomanAbre, Esteira;

var
  AverageSpeed: Double = 0;

procedure TFfrmRomanFecha.FormCreate(Sender: TObject);
begin
  inherited;

  xDirFtpAnt := '/sistemas/rastrear/';
  xDirFtpAtu := '/';

{  IdFTP1 :=  TIdFTP.Create(Self);
  IdFTP1.AutoLogin := True;
  IdFTP1.AUTHCmd   := tAuto;
  IdFTP1.Passive   := true;
  IdFTP1.TransferType [ftBinary];
}
  IdFTP1.Host     := fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpHost')],1);
  IdFTP1.Password := 'Acweb#1974';
  IdFTP1.Username := fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpUser')],1);
  IdFTP1.Port := StrToIntDef(fBus(1,['Select Valor From xParametro Where Parametro = '+QuotedStr('ftpPorta')],1),21);


  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomanFecha.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomanFecha.cdsRomanProBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanPro.FieldByName('Lanc').asInteger = 0 then
    cdsRomanPro.FieldByName('Lanc').asInteger := cdsRomanPro.FieldByName('Lanc').asInteger;
  if cdsRomanPro.FieldByName('Lancit').asInteger = 0 then
    cdsRomanPro.FieldByName('Lancit').asInteger := frGenerator('ROMANPRO','LANCIT',1);
end;

procedure TFfrmRomanFecha.dbDadosDrawColumnCell(Sender: TObject;
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

procedure TFfrmRomanFecha.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (vkey = 13) then
  begin
    dtpDataFin.Date := cdsDadosDATAFIN.Value;
    Application.ProcessMessages;
    if (FormatDateTime('mm/yyyy', cdsDadosDataFin.AsDateTime) <> FormatDateTime('mm/yyyy', Date))  then
      frPerg('Data mês e ano,'+#13+'diferente da atual!', 'OK');
  end;
end;

procedure TFfrmRomanFecha.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
  sbIncluirClick(sbSalvar);
end;

procedure TFfrmRomanFecha.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsRomanPro.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsRomanPro.FieldByName('QtdeBin').Text,1,3)='999' then begin
           cdsRomanPro.Delete; DBEdit5.SetFocus; fSomaBin; Abort;
         end;
         if cdsRomanPro.FieldByName('QtdeBin').asInteger=0 then begin ShowMessage('Opção Inválida!'); Abort; end;
       end;
    1: begin
         //Se nao tiver lote de entrada -> Joga valor peso bruto
         if cdsRomanPro.FieldByName('LoteEntra').asInteger <> 0 then
         begin
           if fTra(1,['Select ProdCod,ProdDes,Qtde,BinsLiq From EntRE Where Recibo=0'+cdsRomanPro.FieldByName('LoteEntra').Text],1) then
           begin
             cdsRomanPro.FieldByName('ProdCod').Value  :=dm.qrSqlTra.Fields[0].Value;
             cdsRomanPro.FieldByName('ProdDes').Text   :=dm.qrSqlTra.Fields[1].Text;
             if dm.qrSqlTra.Fields[2].asFloat > 0 then
               cdsRomanPro.FieldByName('PesoBru').asFloat:=dm.qrSqlTra.Fields[3].asFloat/dm.qrSqlTra.Fields[2].asFloat;
           end else begin
             ShowMessage('Romaneio não encontrado!');
             Abort;
           end;
         end;
       end;
    2: begin
         cdsRomanPro.FieldByName('PesoLiq').asFloat := cdsRomanPro.FieldByName('QtdeBin').asFloat*cdsRomanPro.FieldByName('PesoBru').asFloat;
       end;
    3: begin
         if fTra(1,['Select Descricao From CadForne Where Codigo=0'+cdsRomanPro.FieldByName('ProdCod').Text],1) then
         begin
            cdsRomanPro.FieldByName('ProdDes').Text:=dm.qrSqlTra.Fields[0].Text;
         end else begin
            FPQForneCooper;
            cdsRomanPro.FieldByName('ProdCod').asString := xpqResul;
            Abort;
         end;
         cdsRomanPro.Post; cdsRomanPro.Next;
         if cdsRomanPro.Eof then cdsRomanPro.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmRomanFecha.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  cdsRomanPro.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmRomanFecha.DBGrid1Exit(Sender: TObject);
begin
  if (sbSalvar.Visible) then fSomaBin;
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmRomanFecha.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>5 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmRomanFecha.dtpDataFinChange(Sender: TObject);
begin
  inherited;
  cdsDadosDATAFin.Value := dtpDataFin.Date;
end;

procedure TFfrmRomanFecha.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsRomanPro.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsRomanPro.Delete;
end;

procedure TFfrmRomanFecha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

//  IdFTP1.Free;

//  FreeAndNil(FfrmRomanFecha);

end;

procedure TFfrmRomanFecha.sbIncluirClick(Sender: TObject);
var vlanc: Integer; vArq:TextFile;
begin
  if TComponent(Sender).Tag = 12 then exit;
  Case TComponent(Sender).Tag of
    13,14: if cdsDadosFecha.AsString = 'S' then
           begin
             frPerg('Esse lote já foi fechado.', 'OK');
             Abort;
           end;
  End;

  inherited;
  Case TComponent(Sender).Tag of
     13: begin
          cdsDados.Edit;
          if Trim(cdsDadosHorFim.Text) = '' then
          begin
             cdsDadosHorFim.Text  := TimeToStr(Now);
             cdsDadosDataFin.Text := DateToStr(Now);
          end;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
         end;
     15: begin
          try
            fSomaBin;
            vlanc := cdsDadosLanc.AsInteger;
            cdsDadosEmpreCod.asInteger := 1;
            cdsDadosAcesoCod.asInteger := 1;
            cdsDados.Post;
            fFechamento;

            if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''RASTREAR'''],1) = 1) then
              pEnviaRastrear;

            sbPeriodo.onclick(sbPeriodo);
            cdsDados.Locate('Lanc', vlanc, []);

            //Verifica se está fechado a que está na esteira.
            if (IntToStr(vlanc) = xvLan) then
            begin
              xFechado := 'S';

              if fileexists(xdirsi+'DADOS\MUDOU.INI') then
              begin
                DeleteFile(xdirini+'DADOS\MUDOU.INI');
                Sleep(300);
              end;

              AssignFile(varq,xdirsi+'DADOS\MUDOU.INI');
              Rewrite(varq);
              Writeln(varq,'Lote     ='+xvLan);
              CloseFile(varq);
            end;

            frForm(TFfrmRomanAbre, FfrmRomanAbre);

            Close;

          except
            //frPerg('Erro salvando dados!', 'OK');
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

procedure TFfrmRomanFecha.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from roman where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)+' order by data desc');
  cdsDados.Open;
  cdsRomanPro.Open;
end;

procedure TFfrmRomanFecha.sbRastrearClick(Sender: TObject);
begin
  inherited;

  pEnviaRastrear;

end;

procedure TFfrmRomanFecha.fSomaBin;
var vqtd: Double;
begin
  vqtd := 0;
  cdsRomanPro.First;
  while not cdsRomanPro.Eof do
  begin
    vqtd := vqtd + cdsRomanProQtdeBin.asFloat;

    if (cdsRomanPro.FieldByName('PesoLiq').asFloat = 0) then
    begin

      cdsRomanPro.Edit;
      cdsRomanPro.FieldByName('PesoLiq').asFloat := cdsRomanPro.FieldByName('QtdeBin').asFloat*cdsRomanPro.FieldByName('PesoBru').asFloat;
      cdsRomanPro.Post;

    end;

    cdsRomanPro.Next;
  end;
  cdsRomanPro.First;
  cdsDadosQtdeBin.asFloat := vqtd;
end;

procedure TFfrmRomanFecha.IdFTP1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  inherited;
  SB.Panels[2].Text := aStatusText;
end;

procedure TFfrmRomanFecha.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Integer);
Var
  S: String;
  TotalTime: TDateTime;
  H, M, Sec, MS: Word;
  DLTime: Double;
begin
  pbBarra.Visible := True;
  TotalTime :=  Now - STime;
  DecodeTime(TotalTime, H, M, Sec, MS);
  Sec := Sec + M * 60 + H * 3600;
  DLTime := Sec + MS / 1000;
  if DLTime > 0 then
    AverageSpeed := (AWorkCount / 1024) / DLTime;

  if AverageSpeed > 0 then begin
    Sec := Trunc(((pbBarra.Max - AWorkCount) / 1024) / AverageSpeed);

    S := Format('%2d:%2d:%2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);
    S := 'Tempo restante: ' + S;
  end
  else S := '';
  SB.Panels[0].Text := s;

  S := FormatFloat('0.00 KB/s', AverageSpeed);
  case AWorkMode of
    wmRead: SB.Panels[1].Text := S;
    wmWrite: SB.Panels[1].Text := S;
  end;

  if AbortTransfer then IdFTP1.Abort;

  pbBarra.Position := AWorkCount;
  AbortTransfer := false;
  Application.ProcessMessages;
end;

procedure TFfrmRomanFecha.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Integer);
begin
  inherited;
  TransferrignData := true;
  AbortTransfer := false;
  STime := Now;
  if AWorkCountMax > 0 then pbBarra.Max := AWorkCountMax
  else pbBarra.Max := BytesToTransfer;
  AverageSpeed := 0
end;

procedure TFfrmRomanFecha.IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  inherited;
  SB.Panels[0].Text := '';
  SB.Panels[1].Text := '';
  BytesToTransfer := 0;
  TransferrignData := false;
  pbBarra.Position := 0;
  AverageSpeed := 0;
  pbBarra.Visible := False;
end;

procedure TFfrmRomanFecha.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsRomanPro.Append;
  dbGrid1.SetFocus;
end;

procedure TFfrmRomanFecha.fFechamento;
var vdados:String;
    vlanc: Integer;
begin
  if not frPerg(pchar('Deseja fazer o fechamento do lote?')) then exit;
  //if not frPerg('Tem certeza?') then exit;
  try

    //Verifica antigo primeiro
    vdados := 'Esteira'+ 'V'+frPree(cdsDadosVarieCod.Text,2,'0',0)
                       + 'L'+frPree(cdsDadosLanc.Text,4,'0',0);

    dm.TExiste.Close;
    dm.TExiste.TableName := vdados;
    if dm.TExiste.Exists then
    begin
      dm.TExiste.Close;
    end
    else begin
      vdados := 'EsteiraC'+frPree(cdsDadosVarieCod.Text,3,'0',0);
      dm.TExiste.Close;
      dm.TExiste.TableName := vdados;
      if not dm.TExiste.Exists then
      begin

        Showmessage('Tabela não encontrada!');
        exit;

      end;
    end;

    if not cdsRomanMer.Active then cdsRomanMer.Open;

    cdsDados.Edit;
    vlanc := cdsDadosLanc.AsInteger;
    try
      fProc(1,['Select Codigo, Sum(Qtde) as vqtd ',
                '  From '+vdados,
                ' Where Lote = 0'+Trim(cdsDadosLote.AsString),
                ' Group By Lote, Codigo'],4);
      try
        //Excluir somente o que nao e manual
        fSql(1,['Delete From RomanMer Where Lanc=0'+cdsDadosLanc.Text + ' and LancManual <> '+QuotedStr('M')],1);

        cdsRomanMer.Close;
        cdsRomanMer.Open;
        while not dm.qrProc1.Eof do
        begin
          fSql(2,['Select CodVelho, Codigo, Descricao, Calibre, PesoLiq',
                    '  From Cadprodu',
                    ' Where Codigo='+dm.qrProc1.FieldByName('Codigo').Text],3);
          if dm.qrSql2.RecordCount>0 then
          begin
            cdsRomanMer.Append;
            cdsRomanMerLanc.asInteger   :=cdsDadosLanc.asInteger;
            cdsRomanMerLancit.asInteger :=frGenerator('ROMANMER','LANCIT',1);
            cdsRomanMerCodiAux.asInteger:=dm.qrSql2.FieldByName('CodVelho').asInteger;
            cdsRomanMerProdCod.Value    :=dm.qrSql2.FieldByName('Codigo').Value;
            cdsRomanMerProdDes.Text     :=dm.qrSql2.FieldByName('Descricao').Text;
            cdsRomanMerCalibre.asFloat  :=dm.qrSql2.FieldByName('Calibre').asFloat;
            cdsRomanMerPesoLiq.asFloat  :=dm.qrSql2.FieldByName('PesoLiq').asFloat;
            cdsRomanMerQtde.asFloat     :=dm.qrProc1.FieldByName('vqtd').asFloat;
            cdsRomanMerLancManual.asString := 'E';
            cdsRomanMer.Post;
          end;
          dm.qrProc1.Next;
        end;
        fSomaPeso;
        cdsRomanMer.ApplyUpdates(0);
      except
        frPerg('Erro ao salvar Produtos!', 'OK');
      end;
    except
      frPerg('Erro ao salvar Produtores!', 'OK');
    end;
    cdsDados.Edit;
    cdsDadosFecha.AsString := 'S';
    cdsDados.Post;
    cdsDados.ApplyUpdates(0);

    cdsRomanPro.Edit;
    cdsRomanPro.Post;
    cdsRomanPro.ApplyUpdates(0);

    fClassifacao(True, vlanc);

  except
    frPerg('Erro ao importa lote da esteira!', 'OK');
  end;
end;

procedure TFfrmRomanFecha.fSomaPeso;
var vdif, vpesoliq, vpesopro, vpesobru, vpesoreal: double;
begin
  if (cdsdados.State in [dsInsert, dsEdit]) then
  begin
    vpesoliq := 0;
    vpesopro := 0;
    vpesobru := 0;
    cdsRomanPro.First;
    while not cdsRomanPro.Eof do
    begin
      vpesopro := vpesopro + cdsRomanProPesoLiq.asFloat;
      cdsRomanPro.Next;
    end;
    cdsDados.FieldByName('PesoPro').asFloat:=vpesopro;
    cdsRomanPro.First;

    if not cdsRomanMer.Active then cdsRomanMer.Open;

    cdsRomanMer.First;
    while not cdsRomanMer.Eof do
    begin
      vpesoliq := vpesoliq + (cdsRomanMerQtde.asFloat * cdsRomanMerPesoLiq.asFloat);
      cdsRomanMer.Next;
    end;
    cdsDados.FieldByName('PesoLiq').asFloat:=vpesoliq;

//    vdif := cdsDadosPesoPro.asFloat - cdsDadosPerca.asFloat - cdsDadosPesoLiq.asFloat;
    vdif := cdsDadosPesoPro.asFloat - cdsDadosPesoLiq.asFloat;
    if vdif < 0 then vdif := 0;
    if vpesoliq < 1 then vpesoliq := 1;

    cdsRomanMer.First;
    while not cdsRomanMer.Eof do
    begin
       cdsRomanMer.Edit;
       vpesoreal := (cdsRomanMerQtde.asFloat * cdsRomanMerPesoLiq.asFloat);
       cdsRomanMer.FieldbyName('PesoReal').asFloat:= vpesoreal + (vpesoreal * vdif / vpesoliq);
       vpesobru  := vpesobru + vpesoreal;
       cdsRomanMer.Post;
       cdsRomanMer.Next;
    end;
    cdsRomanMer.First;
    cdsDadosPesoBru.asFloat := vpesobru;
    cdsDadosPerca.asFloat   := cdsDadosPesoPro.asFloat - cdsDadosPesoLiq.asFloat;
    if cdsDadosPesoPro.asFloat > 0 then
      cdsDadosPerec.asFloat := cdsDadosPerca.asFloat / cdsDadosPesoPro.asFloat * 100;
  end;
end;

procedure TFfrmRomanFecha.fClassifacao(vTip:Boolean; vLanc:Integer);
var vper:Double; vlan,vfil:Integer; vtes:String;
begin
  try
    if (not cdsDados.Locate('lanc', vlanc, [])) then
      exit;

    fSql(1,['Delete From Classif Where Integra='+cdsDadosLanc.Text],1);
    fSql(1,['Delete From ClassifM Where Integra='+cdsDadosLanc.Text],1);
    if vtip then
    begin
      dm.TClassif.Open;
      dm.TClassifMer.Open;
      fSql(1,['Select Max(Lanc) From Classif'],1);
      vlan:=dm.qrSql1.Fields[0].asInteger;
      cdsRomanPro.First;
      while not cdsRomanPro.Eof do
      begin
        if cdsDadosQtdeBin.asFloat > 0 then
          vper:=cdsRomanPro.FieldByName('QtdeBin').asFloat/cdsDadosQtdeBin.asFloat
        else
          vper := 1;
        vlan:=vlan+1;
        dm.TClassif.Append;
{        for vfil:=0 to cdsDados.FieldCount-1 do begin
          vtes:=cdsDados.Fields[vfil].FieldName;
          dm.TClassif.FieldByName(vtes).Value:=cdsDados.FieldByName(vtes).Value;
        end;}
        dm.TClassif.FieldByName('Lanc').asInteger    :=vlan;
        dm.TClassif.FieldByName('Integra').asInteger :=cdsDados.FieldByName('Lanc').asInteger;
        dm.TClassif.FieldByName('Safra').asString    :=cdsDados.FieldByName('Safra').AsString;
        dm.TClassif.FieldByName('Codigo').asInteger  :=cdsRomanPro.FieldByName('ProdCod').asInteger;
        dm.TClassif.FieldByName('Descricao').asString:=cdsRomanPro.FieldByName('ProdDes').asString;
        dm.TClassif.FieldByName('QtdeBin').asFloat   :=cdsRomanPro.FieldByName('QtdeBin').asFloat;
        dm.TClassif.FieldByName('PesoPro').asFloat   :=fTransfx(cdsDados.FieldByName('PesoPro').asFloat*vper,3);
        dm.TClassif.FieldByName('PesoLiq').asFloat   :=fTransfx(cdsDados.FieldByName('PesoLiq').asFloat*vper,3);
        dm.TClassif.FieldByName('PesoBru').asFloat   :=fTransfx(cdsDados.FieldByName('PesoBru').asFloat*vper,3);
        dm.TClassif.FieldByName('Perec').asFloat     :=fTransfx(cdsDados.FieldByName('Perec').asFloat*vper,3);
        dm.TClassif.FieldByName('Perca').asFloat     :=fTransfx(cdsDados.FieldByName('Perca').asFloat*vper,3);

        dm.TClassif.FieldByName('Data').Value        :=cdsDados.FieldByName('Data').Value;
        dm.TClassif.FieldByName('Datafin').Value     :=cdsDados.FieldByName('Datafin').Value;
        dm.TClassif.FieldByName('Horini').asString   :=cdsDados.FieldByName('Horini').asString;
        dm.TClassif.FieldByName('Horfim').asString   :=cdsDados.FieldByName('Horfim').asString;
        dm.TClassif.FieldByName('Fecha').asString    :=cdsDados.FieldByName('Fecha').asString;
        dm.TClassif.FieldByName('Safra').asString    :=cdsDados.FieldByName('Safra').asString;
        dm.TClassif.FieldByName('Variecod').asInteger:=cdsDados.FieldByName('Variecod').asInteger;
        dm.TClassif.FieldByName('Localcod').asInteger:=cdsDados.FieldByName('Localcod').asInteger;
        dm.TClassif.FieldByName('Emprecod').asInteger:=cdsDados.FieldByName('Emprecod').asInteger;
        dm.TClassif.FieldByName('AcesoCod').asInteger:=cdsDados.FieldByName('Acesocod').asInteger;
        dm.TClassif.FieldByName('Codloteclass').asString:=cdsDados.FieldByName('Codloteclass').asString;
//        dm.TClassif.FieldByName('Tipocod').asInteger :=cdsDados.FieldByName('Tipocod').asInteger;
//        dm.TClassif.FieldByName('Tipodes').asString  :=cdsDados.FieldByName('Tipodes').asString;
//        dm.TClassif.FieldByName('Variedes').asString :=cdsDados.FieldByName('Variedes').asString;
//        dm.TClassif.FieldByName('Pesoajus').asFloat  :=cdsDados.FieldByName('Pesoajus').asFloat;

        dm.TClassif.Post;
        if not cdsRomanMer.Active then cdsRomanMer.Open;
        cdsRomanMer.First;
        while not cdsRomanMer.Eof do
        begin
          dm.TClassifMer.Append;
          dm.TClassifMer.FieldByName('Lanc').asInteger    :=vlan;
          dm.TClassifMer.FieldByName('Integra').asInteger :=cdsDados.FieldByName('Lanc').asInteger;
          dm.TClassifMer.FieldByName('Lote').asInteger    :=cdsDados.FieldByName('Lote').asInteger;
          dm.TClassifMer.FieldByName('Safra').asString    :=cdsDados.FieldByName('Safra').AsString;
          dm.TClassifMer.FieldByName('CodiAux').asInteger :=cdsRomanMer.FieldByName('CodiAux').asInteger;
          dm.TClassifMer.FieldByName('ProdCod').asInteger :=cdsRomanMer.FieldByName('ProdCod').asInteger;
          dm.TClassifMer.FieldByName('ProdDes').asString  :=cdsRomanMer.FieldByName('ProdDes').asString;
          dm.TClassifMer.FieldByName('Calibre').asString  :=cdsRomanMer.FieldByName('Calibre').asString;
          dm.TClassifMer.FieldByName('QtdeEnt').asFloat   :=fTransfx(cdsRomanMer.FieldByName('Qtde').asFloat*vper,3);
//          dm.TClassifMer.FieldByName('PesoReal').asFloat  :=cdsRomanMer.FieldByName('PesoReal').asFloat*vper;
          dm.TClassifMer.FieldByName('PesoReal').asFloat  :=fTransfx((cdsRomanMer.FieldByName('Qtde').asFloat*vper) * cdsRomanMer.FieldByName('PesoLiq').asFloat,3);
          dm.TClassifMer.Post;
          cdsRomanMer.Next;
        end;
        cdsRomanPro.Next;
      end;
      dm.TClassif.First;
      dm.TClassifMer.First;
      dm.TClassif.Close;
      dm.TClassifMer.Close;
    end;
  except
    frPerg('Erro ao salvar classif.!', 'OK');
  end
end;

procedure TFfrmRomanFecha.pEnviaRastrear;
var vqrcode,vqrcodeAnt,xanomes: String;
    vresult: Boolean;
    vlanc: Integer;
begin

  if cdsDados.RecordCount > 0 then
    if not frPerg('Deseja Enviar informações para WEB ?') then
      Exit;

  //Criando processo de envio para WEB Rastreamento.

  try

    vlanc := cdsDadosLanc.AsInteger;

    if not cdsRomanMer.Active then cdsRomanMer.Open;

    if IdFTP1.Connected then
    begin
      try
        if TransferrignData then IdFTP1.Abort;
        IdFTP1.Quit;
      finally
        IdFTP1.Disconnect;
      end
    end;

    IdFTP1.Connect;
    if IdFTP1.Connected then
    begin

//      fBar(0,cdsRomanMer.RecordCount,'Rastreamento WEB');
      cdsDados.Locate('Lanc', vlanc, []);

      xcpfcnpj := frSoNumero(dm.TEmpresa.FieldByName('cpf').asString);
      if trim(xcpfcnpj) = '' then
        xcpfcnpj := 'registro';

      xanomes := DateToStr(cdsDados.FieldByName('Data').Value);
      xanoant := Copy(xanomes, 7, 4) + Copy(xanomes, 4, 2);
      xanoatu := Copy(xanomes, 7, 4);

      vresult := True;

      cdsRomanMer.DisableControls;
      cdsRomanMer.First;
      while not cdsRomanMer.Eof do
      begin
//        fBar(1,1,'');
        // - Lote
        vqrcodeAnt := '';
        vqrcode := 'R'+cdsDadosLanc.asString;
        // - Codigo produto
        vqrcode := vqrcode + 'P'+cdsRomanMerPRODCOD.asString+'.html';

        if (Date < StrToDate('01/03/2020')) then
        begin
          // - Lote
          vqrcodeAnt := 'lt'+frPree(cdsDadosLanc.asString,9,'0',0);
          // - Codigo produto
          vqrcodeAnt := vqrcodeAnt + 'pr'+frPree(cdsRomanMerPRODCOD.asString,9,'0',0)+'.html';
        end;

        if pCriaArquivo(xdirsi+'rastrear'+xDBConexao+'\', vqrCode, vqrcodeAnt) then
        begin
          Sleep(100);

          //Normal
          if pEnviaArquivoAtu(xdirsi+'rastrear'+xDBConexao+'\', xanoatu+'/'+xcpfcnpj, vqrCode) then
          begin
            Sleep(100);
            pDeletaArquivo(xdirsi+'rastrear'+xDBConexao+'\', vqrCode);
          end
          else begin
            cdsRomanMer.Last;
            vresult := False;
          end;
        end
        else begin
          cdsRomanMer.Last;
          vresult := False;
        end;

        cdsRomanMer.Next;

      end;
  end;

  finally
    pbBarra.Visible := False;
    Application.ProcessMessages;
    IdFTP1.Disconnect;

//    fBar(2,0,'');
    cdsDados.Edit;
    if vresult then
    begin
      cdsDadosFGENVIAWEB.AsString := 'P';
      frPerg('Processo de envio finalizado!','OK');
    end
    else
      cdsDadosFGENVIAWEB.AsString := 'N';
    cdsDados.Post;
    cdsDados.applyUpdates(0);
    cdsRomanMer.EnableControls;
    cdsRomanMer.First;

  end;

end;

function TFfrmRomanFecha.pCriaArquivo(vpasta, varquivo, varquivoAnt:String):Boolean;
var varq: TextFile;
    vWebOrigem,vWebDestino: String;
    vcod_produtor, vi, vprodutoCod: Integer;
begin

  result := False;
  //verifica se existe o arquivo mapa.html no diretorio, caso exista deleta o mesmo
  if FileExists(vpasta+varquivo) then
    DeleteFile(vpasta+varquivo);

  if (Trim(varquivoAnt) <> '') then
  begin
    if FileExists(vpasta+varquivoAnt) then
      DeleteFile(vpasta+varquivoAnt);
  end;

  try
    try
      for vi := 1 to 2 do
      begin
        if vi = 2 then
          varquivo := varquivoAnt;

        if (Trim(varquivo) <> '') then
        begin

          AssignFile(varq, vpasta+varquivo);
          Rewrite(varq);

      //*** Cabeçalho
          //Writeln(varq, frAcenWeb('<html xmlns=''https://www.w3.org/1999/xhtml''>'));
          Writeln(varq, frAcenWeb('<html xmlns=''https://www.w3.org/1999/xhtml''>'));
          Writeln(varq, frAcenWeb('<head>'));
          Writeln(varq, frAcenWeb('	<meta https-equiv="Content-Type" content="text/html; charset=UTF-8" />'));

          if vi = 2 then
            Writeln(varq, frAcenWeb('	<link rel="stylesheet" media="screen" type="text/css" href="../../style.css"  />'))
          else
            Writeln(varq, frAcenWeb('	<link rel="stylesheet" media="screen" type="text/css" href="../style.css"  />'));

          Writeln(varq, frAcenWeb('	<title>ACWAgro - ACWAgro softwares para cooperativas e produtores rurais</title>'));

          Writeln(varq, frAcenWeb('	 <script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyBXT5DWBL5MjxLMZP6c27EV2JR5OJXIYRU&callback=initMap"></script>'));
          Writeln(varq, frAcenWeb('	 <script type="text/javascript" language="javascript">'));
          Writeln(varq, frAcenWeb('	 </script>'));

          Writeln(varq, frAcenWeb('  <div id="holder">'));
          Writeln(varq, frAcenWeb('    <div id="header">'));
          Writeln(varq, frAcenWeb('	    	<div id="menu_img_left"><p> <br /> </p>'));
          Writeln(varq, frAcenWeb('		  	  <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('		    </div>'));
          Writeln(varq, frAcenWeb('    </div>'));
          Writeln(varq, frAcenWeb('    <div class="clear"></div>'));
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('	    	<a href="https://www.acwagro.com.br" target="_blank">Visite o site www.acwagro.com.br</a>'));
          Writeln(varq, frAcenWeb('	   </div>'));
          Writeln(varq, frAcenWeb('    <div class="left">'));
          Writeln(varq, frAcenWeb('      <div class="content">'));
          Writeln(varq, frAcenWeb('	       <h1>Rastreamento produto da origem ao destino</h1>'));
          Writeln(varq, frAcenWeb('	     </div>'));

      //*** Empresa Distribuidor
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('	      <h2>Informações do Distribuidor</h2>'));
          Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Nome: '+dm.TEmpresa.FieldByName('Descricao').asString
                                                                     +' - '+dm.TEmpresa.FieldByName('CPF').asString
                                                                     +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Endereço: '+dm.TEmpresa.FieldByName('Endereco').asString
                                                                         +' '+dm.TEmpresa.FieldByName('Bairro').asString
                                                                         +' '+dm.TEmpresa.FieldByName('CidadeDes').asString
                                                                         +'/'+dm.TEmpresa.FieldByName('Estado').asString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('	 	  	<a><div id="linha"> Coordenada geográfica: '+dm.TEmpresa.FieldByName('WebLocal').asString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('	      <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('	   </div>'));

          if (Trim(dm.TEmpresa.FieldByName('WebLocal').asString) <> '') then
            vWebOrigem := dm.TEmpresa.FieldByName('WebLocal').asString
          else
            vWebOrigem := frMapaRetLocalExt('',
                               dm.TEmpresa.FieldByName('Endereco').asString,
                               dm.TEmpresa.FieldByName('Bairro').asString,
                               dm.TEmpresa.FieldByName('CidadeDes').asString,
                               dm.TEmpresa.FieldByName('Estado').asString);

      //*** Produtor
          cdsRomanPro.First;
          vcod_produtor := 0;
          while not cdsRomanPro.Eof do
          begin

            if (vcod_produtor <> cdsRomanProPRODCOD.asInteger) then
            begin
              vcod_produtor := cdsRomanProPRODCOD.asInteger;

              fSql(1,['Select descricao, endereco, bairro, cidadedes, estado, cpf, weblocal from cadforne where codigo = 0'+cdsRomanProPRODCOD.asString],1);
              Writeln(varq, frAcenWeb('    <div class="content">'));
              Writeln(varq, frAcenWeb('	     <h2>Informações da Origem</h2>'));
              Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Nome: '+dm.qrSql1.FieldByName('Descricao').asString
                                                                         +' - '+dm.qrSql1.FieldByName('CPF').asString
                                                                         +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('		  	<a><div id="linha"> Endereço: '+dm.qrSql1.FieldByName('Endereco').asString
                                                                             +', '+dm.qrSql1.FieldByName('Bairro').asString
                                                                             +' - '+dm.qrSql1.FieldByName('CidadeDes').asString
                                                                             +'/'+dm.qrSql1.FieldByName('Estado').asString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('	 	  	<a><div id="linha"> Coordenada geográfica: '+dm.qrSql1.FieldByName('WebLocal').asString
                                                                             +' </a><br /></div>'));
              Writeln(varq, frAcenWeb('	       <a href="#"> </a><br />'));

              if (Trim(dm.qrSql1.FieldByName('WebLocal').asString) <> '') then
                vWebDestino := dm.qrSql1.FieldByName('WebLocal').asString
              else
                vWebDestino := frMapaRetLocalExt('',
                                   dm.qrSql1.FieldByName('Endereco').asString,
                                   dm.qrSql1.FieldByName('Bairro').asString,
                                   dm.qrSql1.FieldByName('CidadeDes').asString,
                                   dm.qrSql1.FieldByName('Estado').asString);
            end;

            cdsRomanPro.Next;
          end;
          cdsRomanPro.First;

          //Produto
          fSql(1,['Select variedes, unidade, ncm, pesoliq from cadprodu where codigo = 0'+cdsRomanMerPRODCOD.asString],1);
          Writeln(varq, frAcenWeb('	     <h2>Informações sobre o Produto</h2>'));
          Writeln(varq, frAcenWeb('		   	 <a><div id="linha"> Descrição do produto: '+cdsRomanMerPRODDES.asString
                                                                                      +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Família/Cultivar: '+dm.qrSql1.FieldByName('VARIEDES').AsString
                                                                                  +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> NCM: '+dm.qrSql1.FieldByName('NCM').AsString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Quantidade do produto: '+FormatFloat('0',cdsRomanMerQTDE.asFloat)
                                                                                      +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Unidade: '+dm.qrSql1.FieldByName('UNIDADE').AsString
                                                                         +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Peso Líquido: '+FormatFloat('0.###',dm.qrSql1.FieldByName('PESOLIQ').asFloat)+' kg'
                                                                                      +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Identificação do lote: '+cdsDadosLOTE.asString
                                                                                       +' '+cdsDadosCODLOTECLASS.asString
                                                                                       +' </a><br /></div>'));
          Writeln(varq, frAcenWeb('			   <a><div id="linha"> Data de recebimento: '+DateToStr(cdsDadosDATA.Value)
                                                                                     +'</a><br /></div>'));
          Writeln(varq, frAcenWeb('	       <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('	   </div>'));

      //*** Mapa Distribuidor - Produtor
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('      <div style="padding:10px">'));
          Writeln(varq, frAcenWeb('            <iframe id="map" width="100%" height="50%"'));
          Writeln(varq, frAcenWeb('			          frameborder="0" scrolling="no"'));
          Writeln(varq, frAcenWeb('				       	marginheight="0"'));
          Writeln(varq, frAcenWeb('					      marginwidth="0"'));
          Writeln(varq, frAcenWeb('			          src="https://maps.google.com/maps?saddr='+vWebDestino+'&daddr='+vWebOrigem+'&amp;output=embed">'));
          Writeln(varq, frAcenWeb('			       </iframe>'));
          Writeln(varq, frAcenWeb('      </div>'));
          Writeln(varq, frAcenWeb('	     <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('	   </div>'));

      //*** Rodapé
          Writeln(varq, frAcenWeb('    <div class="content">'));
          Writeln(varq, frAcenWeb('     <h3>Whatsapp (41) 9.9255-7216 </h3>'));
          Writeln(varq, frAcenWeb('     <h3>ACW Desenvolvimento de Software Agronegócios Ltda  Curitiba - Paraná - Brasil </h3>'));
          Writeln(varq, frAcenWeb('     <h3>&copy; 2018 AcwAgronegócios - Todos os direitos reservados. </h3>'));
          Writeln(varq, frAcenWeb('     <a href="#"> </a><br />'));
          Writeln(varq, frAcenWeb('    </div>'));
          Writeln(varq, frAcenWeb('  </div>'));
          Writeln(varq, frAcenWeb(' </div>'));
          Writeln(varq, frAcenWeb(' </head>'));
          Writeln(varq, frAcenWeb('</html>'));
        end;
      end;

      result := True;

    except

      Result := False;

    end;
  finally
    //salva o arquivo Mapa.html no diretorio da Aplicação.
    CloseFile(varq);
  end;

end;

function TFfrmRomanFecha.pEnviaArquivoAtu(vde, vparaAtu, varquivo:String):Boolean;
var varqori, varqdes: String;
begin

  result := False;

  if FileExists(vde+varquivo) then
  begin
    try

      IdFTP1.ChangeDir(xDirFtpAtu+vparaAtu);
      varqori := vde+varquivo;
      varqdes := xDirFtpAtu+vparaAtu+'/'+varquivo;

      BytesToTransfer := IdFTP1.Size(varqori);
      IdFTP1.Put(varqori, varqdes);

      result := True;

    except
      try
        //Tem pasta Ano
        IdFTP1.ChangeDir(xDirFtpAtu+xAnoAtu);
        Sleep(500);
        //Cria pasta CNPJ
        IdFTP1.MakeDir(xDirFtpAtu+vparaAtu);
        Sleep(500);
      except
        //Não tem pasta Cnpj -> Cria e anomoe também
        try
          //Cria Ano
          IdFTP1.MakeDir(xDirFtpAtu+xAnoAtu);
          Sleep(500);
          //Cria CNPJ
          IdFTP1.MakeDir(xDirFtpAtu+vparaAtu);
          Sleep(500);
        except
        end;
      end;
    end;
  end;

end;

procedure TFfrmRomanFecha.pDeletaArquivo(vpasta, varquivo:String);
begin

  DeleteFile(vpasta+varquivo);

end;
end.

