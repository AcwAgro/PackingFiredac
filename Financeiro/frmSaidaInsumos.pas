unit frmSaidaInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa;

type
  TFfrmSaidaInsumos = class(TFModelo)
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
    GroupBox1: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    frmPesquisa1: TfrmPesquisa;
    DBGrid1: TDBGrid;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit5: TDBEdit;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpDataChange(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure fSomaBin;
    procedure fClassifacao(vTip:Boolean);
    procedure fFechamento;
  public
    { Public declarations }
  end;

var
  FfrmSaidaInsumos: TFfrmSaidaInsumos;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmSaidaInsumos.FormCreate(Sender: TObject);
begin
  inherited;
  dtInicial.Date := Date - 60;
  dtFinal.Date := Date +40;
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
  cdsRomanPro.Open;
  cdsRomanMer.Open;
end;

procedure TFfrmSaidaInsumos.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmSaidaInsumos.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (vkey = 13) then
  begin
    dtpData.Date := cdsDadosDATAFIN.Value;
    Application.ProcessMessages;
    if (FormatDateTime('mm/yyyy', cdsDadosDataFin.AsDateTime) <> FormatDateTime('mm/yyyy', Date))  then
      frPerg('Data mês e ano,'+#13+'diferente da atual!', 'OK');
  end;
end;

procedure TFfrmSaidaInsumos.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

procedure TFfrmSaidaInsumos.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  cdsRomanPro.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsRomanPro.FieldByName('QtdeBin').Text,1,3)='999' then begin
           cdsRomanPro.Delete; DBEdit2.SetFocus; fSomaBin; Abort;
         end;
         if cdsRomanPro.FieldByName('QtdeBin').asInteger=0 then begin ShowMessage('Opção Inválida!'); Abort; end;
       end;
    1: begin
         cdsRomanPro.FieldByName('Lanc').asInteger := cdsRomanPro.FieldByName('Lanc').asInteger;
         if cdsRomanPro.FieldByName('Lancit').asInteger<1 then
            cdsRomanPro.FieldByName('Lancit').asInteger := fBus(1,['Select Max(Lancit) From Romanpro Where Lanc='+cdsRomanPro.FieldByName('Lanc').Text],1)+1;

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
             ShowMessage('Recibo não encontrado!');
             Abort;
           end;
         end;
       end;
    2: begin
         cdsRomanPro.FieldByName('PesoLiq').asFloat := cdsRomanPro.FieldByName('QtdeBin').asFloat*cdsRomanPro.FieldByName('PesoBru').asFloat;
       end;
    3: begin
         if fTra(1,['Select Descricao From CadForne Where Codigo=0'+cdsRomanPro.FieldByName('ProdCod').Text],1) then begin
            cdsRomanPro.FieldByName('ProdDes').Text:=dm.qrSqlTra.Fields[0].Text;
            DBGrid1.SelectedIndex:=4;
         end else begin
            FPQForneCooper;
            cdsRomanPro.FieldByName('ProdCod').asString := xpqResul;
            Abort;
         end;
       end;
    5: begin
         cdsRomanPro.Post; cdsRomanPro.Next;
         if cdsRomanPro.Eof then cdsRomanPro.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmSaidaInsumos.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  cdsRomanPro.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmSaidaInsumos.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmSaidaInsumos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>5 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmSaidaInsumos.dtpDataChange(Sender: TObject);
begin
  inherited;
  cdsDadosDATAFin.Value := dtpData.Date;
end;

procedure TFfrmSaidaInsumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomanFecha);
end;

procedure TFfrmSaidaInsumos.sbIncluirClick(Sender: TObject);
begin
  if TComponent(Sender).Tag = 12 then exit;

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
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(0);
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

procedure TFfrmSaidaInsumos.fSomaBin;
begin
  fSql(1,1,['Select Sum(QtdeBin) From RomanPro','Where Lanc='+cdsDadosLanc.Text],2);
  cdsDadosQtdeBin.asFloat := dm.qrSql1.Fields[0].AsFloat;
end;

procedure TFfrmSaidaInsumos.fFechamento;
var vArq:TextFile; vini:Integer; vdes:String;
    vsom,vdif,vqtd:double;
