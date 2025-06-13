unit frmRomaneioEmpres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmRomaneioEmpres = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    dtpData: TDateTimePicker;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit12: TDBEdit;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosPLACA: TStringField;
    cdsDadosPLACADES: TStringField;
    cdsDadosBINSCOD: TIntegerField;
    cdsDadosBINSDES: TStringField;
    cdsDadosBINSQTD: TBCDField;
    cdsDadosBINSPES: TBCDField;
    cdsDadosPLLAD: TIntegerField;
    cdsDadosPLFUN: TIntegerField;
    cdsDadosBINSLIQ: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosRECIBO: TIntegerField;
    cdsDadosSAFRA: TStringField;
    edPeso: TEdit;
    frmPesquisaBin: TfrmPesquisa;
    frmPesquisaMot: TfrmPesquisa;
    frmPesquisaPro: TfrmPesquisa;
    SpeedButton1: TSpeedButton;
    dsEtiqBins: TDataSource;
    cdsDadosIMPORTEMP: TIntegerField;
    cdsDadosIMPORTLANC: TIntegerField;
    cdsDadosIMPORTENV: TIntegerField;
    cdsDadosOBS: TStringField;
    GroupBox11: TGroupBox;
    DBEdit1: TDBEdit;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsEtiqBins: TFDQuery;
    cdsEtiqBinsVARIEDADE: TStringField;
    cdsEtiqBinsPRODUTOR: TStringField;
    cdsEtiqBinsROMANEIO: TStringField;
    cdsEtiqBinsDATA: TStringField;
    cdsEtiqBinsTIPOBINS: TStringField;
    cdsEtiqBinsNOTA: TStringField;
    cdsEtiqBinsMOTORISTA: TStringField;
    cdsEtiqBinsPESOKG: TStringField;
    cdsEtiqBinsPESOBRUTO: TStringField;
    cdsEtiqBinsPESOTARA: TStringField;
    cdsEtiqBinsPESOLIQUIDO: TStringField;
    cdsEtiqBinsLINHA1: TStringField;
    cdsEtiqBinsLINHA2: TStringField;
    cdsEtiqBinsLINHA3: TStringField;
    cdsEtiqBinsLINHA4: TStringField;
    cdsEtiqBinsLINHA5: TStringField;
    cdsEtiqBinsQTDE: TIntegerField;
    cdsEtiqBinsCONTADOR: TIntegerField;
    cdsEtiqBinsBARRA: TStringField;
    cdsEtiqBinsVARCOD: TIntegerField;
    cdsEtiqBinsPRODCOD: TIntegerField;
    cdsEtiqBinsREGLOG: TStringField;
    cdsEtiqBinsREG_ID: TIntegerField;
    cdsDadosHORA: TStringField;
    cdsEtiqBinsHORA: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpDataChange(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
    procedure DBEdit15Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRomaneioEmpres: TFfrmRomaneioEmpres;

implementation

{$R *.dfm}
uses Data, Rotina, Esteira, zModeloRel, Pesq;

procedure TFfrmRomaneioEmpres.FormCreate(Sender: TObject);
begin
  inherited;
  dtpData.Date := Date;
  frmPesquisaPro.pInicia('ttProdutor', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista', TForm(Sender),7,147,GroupBox6,true);
  frmPesquisaBin.pInicia('ttTipoBins', TForm(Sender),7,147,GroupBox7,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomaneioEmpres.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomaneioEmpres.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosPlaca.AsString);
    frmPesquisaBin.pRetornaDados(cdsDadosBinsCod.AsString);
  end;
end;

procedure TFfrmRomaneioEmpres.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosPlaca.AsString);
    frmPesquisaBin.pRetornaDados(cdsDadosBinsCod.AsString);
  end;
end;

procedure TFfrmRomaneioEmpres.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit16.SetFocus;
end;

procedure TFfrmRomaneioEmpres.DBEdit15Exit(Sender: TObject);
var vdtini:TDate;
begin
  vdtini := StrToDate('01/01/'+FormatDateTime('yyyy',Date));
  inherited;
  if vkey=13 then begin vkey:=0;
    if cdsDadosBinsQtd.asInteger=0 then
    begin
       DBEdit15.SetFocus; ShowMessage('Opção Inválida!');
       Abort;
    end;
    if cdsDadosBINSPES.asFloat>0 then
    begin
       fSql(1,['Select Lanc, Peso From EntRT',
               'Where Placa='+QuotedStr(cdsDadosPlaca.asString)+
               ' and data > '+InvData(vdtini),
               'Order By Lanc Desc'],3);
       cdsDadosBinsLiq.asFloat:=cdsDadosBinsPes.asFloat - dm.qrSql1.Fields[1].asFloat;
    end
    else begin
       if fTra(1,['Select Peso1 From CadBins Where Codigo=0'+cdsDadosBinsCod.Text],1) then
         cdsDadosBinsLiq.asFloat := cdsDadosBinsQtd.asFloat*dm.qrSqlTra.Fields[0].asFloat;
    end;
  end;
  if cdsDadosBinsQtd.asFloat > 0 then
    EdPeso.Text := FormatFloat('#,0.###', cdsDadosBinsLiq.asFloat/cdsDadosBinsQtd.asFloat)
  else
    EdPeso.Text := '0';
  EdPeso.Text := frPree(EdPeso.Text,10,' ',0);
end;

procedure TFfrmRomaneioEmpres.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (vkey = 13) then
  begin
    dtpData.Date := cdsDadosDATA.AsDateTime;
    Application.ProcessMessages;
  end;
  //if (FormatDateTime('yyyy', cdsDadosData.AsDateTime) <> FormatDateTime('yyyy', Date))  then
  //  if frPerg('Ano, diferente do atual!'+#13+'Deseja alterar ?', 'SN') then
  //    dbEdit16.SetFocus;
end;

procedure TFfrmRomaneioEmpres.dtpDataChange(Sender: TObject);
begin
  inherited;
  cdsDadosDATA.AsDateTime := dtpData.Date;
end;

procedure TFfrmRomaneioEmpres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  FreeAndNil(FfrmRomaneioEmpres);
end;

procedure TFfrmRomaneioEmpres.sbIncluirClick(Sender: TObject);
begin

  //if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.Value) then
  //  exit;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaPro.pLimpaCampo;
           frmPesquisaMot.pLimpaCampo;
           frmPesquisaBin.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger   := frGenerator('ENTRB','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ENTRB_ID');
           cdsDadosRecibo.AsInteger := 0;//frGenerator('ENTRB','RECIBO',0,xAno);
           cdsDadosData.AsDateTime  := date;
           cdsDadosSafra.AsString   := FormatDateTime('yyyy', Now);
           cdsDadosHora.AsString    := FormatDateTime('HH:MM:SS', Now);
           frmPesquisaBin.edtPesquisa.Text := '1';
           frmPesquisaBin.pRetornaDados(cdsDadosBinsCod.AsString);

           dbEdit16.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          dbEdit16.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(0);
         end;
     15: begin
          try
            if cdsDadosRecibo.AsInteger = 0 then
              cdsDadosRecibo.AsInteger := frGenerator('ENTRB','RECIBO',1,FormatDateTime('yyyy', Now));
            cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
            cdsDadosProdDes.AsString   := frmPesquisaPro.vpDescricao;
            cdsDadosPlaca.AsString     := IntToStr(frmPesquisaMot.vpCodPrincipal);
            if (Length(Trim(frmPesquisaMot.vpCampo_2)) > 1) then
              cdsDadosPlacaDes.AsString  := Trim(frmPesquisaMot.vpCampo_2)+' - '+frmPesquisaMot.vpDescricao
            else
              cdsDadosPlacaDes.AsString  := frmPesquisaMot.vpDescricao;
            cdsDadosBinsCod.AsInteger  := frmPesquisaBin.vpCodPrincipal;
            cdsDadosBinsDes.AsString   := frmPesquisaBin.vpDescricao;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDadosImportEnv.AsInteger := 0;
            cdsDados.Post;
            cdsDados.ApplyUpdates(0);
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

procedure TFfrmRomaneioEmpres.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  cdsDados.Sql.Clear;
  cdsDados.SQL.Add('select * from entrb where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmRomaneioEmpres.SpeedButton1Click(Sender: TObject);
var vinicio,vqtde: Integer;
begin
  inherited;
  if not cdsEtiqBins.Active then cdsEtiqBins.Open;

  vinicio := 1;
  cdsEtiqBins.Append;
  cdsEtiqBinsQtde.Value       := cdsDadosBinsQtd.asInteger;
  cdsEtiqBinsContador.Value   := vinicio;
//      cdsEtiqBinsVariedade.Text   := Copy(cdsDetalheVarieDes.AsString,1,50);
  cdsEtiqBinsProdutor.Text    := Copy(cdsDadosProdDes.AsString,1,50);
  cdsEtiqBinsRomaneio.Text    := cdsDadosRecibo.AsString;
  cdsEtiqBinsMotorista.Text   := Copy(cdsDadosPlacaDes.AsString,1,50);
  cdsEtiqBinsData.Text        := DateToStr(cdsDadosData.AsDateTime);
//      cdsEtiqBinsNota.Text        := cdsDadosNota.AsString;
  cdsEtiqBinsTipoBins.Text    := Copy(cdsDadosBinsDes.AsString,1,50);
//      cdsEtiqBinsVarcod.Value     := cdsDetalheVarieCod.AsInteger;
  cdsEtiqBinsProdCod.Value    := cdsDadosProdCod.asInteger;
  cdsEtiqBinsBarra.Text       := frPree(cdsDadosRecibo.AsString,6,'0',0)+frPree(vinicio,6,'0',0);
  cdsEtiqBinsHora.Text           := cdsDadosHora.AsString;
  cdsEtiqBinsPesoBruto.AsFloat   := cdsDadosBinsPes.AsFloat;
  cdsEtiqBinsPesoLiquido.AsFloat := cdsDadosBinsLiq.AsFloat;

  cdsEtiqBins.Post;

  if not cdsDados.IsEmpty then
  begin
    xRelTela := UpperCase('FfrmImpEtiqBinsSaida');
    Application.CreateForm(TFModeloRel, FModeloRel);
    FModeloRel.dsRelat.DataSet := cdsEtiqBins;
    if FModeloRel.cdsDados.RecordCount = 1 then
      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir)
    else
      FModeloRel.ShowModal;
    Sleep(500);
  end;
  cdsEtiqBins.Close;
end;

end.

