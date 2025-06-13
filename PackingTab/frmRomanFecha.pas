unit frmRomanFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus;

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
    dsRomanEmb: TDataSource;
    cdsRomanEmb: TClientDataSet;
    dspRomanEmb: TDataSetProvider;
    sqlRomanEmb: TQuery;
    sqlDadosPRODUTORCOD: TIntegerField;
    cdsDadosPRODUTORCOD: TIntegerField;
    sqlRomanEmbLANCIT: TIntegerField;
    sqlRomanEmbLANC: TIntegerField;
    sqlRomanEmbEMBALCOD: TIntegerField;
    sqlRomanEmbEMBALDES: TStringField;
    sqlRomanEmbPRODCOD: TIntegerField;
    sqlRomanEmbPRODDES: TStringField;
    sqlRomanEmbQTDE: TIntegerField;
    sqlRomanEmbDATA: TDateTimeField;
    sqlRomanEmbEMPRECOD: TIntegerField;
    sqlRomanEmbACESOCOD: TIntegerField;
    cdsRomanEmbLANCIT: TIntegerField;
    cdsRomanEmbLANC: TIntegerField;
    cdsRomanEmbEMBALCOD: TIntegerField;
    cdsRomanEmbEMBALDES: TStringField;
    cdsRomanEmbPRODCOD: TIntegerField;
    cdsRomanEmbPRODDES: TStringField;
    cdsRomanEmbQTDE: TIntegerField;
    cdsRomanEmbDATA: TDateTimeField;
    cdsRomanEmbEMPRECOD: TIntegerField;
    cdsRomanEmbACESOCOD: TIntegerField;
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
  private
    { Private declarations }
    procedure fSomaBin;
    procedure fClassifacao(vTip:Boolean; vLanc:Integer);
    procedure fFechamento;
    procedure fSomaPeso;
  public
    { Public declarations }
  end;

var
  FfrmRomanFecha: TFfrmRomanFecha;

implementation

{$R *.dfm}
uses Data, Rotina, zModeloRel, Pesq, Esteira;

procedure TFfrmRomanFecha.FormCreate(Sender: TObject);
begin
  inherited;
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
    cdsRomanPro.FieldByName('Lanc').asInteger := cdsDados.FieldByName('Lanc').asInteger;
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
               cdsRomanPro.FieldByName('PesoBru').asFloat:=fTransfx(dm.qrSqlTra.Fields[3].asFloat/dm.qrSqlTra.Fields[2].asFloat,2);
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
  FEsteira.tmLeitor.Enabled := True;
  FreeAndNil(FfrmRomanFecha);
  FEsteira.pExecutar;
end;

procedure TFfrmRomanFecha.sbIncluirClick(Sender: TObject);
var vlanc: Integer;
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

          //Verifica se foi informado o produtor caso sim já aparecer na grid do produtor
          if (cdsDadosProdutorCod.AsInteger > 0) then
          begin
            if (cdsRomanPro.IsEmpty) then
            begin
              cdsRomanPro.Append;
              cdsRomanPro.FieldByName('QtdeBin').asInteger := 1;
              cdsRomanPro.FieldByName('ProdCod').asInteger := cdsDadosProdutorCod.AsInteger;
              cdsRomanPro.Post;
            end;
          end;

          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
         end;
     15: begin
          try
            vlanc := cdsDadosLanc.AsInteger;
            fSomaBin;
            cdsDadosEmpreCod.asInteger := 1;
            cdsDadosAcesoCod.asInteger := 1;
            cdsDados.Post;
            fFechamento;
            sbPeriodo.onclick(sbPeriodo);
            cdsDados.Locate('Lanc', vlanc, []);
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

procedure TFfrmRomanFecha.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsRomanPro.Close;
  cdsRomanEmb.Close;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from roman where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)+' order by data desc');
  cdsDados.Open;
  cdsRomanPro.Open;
  cdsRomanEmb.Open;
end;