begin
  fSql(5,1,['Select Lote, Codigo, Sum(Qtde) as vqtd From Esteira',
            'Where Lote='+cdsDadosLote.Text+
            ' and VarieCod='+cdsDadosVarieCod.Text,
            'Group By Lote, Codigo'],3);

  AssignFile(varq,xdirsi+'Lote\Lot'+Trim(cdsDadosVarieCod.Text)+Trim(cdsDadosLote.Text)+'.txt');
  Rewrite(varq);
  cdsRomanMer.Open;
  fBar(0,dm.qrSql1.RecordCount,'Fechamento de Lote...');
  while not dm.qrSql1.Eof do begin
    fBar(1,dm.qrSql1.RecordCount,'');
    vdes:='';
    for vini:=0 to dm.qrSql1.FieldCount-1 do begin
       vdes:=vdes+dm.qrSql1.Fields[vini].Text+';';
    end;
    Writeln(varq,vdes);
    fSql(1,2,['Select * From Cadprodu',
              'Where Codigo='+dm.qrSql1.FieldByName('Codigo').Text],2);
    if dm.qrSql2.RecordCount>0 then begin
      cdsRomanMer.Append;
      cdsRomanMer.FieldByName('Lanc').asInteger   :=cdsDadosLanc.asInteger;
      cdsRomanMer.FieldByName('Lancit').asInteger :=fBus(1,['Select Max(Lancit) From RomanMer Where Lanc='+cdsDadosLanc.Text],1)+1;
      cdsRomanMer.FieldByName('CodiAux').asInteger:=dm.qrSql2.FieldByName('CodVelho').asInteger;
      cdsRomanMer.FieldByName('ProdCod').Value    :=dm.qrSql2.FieldByName('Codigo').Value;
      cdsRomanMer.FieldByName('ProdDes').Text     :=dm.qrSql2.FieldByName('Descricao').Text;
      cdsRomanMer.FieldByName('Calibre').asFloat  :=dm.qrSql2.FieldByName('Calibre').asFloat;
      cdsRomanMer.FieldByName('PesoLiq').asFloat  :=dm.qrSql2.FieldByName('PesoLiq').asFloat;
      cdsRomanMer.FieldByName('Qtde').asFloat     :=dm.qrSql1.FieldByName('vqtd').asFloat;
      cdsRomanMer.Post;
    end;
    dm.qrSql1.Next;
  end;
  CloseFile(varq);
  fSql(5,1,['Delete From Esteira',
            'Where Lote='+cdsDadosLote.Text],2);
//Soma Peso
  fSql(1,1,['Select Sum(Qtde*PesoLiq) From RomanMer',
            'Where Lanc='+cdsDadosLanc.Text],2);
  cdsDados.Edit;
  cdsDadosPesoLiq.asFloat:=dm.qrSql1.Fields[0].AsFloat;
  fSql(1,1,['Select Sum(PesoLiq) From RomanPro',
            'Where Lanc='+cdsDadosLanc.Text],2);
  cdsDadosPesoPro.asFloat:=dm.qrSql1.Fields[0].AsFloat;
  with cdsRomanMer do begin
    vsom:=0;
    First;
    while not Eof do begin
       if Copy(FieldbyName('ProdCod').Text,3,1)<>'0' then begin
          if Copy(FieldbyName('ProdCod').Text,3,1)<>'4' then
             vsom:=vsom+(FieldbyName('Qtde').asFloat*FieldbyName('PesoLiq').asFloat);
       end;
       Next;
    end;
    vdif:=cdsDadosPesoPro.asFloat - cdsDadosPerca.asFloat - cdsDadosPesoLiq.asFloat;
    if vdif<0 then vdif:=0;
    First;
    while not Eof do
    begin
       Edit;
       vqtd := (FieldbyName('Qtde').asFloat*FieldbyName('PesoLiq').asFloat);
       if Copy(FieldbyName('ProdCod').Text,3,1)<>'0' then
       begin
          if Copy(FieldbyName('ProdCod').Text,3,1)<>'4' then
          begin
             vqtd:=(FieldbyName('Qtde').asFloat*FieldbyName('PesoLiq').asFloat);
             FieldbyName('PesoReal').asFloat:=vqtd+(vqtd*vdif/vsom);
          end else FieldbyName('PesoReal').asFloat:=vqtd;
       end else FieldbyName('PesoReal').asFloat:=vqtd;
       Post;
       Next;
    end;
  end;
  fSql(1,1,['Select Sum(PesoReal) From RomanMer',
            'Where Lanc='+cdsDadosLanc.Text],2);
  cdsDadosPesoBru.asFloat := dm.qrSql1.Fields[0].AsFloat;
  cdsDadosPerca.asFloat   := cdsDadosPesoPro.asFloat - cdsDadosPesoLiq.asFloat;
  if cdsDadosPesoPro.asFloat>10 then
     cdsDadosPerec.asFloat := cdsDadosPerca.asFloat / cdsDadosPesoPro.asFloat*100;
  cdsDados.Post;
  fClassifacao(True);
  fBar(2,1,'');
