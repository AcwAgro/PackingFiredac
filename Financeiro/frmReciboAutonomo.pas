unit frmReciboAutonomo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmReciboAutonomo = class(TFModelo)
    PageControl1: TPageControl;
    tab_lanc: TTabSheet;
    tab_tabela: TTabSheet;
    rgTipo: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    DBEdit28: TDBEdit;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    DBEdit1: TDBEdit;
    DBEdit39: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit38: TDBEdit;
    DBEdit33: TDBEdit;
    Label22: TLabel;
    Panel1: TPanel;
    Label11: TLabel;
    DBEdit32: TDBEdit;
    DBEdit31: TDBEdit;
    Label16: TLabel;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit29: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label24: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label26: TLabel;
    Label25: TLabel;
    DBEdit30: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit43: TDBEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DBEdit44: TDBEdit;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    DBEdit46: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit47: TDBEdit;
    dspTabela: TDataSetProvider;
    cdsTabela: TClientDataSet;
    dsTabela: TDataSource;
    sbSalvaTabela: TSpeedButton;
    cdsTabelaINSSD1: TBCDField;
    cdsTabelaINSSA1: TBCDField;
    cdsTabelaINSSV1: TBCDField;
    cdsTabelaIRRFD1: TBCDField;
    cdsTabelaIRRFA1: TBCDField;
    cdsTabelaIRRFR1: TBCDField;
    cdsTabelaIRRFV1: TBCDField;
    cdsTabelaINSSD2: TBCDField;
    cdsTabelaINSSA2: TBCDField;
    cdsTabelaINSSV2: TBCDField;
    cdsTabelaIRRFD2: TBCDField;
    cdsTabelaIRRFA2: TBCDField;
    cdsTabelaIRRFR2: TBCDField;
    cdsTabelaIRRFV2: TBCDField;
    cdsTabelaINSSD3: TBCDField;
    cdsTabelaINSSA3: TBCDField;
    cdsTabelaINSSV3: TBCDField;
    cdsTabelaIRRFD3: TBCDField;
    cdsTabelaIRRFA3: TBCDField;
    cdsTabelaIRRFR3: TBCDField;
    cdsTabelaIRRFV3: TBCDField;
    cdsTabelaINSSD4: TBCDField;
    cdsTabelaINSSA4: TBCDField;
    cdsTabelaINSSV4: TBCDField;
    cdsTabelaIRRFD4: TBCDField;
    cdsTabelaIRRFA4: TBCDField;
    cdsTabelaIRRFR4: TBCDField;
    cdsTabelaIRRFV4: TIntegerField;
    cdsTabelaINSSD5: TBCDField;
    cdsTabelaINSSA5: TBCDField;
    cdsTabelaINSSV5: TBCDField;
    cdsTabelaIRRFD5: TBCDField;
    cdsTabelaIRRFA5: TBCDField;
    cdsTabelaIRRFR5: TBCDField;
    cdsTabelaIRRFV5: TBCDField;
    cdsTabelaDEPENDE: TBCDField;
    cdsTabelaEMPRECOD: TIntegerField;
    cdsTabelaACESOCOD: TIntegerField;
    sqlDadosNUMERO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosCPF: TStringField;
    sqlDadosPREV: TStringField;
    sqlDadosVALORBRU: TBCDField;
    sqlDadosALIQBASE: TBCDField;
    sqlDadosVLRBASE: TBCDField;
    sqlDadosALIQINSS: TBCDField;
    sqlDadosVLRINSS: TBCDField;
    sqlDadosQTDEDEPE: TIntegerField;
    sqlDadosVLRDEPE: TBCDField;
    sqlDadosVLRDEPENDE: TBCDField;
    sqlDadosVLRBASECAL: TBCDField;
    sqlDadosALIQIRRF: TBCDField;
    sqlDadosVLRIRRF: TBCDField;
    sqlDadosVALORLIQ: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosTIPO: TStringField;
    sqlDadosOBS: TStringField;
    sqlDadosFREPER: TBCDField;
    sqlDadosFREVAL: TBCDField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosPREV: TStringField;
    cdsDadosVALORBRU: TBCDField;
    cdsDadosALIQBASE: TBCDField;
    cdsDadosVLRBASE: TBCDField;
    cdsDadosALIQINSS: TBCDField;
    cdsDadosVLRINSS: TBCDField;
    cdsDadosQTDEDEPE: TIntegerField;
    cdsDadosVLRDEPE: TBCDField;
    cdsDadosVLRDEPENDE: TBCDField;
    cdsDadosVLRBASECAL: TBCDField;
    cdsDadosALIQIRRF: TBCDField;
    cdsDadosVLRIRRF: TBCDField;
    cdsDadosVALORLIQ: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosTIPO: TStringField;
    cdsDadosOBS: TStringField;
    cdsDadosFREPER: TBCDField;
    cdsDadosFREVAL: TBCDField;
    frmPesquisaCFP: TfrmPesquisa;
    dbDadosDBTableView1NUMERO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1DESCRICAO: TcxGridDBColumn;
    dbDadosDBTableView1CPF: TcxGridDBColumn;
    dbDadosDBTableView1PREV: TcxGridDBColumn;
    dbDadosDBTableView1VALORBRU: TcxGridDBColumn;
    dbDadosDBTableView1VALORLIQ: TcxGridDBColumn;
    dbDadosDBTableView1ALIQBASE: TcxGridDBColumn;
    dbDadosDBTableView1VLRBASE: TcxGridDBColumn;
    dbDadosDBTableView1ALIQINSS: TcxGridDBColumn;
    dbDadosDBTableView1VLRINSS: TcxGridDBColumn;
    dbDadosDBTableView1QTDEDEPE: TcxGridDBColumn;
    dbDadosDBTableView1VLRDEPE: TcxGridDBColumn;
    dbDadosDBTableView1VLRDEPENDE: TcxGridDBColumn;
    dbDadosDBTableView1VLRBASECAL: TcxGridDBColumn;
    dbDadosDBTableView1ALIQIRRF: TcxGridDBColumn;
    dbDadosDBTableView1VLRIRRF: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1TIPO: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1FREPER: TcxGridDBColumn;
    dbDadosDBTableView1FREVAL: TcxGridDBColumn;
    DBEdit45: TcxDBDateEdit;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsTabelaREGLOG: TStringField;
    cdsTabelaREG_ID: TIntegerField;
    sqlTabela: TFDQuery;
    sqlTabelaINSSD1: TBCDField;
    sqlTabelaINSSA1: TBCDField;
    sqlTabelaINSSV1: TBCDField;
    sqlTabelaIRRFD1: TBCDField;
    sqlTabelaIRRFA1: TBCDField;
    sqlTabelaIRRFR1: TBCDField;
    sqlTabelaIRRFV1: TBCDField;
    sqlTabelaINSSD2: TBCDField;
    sqlTabelaINSSA2: TBCDField;
    sqlTabelaINSSV2: TBCDField;
    sqlTabelaIRRFD2: TBCDField;
    sqlTabelaIRRFA2: TBCDField;
    sqlTabelaIRRFR2: TBCDField;
    sqlTabelaIRRFV2: TBCDField;
    sqlTabelaINSSD3: TBCDField;
    sqlTabelaINSSA3: TBCDField;
    sqlTabelaINSSV3: TBCDField;
    sqlTabelaIRRFD3: TBCDField;
    sqlTabelaIRRFA3: TBCDField;
    sqlTabelaIRRFR3: TBCDField;
    sqlTabelaIRRFV3: TBCDField;
    sqlTabelaINSSD4: TBCDField;
    sqlTabelaINSSA4: TBCDField;
    sqlTabelaINSSV4: TBCDField;
    sqlTabelaIRRFD4: TBCDField;
    sqlTabelaIRRFA4: TBCDField;
    sqlTabelaIRRFR4: TBCDField;
    sqlTabelaIRRFV4: TIntegerField;
    sqlTabelaINSSD5: TBCDField;
    sqlTabelaINSSA5: TBCDField;
    sqlTabelaINSSV5: TBCDField;
    sqlTabelaIRRFD5: TBCDField;
    sqlTabelaIRRFA5: TBCDField;
    sqlTabelaIRRFR5: TBCDField;
    sqlTabelaIRRFV5: TBCDField;
    sqlTabelaDEPENDE: TBCDField;
    sqlTabelaEMPRECOD: TIntegerField;
    sqlTabelaACESOCOD: TIntegerField;
    sqlTabelaREGLOG: TStringField;
    sqlTabelaREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure sbSalvaTabelaClick(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure GroupBox6Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmReciboAutonomo: TFfrmReciboAutonomo;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlRPA;

procedure TFfrmReciboAutonomo.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCFP.pInicia('ttFornecedor', FfrmReciboAutonomo,32,157,GroupBox6,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmReciboAutonomo.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmReciboAutonomo.GroupBox6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaCFP.dbgLista.Visible then exit;

  cdsDadosDescricao.asString := frmPesquisaCFP.vpDescricao;
  if (Trim(cdsDadosCPF.AsString) = '') then
    cdsDadosCPF.asString       := frmPesquisaCFP.vpCampo_2;
end;

procedure TFfrmReciboAutonomo.DBEdit1Exit(Sender: TObject);
var vval:Real;
begin
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if (not sbSalvar.Visible) then Exit;

  if vKey=13 then
  begin
     vKey:=0;
     vval:=cdsDadosValorBru.asFloat;
     if vval>0 then begin
        with cdsTabela do
        begin
           if (vval>=FieldByName('INSSD1').asFloat) and
              (vval<FieldByName('INSSA1').asFloat) then begin
              if cdsDadosTipo.Text='N' then vval:=cdsDadosValorBru.asFloat
              else vval:=cdsDadosValorBru.asFloat*0.20;
              cdsDadosAliqInss.asFloat:=11;//FieldByName('INSSV1').asFloat;
              cdsDadosVlrInss.asFloat:=vval*11/100;
           end;
           if (vval>=FieldByName('INSSD2').asFloat) and
              (vval<FieldByName('INSSA2').asFloat) then begin
              if cdsDadosTipo.Text='N' then vval:=cdsDadosValorBru.asFloat
              else vval:=cdsDadosValorBru.asFloat*0.20;
              cdsDadosAliqInss.asFloat:=11;//FieldByName('INSSV2').asFloat;
              cdsDadosVlrInss.asFloat:=vval*11/100;
           end;
           if (vval>=FieldByName('INSSD3').asFloat) and
              (vval<FieldByName('INSSA3').asFloat) then begin
              if cdsDadosTipo.Text='N' then vval:=cdsDadosValorBru.asFloat
              else vval:=cdsDadosValorBru.asFloat*0.20;
              cdsDadosAliqInss.asFloat:=11;
              cdsDadosVlrInss.asFloat:=vval*11/100;
           end;
           if (vval>=FieldByName('INSSD4').asFloat) and
              (vval<FieldByName('INSSA4').asFloat) then begin
              if cdsDadosTipo.Text='N' then vval:=cdsDadosValorBru.asFloat
              else vval:=cdsDadosValorBru.asFloat*0.20;
              cdsDadosAliqInss.asFloat:=11;
              cdsDadosVlrInss.asFloat:=vval*11/100;
           end;
           if (vval>FieldByName('INSSA4').asFloat) then begin
              if cdsDadosTipo.Text='N' then vval:=cdsDadosValorBru.asFloat
              else vval:=cdsDadosValorBru.asFloat*0.20;
              cdsDadosAliqInss.asFloat:=11;
              cdsDadosVlrInss.asFloat:=vval*11/100;
           end;
//Busca Dependente
           cdsDadosVlrDepe.asFloat:=FieldByName('DEPENDE').asFloat;
        end;
        if cdsDadosTipo.Text<>'N' then begin
           vval:=cdsDadosValorBru.asFloat*0.20;
           cdsDadosFreVal.asFloat:=vval*2.5/100;
        end;
     end;
  end;
end;

procedure TFfrmReciboAutonomo.DBEdit29Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit45.SetFocus;
end;

procedure TFfrmReciboAutonomo.DBEdit34Exit(Sender: TObject);
var vval:Real;
begin
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if (not sbSalvar.Visible) then Exit;

  if vKey=13 then
  begin
     vKey:=0;
     if cdsDadosQtdeDepe.asFloat>0 then begin
        if cdsDadosVlrDepe.asFloat>0 then begin
           cdsDadosVlrDepende.asFloat:=cdsDadosQtdeDepe.asFloat * cdsDadosVlrDepe.asFloat;
        end else cdsDadosVlrDepende.asFloat:=0;
     end else cdsDadosVlrDepende.asFloat:=0;
     if cdsDadosTipo.Text='N' then
        cdsDadosVlrBaseCal.asFloat:=cdsDadosValorBru.asFloat -
                                    cdsDadosVlrInss.asFloat  -
                                    cdsDadosVlrDepende.asFloat
     else cdsDadosVlrBaseCal.asFloat:=(cdsDadosValorBru.asFloat*0.20) -
                                       cdsDadosVlrInss.asFloat -
                                       cdsDadosFreVal.asFloat  -
                                       cdsDadosVlrDepende.asFloat;
     vval:=cdsDadosVlrBaseCal.asFloat;
     if vval>0 then
     begin
        with cdsTabela do
        begin
           if (vval>=FieldByName('IRRFD1').asFloat) and
              (vval<FieldByName('IRRFA1').asFloat) then begin
              cdsDadosAliqIRRF.asFloat:=FieldByName('IRRFV1').asFloat;
              cdsDadosVlrIRRF.asFloat:=vval*FieldByName('IRRFV1').asFloat/100;
              cdsDadosVlrBase.asFloat:=FieldByName('IRRFR1').asFloat;
           end;
           if (vval>=FieldByName('IRRFD2').asFloat) and
              (vval<FieldByName('IRRFA2').asFloat) then begin
              cdsDadosAliqIRRF.asFloat:=FieldByName('IRRFV2').asFloat;
              cdsDadosVlrIRRF.asFloat:=vval*FieldByName('IRRFV2').asFloat/100;
              cdsDadosVlrBase.asFloat:=FieldByName('IRRFR2').asFloat;
           end;
           if (vval>FieldByName('IRRFD3').asFloat) then begin
              cdsDadosAliqIRRF.asFloat:=FieldByName('IRRFV3').asFloat;
              cdsDadosVlrIRRF.asFloat:=vval*FieldByName('IRRFV3').asFloat/100;
              cdsDadosVlrBase.asFloat:=FieldByName('IRRFR3').asFloat;
           end;
        end;
     end;
     vval:=cdsDadosValorBru.asFloat - cdsDadosVlrINSS.asFloat - cdsDadosFreVal.asFloat;
     cdsDadosValorLiq.asFloat:=vval - (cdsDadosVlrIRRF.asFloat - cdsDadosVlrBase.asFloat);
  end;
end;

procedure TFfrmReciboAutonomo.DBEdit44Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if (not sbSalvar.Visible) then Exit;

  cdsDadosCPF.AsString := frCPFC(cdsDadosCPF.asString);
end;

procedure TFfrmReciboAutonomo.rgTipoChange(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if rgTipo.ItemIndex = 1 then
  begin
     Label25.Visible:=True;
     Label28.Visible:=True;
     DBEdit36.Visible:=True;
     DBEdit38.Visible:=True;
     cdsDadosFrePer.asFloat := 2.5;
     if Trim(cdsDadosObs.Text)='' then
       cdsDadosObs.asString:='Serviços de Fretes e Carretos';
  end
  else begin
     Label25.Visible:=False;
     Label28.Visible:=False;
     DBEdit36.Visible:=False;
     DBEdit38.Visible:=False;
     cdsDadosFrePer.asFloat:=0;
     cdsDadosFreVal.asFloat:=0;
  end;
end;

procedure TFfrmReciboAutonomo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmReciboAutonomo);
end;

procedure TFfrmReciboAutonomo.sbImprimirClick(Sender: TObject);
begin
  inherited;
  if qrRPA<>Nil then qrRPA.Destroy; Application.CreateForm(TqrRPA, qrRPA);
  with qrRPA do begin
    qrLogo.Picture:=FMenu.Logo.Picture;
    qrLogo1.Picture:=FMenu.Logo.Picture;
    qrMovim.Close;
    qrMovim.Sql.Strings[2]:='Where Numero='+cdsDadosNumero.Text;
    qrMovim.Open;
    PrinterSettings.PrinterIndex := fImpr('Imp1');
    Preview;
  end;
end;

procedure TFfrmReciboAutonomo.sbIncluirClick(Sender: TObject);
begin

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.asDateTime) then
    exit;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           frmPesquisaCFP.pLimpaCampo;
           cdsDados.Append;
           cdsDadosNumero.AsInteger := frGenerator('FIRPA','NUMERO',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_FIRPA_ID');
           cdsDadosTipo.AsString := 'N';
           cdsDadosData.asDateTime := date;
           DBEdit45.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit45.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
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
    91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmReciboAutonomo.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from firpa where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmReciboAutonomo.sbSalvaTabelaClick(Sender: TObject);
begin
  inherited;
  cdsTabela.Edit;
  cdsDadosEmpreCod.asInteger := 1;
  cdsDadosAcesoCod.asInteger := xAcesso;

  cdsTabela.Edit;

  if cdsTabelaREG_ID.AsInteger = 0 then
    cdsTabelaREG_ID.AsInteger   := frGeneratorFB('GEN_FIRPAPAR_ID');

  cdsTabela.Post;
  cdsTabela.ApplyUpdates(0);
end;

procedure TFfrmReciboAutonomo.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex = 1 then
  begin
    if cdsTabela.IsEmpty then cdsTabela.Append
    else cdsTabela.Edit;
  end;
end;

procedure TFfrmReciboAutonomo.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
    frmPesquisaCFP.edtPesquisa.Text := cdsDadosDescricao.AsString;

  cdsTabela.Close;
  sqlTabela.Sql.Clear;
  sqlTabela.SQL.Add('select * from firpapar where Numero = 0'+cdsDadosNumero.asString);
  cdsTabela.Open;

end;

end.