procedure TFfrmRomanFecha.fSomaBin;
var vqtd: Double;
begin
  vqtd := 0;
  cdsRomanPro.First;
  while not cdsRomanPro.Eof do
  begin
    cdsRomanPro.Edit;
    cdsRomanPro.FieldByName('PesoLiq').asFloat := cdsRomanPro.FieldByName('QtdeBin').asFloat*cdsRomanPro.FieldByName('PesoBru').asFloat;
    cdsRomanPro.Post;

    vqtd := vqtd + cdsRomanProQtdeBin.asFloat;

    cdsRomanPro.Next;
  end;
  cdsRomanPro.First;
  cdsDadosQtdeBin.asFloat := vqtd;
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
  vdados := 'Esteira'+ 'V'+frPree(cdsDadosVarieCod.Text,2,'0',0)
                     + 'L'+frPree(cdsDadosLanc.Text,4,'0',0);
  if not frPerg(pchar('Deseja fazer o fechamento do lote?')) then exit;
  if not frPerg('Tem certeza?') then exit;
  try
    if not cdsRomanMer.Active then cdsRomanMer.Open;

    cdsDados.Edit;
    vlanc := cdsDadosLanc.AsInteger;
    try

      fSql(1,['Delete From RomanMer Where Lanc=0'+cdsDadosLanc.Text],1);
      fSql(1,['Delete From RomanEmbal Where Lanc=0'+cdsDadosLanc.Text],1);

      cdsRomanMer.Close;
      cdsRomanMer.Open;
      cdsRomanEmb.Close;
      cdsRomanEmb.Open;

      fProc(1,['Select Codigo, Sum(Qtde) as vqtd ',
                '  From '+vdados,
                ' Group By Lote, Codigo'],3);
      try

        while not dm.qrProc1.Eof do
        begin
          fSql(2,['Select CodVelho, Codigo, Descricao, Calibre, PesoLiq',
                    '  From Cadprodu',
                    ' Where Codigo=0'+dm.qrProc1.FieldByName('Codigo').Text],3);
          if dm.qrSql2.RecordCount>0 then
          begin
            cdsRomanMer.Append;
            cdsRomanMerLanc.asInteger   := cdsDadosLanc.asInteger;
            cdsRomanMerLancit.asInteger := frGenerator('ROMANMER','LANCIT',1);
            cdsRomanMerCodiAux.asInteger:= dm.qrSql2.FieldByName('CodVelho').asInteger;
            cdsRomanMerProdCod.Value    := dm.qrSql2.FieldByName('Codigo').Value;
            cdsRomanMerProdDes.Text     := dm.qrSql2.FieldByName('Descricao').Text;
            cdsRomanMerCalibre.asFloat  := dm.qrSql2.FieldByName('Calibre').asFloat;
            cdsRomanMerPesoLiq.asFloat  := dm.qrSql2.FieldByName('PesoLiq').asFloat;
            cdsRomanMerQtde.asFloat     := dm.qrProc1.FieldByName('vqtd').asFloat;
            cdsRomanMer.Post;
          end;
          dm.qrProc1.Next;
        end;
        fSomaPeso;
        cdsRomanMer.ApplyUpdates(0);
      except
        frPerg('Erro ao salvar Produtos!', 'OK');
      end;

      //Embalador
      fProc(1,['Select EmbalCod, Codigo, Sum(Qtde) as vqtd ',
               '  From '+vdados,
               ' Group By EmbalCod, Codigo'],3);
      try

        while not dm.qrProc1.Eof do
        begin

          fSql(3,['Select BarraCod, Descricao',
                  '  From CadEmbal',
                  ' Where BarraCod=0'+dm.qrProc1.FieldByName('EmbalCod').Text],3);
          if dm.qrSql3.RecordCount>0 then
          begin
            fSql(2,['Select Codigo, Descricao',
                    '  From Cadprodu',
                    ' Where Codigo=0'+dm.qrProc1.FieldByName('Codigo').Text],3);
            if dm.qrSql2.RecordCount>0 then
            begin
              cdsRomanEmb.Append;
              cdsRomanEmbLanc.asInteger   := cdsDadosLanc.asInteger;
              cdsRomanEmbLancit.asInteger := frGenerator('ROMANMER','LANCIT',1);
              cdsRomanEmbProdCod.Value    := dm.qrSql2.FieldByName('Codigo').Value;
              cdsRomanEmbProdDes.Text     := dm.qrSql2.FieldByName('Descricao').Text;
              cdsRomanEmbEmbalCod.Value   := dm.qrSql3.FieldByName('BarraCod').Value;
              cdsRomanEmbEmbalDes.Text    := dm.qrSql3.FieldByName('Descricao').Text;
              cdsRomanEmbQtde.asFloat     := dm.qrProc1.FieldByName('vqtd').asFloat;
              cdsRomanEmbData.Value       := cdsDadosData.Value;
              cdsRomanEmb.Post;
            end;
          end;
          dm.qrProc1.Next;
        end;
        cdsRomanEmb.ApplyUpdates(0);
      except
      end;

    except
      frPerg('Erro ao salvar Embaladores!', 'OK');
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

end.