end;

procedure TFfrmSaidaInsumos.fClassifacao(vTip:Boolean);
var vper:Double; vlan,vfil:Integer; vtes:String;
begin
  fSql(1,1,['Delete From Classif Where Integra='+cdsDadosLanc.Text],1);
  fSql(1,1,['Delete From ClassifM Where Integra='+cdsDadosLanc.Text],1);
    dm.TClassif.Open;  dm.TClassifMer.Open;
    fSql(1,1,['Select Max(Lanc) From Classif'],1);
    vlan:=dm.qrSql1.Fields[0].asInteger;
    cdsRomanPro.First;
    fBar(3,cdsRomanPro.RecordCount,'');
    while not cdsRomanPro.Eof do begin
      fBar(4,1,'');
      if cdsDadosQtdeBin.asFloat > 0 then
        vper:=cdsRomanPro.FieldByName('QtdeBin').asFloat/cdsDadosQtdeBin.asFloat
      else
        vper := 1;
      vlan:=vlan+1;
      dm.TClassif.Append;
      for vfil:=0 to cdsDados.FieldCount-1 do begin
        vtes:=cdsDados.Fields[vfil].FieldName;
        dm.TClassif.FieldByName(vtes).Value:=cdsDados.FieldByName(vtes).Value;
      end;
      dm.TClassif.FieldByName('Lanc').asInteger    :=vlan;
      dm.TClassif.FieldByName('Integra').asInteger :=cdsDados.FieldByName('Lanc').asInteger;
      dm.TClassif.FieldByName('Codigo').asInteger  :=cdsRomanPro.FieldByName('ProdCod').asInteger;
      dm.TClassif.FieldByName('Descricao').asString:=cdsRomanPro.FieldByName('ProdDes').asString;
      dm.TClassif.FieldByName('QtdeBin').asFloat   :=cdsRomanPro.FieldByName('QtdeBin').asFloat;
      dm.TClassif.FieldByName('PesoPro').asFloat   :=cdsDados.FieldByName('PesoPro').asFloat*vper;
      dm.TClassif.FieldByName('PesoLiq').asFloat   :=cdsDados.FieldByName('PesoLiq').asFloat*vper;
      dm.TClassif.FieldByName('PesoBru').asFloat   :=cdsDados.FieldByName('PesoBru').asFloat*vper;
      dm.TClassif.FieldByName('Perec').asFloat     :=cdsDados.FieldByName('Perec').asFloat*vper;
      dm.TClassif.FieldByName('Perca').asFloat     :=cdsDados.FieldByName('Perca').asFloat*vper;
      dm.TClassif.Post;
      cdsRomanMer.First;
      while not cdsRomanMer.Eof do begin
        dm.TClassifMer.Append;
        dm.TClassifMer.FieldByName('Lanc').asInteger    :=vlan;
        dm.TClassifMer.FieldByName('Integra').asInteger :=cdsDados.FieldByName('Lanc').asInteger;
        dm.TClassifMer.FieldByName('Lote').asInteger    :=cdsDados.FieldByName('Lote').asInteger;
        dm.TClassifMer.FieldByName('CodiAux').asInteger :=cdsRomanMer.FieldByName('CodiAux').asInteger;
        dm.TClassifMer.FieldByName('ProdCod').asInteger :=cdsRomanMer.FieldByName('ProdCod').asInteger;
        dm.TClassifMer.FieldByName('ProdDes').asString  :=cdsRomanMer.FieldByName('ProdDes').asString;
        dm.TClassifMer.FieldByName('Calibre').asString  :=cdsRomanMer.FieldByName('Calibre').asString;
        dm.TClassifMer.FieldByName('QtdeEnt').asFloat   :=cdsRomanMer.FieldByName('Qtde').asFloat*vper;
        dm.TClassifMer.FieldByName('PesoReal').asFloat  :=cdsRomanMer.FieldByName('PesoReal').asFloat*vper;
        dm.TClassifMer.Post;
        cdsRomanMer.Next;
      end;
      cdsRomanPro.Next;
    end;
     dm.TClassif.Close; dm.TClassifMer.Close;
  fBar(2,0,'');
end;
end.

