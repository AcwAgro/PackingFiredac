unit frmRoman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, ppBands, ppModule, raCodMod, ppClass, ppCtrls, ppVar, ppReport,
  ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppParameter, ppDB, ppProd, ppComm,
  ppRelatv, ppDBPipe, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, System.ImageList,
  Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ACBrBase, ACBrEnterTab,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmRoman = class(TFModelo)
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosHORINI: TStringField;
    sqlDadosHORFIM: TStringField;
    sqlDadosQTDEBIN: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosDATAFIN: TSQLTimeStampField;
    sqlDadosLOTE: TIntegerField;
    sqlDadosPESOPRO: TBCDField;
    sqlDadosPERCA: TBCDField;
    sqlDadosPEREC: TBCDField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosFECHA: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosHORINI: TStringField;
    cdsDadosHORFIM: TStringField;
    cdsDadosQTDEBIN: TBCDField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosDATAFIN: TSQLTimeStampField;
    cdsDadosLOTE: TIntegerField;
    cdsDadosPESOPRO: TBCDField;
    cdsDadosPERCA: TBCDField;
    cdsDadosPEREC: TBCDField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosFECHA: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    dsRomanMer: TDataSource;
    cdsRomanMer: TClientDataSet;
    dspRomanMer: TDataSetProvider;
    dsRomanPro: TDataSource;
    cdsRomanPro: TClientDataSet;
    dspRomanPro: TDataSetProvider;
    cdsRomanMerLANC: TIntegerField;
    cdsRomanMerPRODCOD: TIntegerField;
    cdsRomanMerPRODDES: TStringField;
    cdsRomanMerUNIDADE: TStringField;
    cdsRomanMerQTDE: TBCDField;
    cdsRomanMerCODIAUX: TIntegerField;
    cdsRomanMerCALIBRE: TIntegerField;
    cdsRomanMerPESOLIQ: TBCDField;
    cdsRomanMerPESOREAL: TBCDField;
    cdsRomanMerLANCIT: TIntegerField;
    cdsRomanMerSAFRA: TStringField;
    Panel1: TPanel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit19: TDBEdit;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    sqlDadosCODLOTECLASS: TStringField;
    cdsDadosCODLOTECLASS: TStringField;
    frmPesquisaVarie: TfrmPesquisa;
    sqlDadosOBS: TStringField;
    cdsDadosOBS: TStringField;
    GroupBox7: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox8: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox9: TGroupBox;
    frmPesquisaLocal: TfrmPesquisa;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    DBRadioGroup4: TDBRadioGroup;
    cdsRomanMervCATEGCOD: TIntegerField;
    cdsRomanMervCATEGDES: TStringField;
    cdsRomanMervCATEGCLC: TIntegerField;
    cdsRomanMervCATEGCLD: TStringField;
    cdsRomanMervPerc: TCurrencyField;
    cdsRomanMervpesoReal: TBCDField;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    sqlDadosQTDEMER: TBCDField;
    cdsDadosQTDEMER: TBCDField;
    DBEdit3: TDBEdit;
    cdsDadosvBinsMediaLiq: TBCDField;
    cdsDadosvBinsMediaBru: TBCDField;
    GroupBox10: TGroupBox;
    DBEdit4: TDBEdit;
    cdsRomanMerLANCMANUAL: TStringField;
    cdsRomanMervcodauxi: TIntegerField;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1DATAFIN: TcxGridDBColumn;
    dbDadosDBTableView1LOTE: TcxGridDBColumn;
    dbDadosDBTableView1QTDEBIN: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1prodnom: TcxGridDBColumn;
    dbDadosDBTableView1HORINI: TcxGridDBColumn;
    dbDadosDBTableView1HORFIM: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1PESOPRO: TcxGridDBColumn;
    dbDadosDBTableView1PERCA: TcxGridDBColumn;
    dbDadosDBTableView1PEREC: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1FECHA: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn;
    dbDadosDBTableView1LOCALCOD: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1QTDEMER: TcxGridDBColumn;
    dbDadosDBTableView1vBinsMediaLiq: TcxGridDBColumn;
    dbDadosDBTableView1vBinsMediaBru: TcxGridDBColumn;
    DBEdit23: TcxDBDateEdit;
    DBEdit24: TcxDBDateEdit;
    cdsRomanMerREGLOG: TStringField;
    cdsRomanMerREG_ID: TIntegerField;
    sqlDadosFGENVIAWEB: TStringField;
    sqlDadosPRODUTORCOD: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosFGENVIAWEB: TStringField;
    cdsDadosPRODUTORCOD: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosZZPRODNOM: TStringField;
    cdsDadosZZPRODNOM: TStringField;
    sqlRomanPro: TFDQuery;
    sqlRomanMer: TFDQuery;
    sqlRomanMerLANCIT: TIntegerField;
    sqlRomanMerLANC: TIntegerField;
    sqlRomanMerPRODCOD: TIntegerField;
    sqlRomanMerPRODDES: TStringField;
    sqlRomanMerUNIDADE: TStringField;
    sqlRomanMerQTDE: TBCDField;
    sqlRomanMerCODIAUX: TIntegerField;
    sqlRomanMerCALIBRE: TIntegerField;
    sqlRomanMerPESOLIQ: TBCDField;
    sqlRomanMerPESOREAL: TBCDField;
    sqlRomanMerSAFRA: TStringField;
    sqlRomanMerLANCMANUAL: TStringField;
    sqlRomanMerREGLOG: TStringField;
    sqlRomanMerREG_ID: TIntegerField;
    sqlRomanProLANCIT: TIntegerField;
    sqlRomanProLANC: TIntegerField;
    sqlRomanProPRODCOD: TIntegerField;
    sqlRomanProPRODDES: TStringField;
    sqlRomanProQTDEBIN: TBCDField;
    sqlRomanProPESOBRU: TBCDField;
    sqlRomanProPESOLIQ: TBCDField;
    sqlRomanProLOTEENTRA: TIntegerField;
    sqlRomanProSAFRA: TStringField;
    sqlRomanProREGLOG: TStringField;
    sqlRomanProREG_ID: TIntegerField;
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
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure frmPesquisaVarieExit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsRomanMerBeforePost(DataSet: TDataSet);
    procedure cdsRomanProBeforePost(DataSet: TDataSet);
    procedure frmPesquisaLocalExit(Sender: TObject);
    procedure DBRadioGroup4Exit(Sender: TObject);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GroupBox2Exit(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure cdsRomanMerCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vPesoVar: Double;
    vLancManual, vEhRelatorio: Boolean;
    procedure fSomaBin;
    procedure fSomaPeso;
    procedure fClassifacao(vtp:Boolean = True);

  public
    { Public declarations }
    procedure pAbrirTela(vatLanc: String); //Vem do estoque
  end;

var
  FfrmRoman: TFfrmRoman;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq, rlPSPLote;

procedure TFfrmRoman.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaVarie.pInicia('ttVariedade', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaLocal.pInicia('ttLocal', TForm(Sender),7,147,GroupBox9,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRoman.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRoman.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;

  if pcItem.ActivePageIndex = 0 then Exit;

  if (cdsDadosQtdeBin.asFloat <> 0) then
  begin
    cdsDadosvBinsMediaBru.AsFloat := cdsDadosPesoPro.asFloat / cdsDadosQtdeBin.asFloat;
    cdsDadosvBinsMediaLiq.AsFloat := cdsDadosPesoLiq.asFloat / cdsDadosQtdeBin.asFloat;
  end;

end;

procedure TFfrmRoman.cdsRomanMerBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanMerLanc.asInteger   = 0 then  cdsRomanMerLanc.asInteger:= cdsDadosLanc.asInteger;
  if cdsRomanMerLancit.asInteger = 0 then  cdsRomanMerLancit.asInteger:= frGenerator('ROMANMER','LANCIT',1);
  if cdsRomanMerREG_ID.asInteger = 0 then cdsRomanMerREG_ID.asInteger := frGeneratorFB('GEN_ROMANMER_ID');

  if vLancManual then
    cdsRomanMer.FieldByName('LancManual').AsString := 'M';
  vLancManual := False;

end;

procedure TFfrmRoman.cdsRomanMerCalcFields(DataSet: TDataSet);
var vcateg: String;
begin
//  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if (sbSalvar.Visible) then Exit;
  if not vEhRelatorio then Exit;
  if cdsDados.State = dsBrowse then
  begin
    if cdsDadosPESOLIQ.asFloat <> 0 then
    begin
      cdsRomanMervPesoReal.asFloat := cdsRomanMerQTDE.asFloat * cdsRomanMerPESOLIQ.asFloat;
      cdsRomanMervPerc.asFloat := cdsRomanMervPesoReal.asFloat * 100 / cdsDadosPESOLIQ.asFloat;
    end;

    vcateg := cdsRomanMerPRODCOD.asString;

    if (StrToIntDef(vcateg,0) > 0) then
    begin
      vcateg := IntToStr(StrToIntDef(Copy(vcateg, length(vcateg)-4, 2),0));
      fSql(1,1,['Select descricao, variecod, variedes from cadcateg where codigo = 0'+vcateg],1);
      if (dm.qrSql1.RecordCount > 0) then
      begin
        cdsRomanMervCATEGCOD.asInteger := StrToIntDef(vcateg,0);
        cdsRomanMervCATEGDES.asString  := 'SubCategoria ('+dm.qrSql1.Fields[0].asString+')';
        cdsRomanMervCATEGCLC.asInteger := dm.qrSql1.Fields[1].asInteger;
        cdsRomanMervCATEGCLD.asString  := 'Categoria ('+dm.qrSql1.Fields[2].asString+')';;
      end;
    end;


{     if (cdsRomanMerCODIAUX.AsInteger = 0) then
     begin
       fSql(1,2,['Select CodVelho From Cadprodu Where Codigo=0'+cdsRomanMerPRODCOD.AsString],1);
       if dm.qrSql2.Fields[0].asInteger > 0 then
         cdsRomanMervcodauxi.AsInteger := dm.qrSql2.Fields[0].asInteger
       else
         cdsRomanMervcodauxi.AsInteger := cdsRomanMerPRODCOD.AsInteger;
     end
     else
       cdsRomanMervcodauxi.AsInteger := cdsRomanMerCODIAUX.AsInteger;}
  end;
end;

procedure TFfrmRoman.cdsRomanProBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsRomanProLanc.asInteger   = 0 then  cdsRomanProLanc.asInteger  := cdsDadosLanc.asInteger;
  if cdsRomanProLancit.asInteger = 0 then cdsRomanProLancit.asInteger := frGenerator('ROMANPRO','LANCIT',1);
  if cdsRomanProREG_ID.asInteger = 0 then cdsRomanProREG_ID.asInteger := frGeneratorFB('GEN_ROMANPRO_ID');
end;

procedure TFfrmRoman.dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
{  if (cdsDadosFECHA.asString <> 'S') then
  begin
    With dbDados do
    begin
      Canvas.Font.Color := clRed;
      Canvas.Brush.Color := clBtnFace;
      DefaultDrawDataCell(Rect, Columns[DataCol].Field, State);
    end;
  end;}
end;

procedure TFfrmRoman.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsRomanPro.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsRomanPro.FieldByName('QtdeBin').Text,1,3)='999' then
         begin
           cdsRomanPro.Delete;
           DBGrid2.SetFocus;
           Abort;
         end;
         if cdsRomanPro.FieldByName('QtdeBin').asFloat < 0.00 then
         begin
           ShowMessage('Opção Inválida!');
           Abort;
         end;
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
             ShowMessage('Recibo não encontrado!');
             Abort;
           end;
         end
         else begin
           if (vPesoVar > 0) then
             cdsRomanPro.FieldByName('PesoBru').asFloat := vPesoVar;
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
            cdsRomanPro.Edit;
            cdsRomanPro.FieldByName('ProdCod').asString := xpqResul;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex:=3;
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

procedure TFfrmRoman.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid1.ReadOnly := cdsDados.State = dsBrowse;
  cdsRomanPro.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmRoman.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;

  if cdsRomanPro.State in [dsInsert, dsEdit] then exit;
  if (sbSalvar.Visible) then fSomaBin;
end;

procedure TFfrmRoman.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>5 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmRoman.DBGrid2ColExit(Sender: TObject);
var vcodigo:String;
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsRomanMer.Edit;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(cdsRomanMer.FieldByName('ProdCod').Text,1,3)='999' then begin
           cdsRomanMer.Delete; fSomaPeso;
           //if frSalv then sbIncluirClick(sbSalvar) else DBEdit16.SetFocus;
           DBEdit9.SetFocus;
           Exit;
         end;
         //Verificar se digitou so categoria e calibre
         if (Length(Trim(cdsRomanMer.FieldByName('ProdCod').asString)) = 5) then
         begin
           vcodigo := cdsDadosVarieCod.AsString + Copy(cdsRomanMer.FieldByName('ProdCod').asString,1,5);
           cdsRomanMer.FieldByName('ProdCod').asInteger := StrToIntDef(vcodigo,0);
         end;
         //Verificar se é a variedade acima digitada
         if cdsDadosVarieCod.AsString <> Copy(cdsRomanMer.FieldByName('ProdCod').asString,1, Length(cdsDadosVarieCod.AsString)) then
         begin
           vcodigo := cdsDadosVarieCod.AsString + Copy(cdsRomanMer.FieldByName('ProdCod').asString,3,5);
           cdsRomanMer.FieldByName('ProdCod').asInteger := StrToIntDef(vcodigo,0);
         end;

         if fTra(1,['Select Descricao,Calibre,PesoLiq From CadProdu Where Codigo=0'+cdsRomanMer.FieldByName('ProdCod').Text],1) then
         begin
            cdsRomanMer.FieldByName('ProdDes').Text:=dm.qrSqlTra.Fields[0].Text;
            cdsRomanMer.FieldByName('Calibre').asFloat:=dm.qrSqlTra.Fields[1].asFloat;
            cdsRomanMer.FieldByName('PesoLiq').asFloat:=dm.qrSqlTra.Fields[2].asFloat;
            DBGrid2.SelectedIndex:=1;
         end else begin
            fPqProduto(cdsDadosVarieCod.asString);
            cdsRomanMer.Edit;
            cdsRomanMer.FieldByName('ProdCod').asString := xpqResul;
            DBGrid2.SetFocus;
            DBGrid2.SelectedIndex:=0;
            Abort;
         end;
       end;
    1: begin
         cdsRomanMer.Post;
         cdsRomanMer.Next;
         if cdsRomanMer.Eof then cdsRomanMer.Append;
         DBGrid2.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmRoman.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  DBGrid2.ReadOnly := cdsDados.State = dsBrowse;

  cdsRomanMer.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFfrmRoman.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if cdsRomanMer.State in [dsInsert, dsEdit] then exit;
  if (sbSalvar.Visible) then fSomaPeso;

end;

procedure TFfrmRoman.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key in ['0'..'9'] then
  begin
    if (not sbSalvar.Visible) then Exit;
    if DBGrid2.SelectedIndex = 1 then
      vLancManual := True;
  end;

  if key =#13 then begin
     if DBGrid2.SelectedIndex<>5 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFfrmRoman.DBRadioGroup4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  if DBGrid1.Canfocus then
    DBGrid1.SetFocus;
end;

procedure TFfrmRoman.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsRomanPro.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsRomanPro.Delete;
end;

procedure TFfrmRoman.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRoman);
end;

procedure TFfrmRoman.sbIncluirClick(Sender: TObject);
var vlot,vlanc:Integer;
begin

  vEhRelatorio := False;

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime) then
    exit;


  if TComponent(Sender).Tag = 18 then
  begin
    vRelEmail := '';
    vEhRelatorio := True;
    pcItem.ActivePageIndex := 1;
    gdsDetalhe := cdsRomanPro;
    gdsSubDetalhe := cdsRomanMer;
    if (cdsRomanPro.RecordCount > 0) then
      vRelEmail := fBus(1,['Select email from cadforne where codigo = 0'+cdsRomanPro.FieldByName('ProdCod').AsString],1)
  end;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;
  end;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
           cdsRomanMer.IndexFieldNames := 'LANC;LANCIT';
           frmPesquisaVarie.pLimpaCampo;
           frmPesquisaLocal.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger     := frGenerator('ROMAN','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ROMAN_ID');
           cdsDadosData.AsDateTime    := date;
           cdsDadosDataFin.AsDateTime := date;
           cdsDadosHorIni.asString    := FormatDateTime('HH:MM', Time);
           cdsDadosSafra.AsString     := xAno;
           cdsDadosLocalCod.AsInteger := 1;
           frmPesquisaLocal.edtPesquisa.Text := '1';

           if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
             cdsDadosLote.AsInteger := 0
           else
             cdsDadosLote.AsInteger := cdsDadosLanc.AsInteger;

           pcItem.OnChange(pcItem);
           if frmPesquisaVarie.edtPesquisa.CanFocus then
             frmPesquisaVarie.edtPesquisa.SetFocus;
         end;
     13: begin
           cdsRomanMer.IndexFieldNames := 'LANC;LANCIT';
           cdsDados.Edit;
           dbEdit23.SetFocus;
         end;
     14: begin
           fSql(1,2,['Delete From CLASSIFM   Where Integra=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From CLASSIF    Where Integra=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From ROMANEMBAL Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From ROMANMARCA Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From ROMANMER   Where Lanc=0'+cdsDadosLanc.asString],1);
           fSql(1,2,['Delete From ROMANPRO   Where Lanc=0'+cdsDadosLanc.asString],1);

           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
//            vlanc := cdsDadosLanc.asInteger;
             if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
             begin
               vlot := frGenerator('ROMAN','LOTE',0,xAno+Trim('0'+cdsDadosVarieCod.asString)) + 1;
               if cdsDadosLote.AsInteger = vlot then
                 cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',1,xAno+Trim('0'+cdsDadosVarieCod.asString));
             end;

              cdsRomanMer.IndexFieldNames := 'LANC;PRODCOD;LANCIT';

             fSomaPeso;
             cdsDadosVarieCod.AsInteger := frmPesquisaVarie.vpCodPrincipal;
             cdsDadosVarieDes.AsString  := frmPesquisaVarie.vpDescricao;
             cdsDadosLocalCod.AsInteger := frmPesquisaLocal.vpCodPrincipal;
             if cdsDadosLocalCod.asInteger < 1 then
               cdsDadosLocalCod.asInteger := 1;
             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             cdsDados.Post;
             cdsDados.ApplyUpdates(0);
             cdsRomanPro.ApplyUpdates(0);
             cdsRomanMer.ApplyUpdates(0);

             fClassifacao;

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

procedure TFfrmRoman.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select roman.*, '
                  +' Cast(SubString((SELECT LIST(romanpro.proddes, '', '') from romanpro where romanpro.lanc = ROMAN.LANC) from 1 for 50) as varchar(50)) AS ZZPRODNOM'
                  +' from roman '
                  +' where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)
                  +' Order by roman.lanc ');
  cdsDados.Open;
  cdsDados.First;
end;

procedure TFfrmRoman.frmPesquisaLocalExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    if (cdsDadosLocalCod.AsInteger <> frmPesquisaLocal.vpCodPrincipal) then
    begin
      cdsDadosLocalCod.AsInteger := frmPesquisaLocal.vpCodPrincipal;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFfrmRoman.frmPesquisaVarieExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if pcItem.ActivePageIndex = 1 then
  begin
    if (cdsDadosVarieCod.AsInteger <> frmPesquisaVarie.vpCodPrincipal) or
       (cdsDadosLote.asInteger = 0) then
    begin
      cdsDadosVarieCod.AsInteger := frmPesquisaVarie.vpCodPrincipal;
      if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
        cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',0,xAno+Trim('0'+cdsDadosVarieCod.asString)) + 1
      else
        cdsDadosLote.AsInteger := cdsDadosLanc.AsInteger;

      vPesoVar := StrToFloatDef(frmPesquisaVarie.vpCampo_1,0);
    end;
  end;
end;

procedure TFfrmRoman.fSomaBin;
var vqtd: Double;
begin
  if (cdsdados.State in [dsInsert, dsEdit]) then
  begin
    cdsRomanPro.First;
    while not cdsRomanPro.eof do
    begin
      if (cdsRomanProQtdeBin.asFloat = 0) then
        cdsRomanPro.Delete;
      cdsRomanPro.Next;
    end;

    vqtd := 0;
    cdsRomanPro.First;
    while not cdsRomanPro.Eof do
    begin
      vqtd := vqtd + cdsRomanProQtdeBin.asFloat;
      cdsRomanPro.Next;
    end;
    cdsDadosQtdeBin.asFloat := vqtd;
  end;
end;

procedure TFfrmRoman.fSomaPeso;
var vdif, vpesoliq, vpesopro, vpesobru, vpesoreal, vqtdemer: double;
    vidp, vidm: Integer;
begin
  vidp := cdsRomanProLancit.asInteger;
  vidm := cdsRomanMerLancit.asInteger;
  cdsRomanMer.DisableControls;

  if (cdsdados.State in [dsInsert, dsEdit]) then
  begin
    cdsRomanMer.First;
    while not cdsRomanMer.Eof do
    begin
      if (cdsRomanMerQtde.asFloat = 0) then
        cdsRomanMer.Delete;
      cdsRomanMer.Next;
    end;

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

    vqtdemer := 0;
    cdsRomanMer.First;
    while not cdsRomanMer.Eof do
    begin
      vpesoliq := vpesoliq + (cdsRomanMerQtde.asFloat * cdsRomanMerPesoLiq.asFloat);
      vqtdemer := vqtdemer + cdsRomanMerQtde.asFloat;
      cdsRomanMer.Next;
    end;
    cdsDados.FieldByName('PesoLiq').asFloat:=vpesoliq;
    cdsDados.FieldByName('QtdeMer').asFloat:=vqtdemer;

//    vdif := cdsDadosPesoPro.asFloat - cdsDadosPerca.asFloat - cdsDadosPesoLiq.asFloat;
    vdif := cdsDadosPesoPro.asFloat - cdsDadosPesoLiq.asFloat;
    if vdif < 0 then vdif := 0;
    if vpesoliq < 1 then vpesoliq := 1;

    cdsRomanMer.First;
    while not cdsRomanMer.Eof do
    begin
       cdsRomanMer.Edit;
       vpesoreal := (cdsRomanMerQtde.asFloat * cdsRomanMerPesoLiq.asFloat);
       cdsRomanMer.FieldbyName('PesoReal').asFloat:= vpesoreal ;//+ (vpesoreal * vdif / vpesoliq);
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

  cdsRomanMer.EnableControls;

  cdsRomanPro.Locate('Lancit', vidp, []);
  cdsRomanMer.Locate('Lancit', vidm, []);

end;

procedure TFfrmRoman.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsRomanPro.Append;
  dbGrid1.SetFocus;
end;

procedure TFfrmRoman.MenuItem1Click(Sender: TObject);
begin
  inherited;
  cdsRomanMer.Append;
  dbGrid2.SetFocus;
end;

procedure TFfrmRoman.MenuItem2Click(Sender: TObject);
begin
  inherited;
  if cdsRomanMer.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsRomanMer.Delete;
end;

procedure TFfrmRoman.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsRomanPro.close;
    sqlRomanPro.SQL.Clear;
    sqlRomanPro.SQL.Add('select * from romanpro');
    sqlRomanPro.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlRomanPro.SQL.Add('order by lanc');
    cdsRomanPro.Open;

    cdsRomanMer.close;
    sqlRomanMer.SQL.Clear;
    sqlRomanMer.SQL.Add('select * from romanmer');
    sqlRomanMer.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    cdsRomanMer.Open;

    frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);
  end;
end;

procedure TFfrmRoman.fClassifacao(vtp:Boolean = True);
var vper:Double; vlan,vfil:Integer; vtes:String;
begin
  try
    fSql(1,1,['Delete From Classif Where Integra='+cdsDadosLanc.Text],1);
    fSql(1,1,['Delete From ClassifM Where Integra='+cdsDadosLanc.Text],1);
    if vtp then
    begin
      dm.TClassif.Open;
      dm.TClassifMer.Open;
      cdsRomanPro.DisableControls;
      cdsRomanMer.DisableControls;
      dm.TClassif.DisableControls;
      dm.TClassifMer.DisableControls;

      vlan:=frGenerator('CLASSIF','LANC',1);
      cdsRomanPro.First;
      fBar(3,cdsRomanPro.RecordCount,'');
      while not cdsRomanPro.Eof do
      begin
        fBar(4,1,'');
        if cdsDadosQtdeBin.asFloat > 0.00 then
          vper:=cdsRomanPro.FieldByName('QtdeBin').asFloat/cdsDadosQtdeBin.asFloat
        else
          vper := 1;
        vlan:=vlan+1;
        dm.TClassif.Append;
        {for vfil:=0 to cdsDados.FieldCount-1 do begin
          vtes:=cdsDados.Fields[vfil].FieldName;
          try
            dm.TClassif.FieldByName(vtes).Value:=cdsDados.FieldByName(vtes).Value;
          except
          end;
        end;}
        dm.TClassif.FieldByName('Lanc').asInteger    :=vlan;
        dm.TClassif.FieldByName('REG_ID').asInteger  := frGeneratorFB('GEN_CLASSIF_ID');
        dm.TClassif.FieldByName('Integra').asInteger :=cdsDados.FieldByName('Lanc').asInteger;
        dm.TClassif.FieldByName('Safra').asString    :=cdsDados.FieldByName('Safra').AsString;
        dm.TClassif.FieldByName('Codigo').asInteger  :=cdsRomanPro.FieldByName('ProdCod').asInteger;
        dm.TClassif.FieldByName('Descricao').asString:=cdsRomanPro.FieldByName('ProdDes').asString;
        dm.TClassif.FieldByName('QtdeBin').asFloat   :=cdsRomanPro.FieldByName('QtdeBin').asFloat;
        dm.TClassif.FieldByName('PesoPro').asFloat   :=frDeci(cdsDados.FieldByName('PesoPro').asFloat*vper,3);
        dm.TClassif.FieldByName('PesoLiq').asFloat   :=frDeci(cdsDados.FieldByName('PesoLiq').asFloat*vper,3);
        dm.TClassif.FieldByName('PesoBru').asFloat   :=frDeci(cdsDados.FieldByName('PesoBru').asFloat*vper,3);
        dm.TClassif.FieldByName('Perec').asFloat     :=frDeci(cdsDados.FieldByName('Perec').asFloat*vper,3);
        dm.TClassif.FieldByName('Perca').asFloat     :=frDeci(cdsDados.FieldByName('Perca').asFloat*vper,3);
        dm.TClassif.FieldByName('LocalCod').asInteger:=cdsDados.FieldByName('LocalCod').asInteger;
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

        dm.TClassif.Post;
        cdsRomanMer.First;
        while not cdsRomanMer.Eof do
        begin
          dm.TClassifMer.Append;
          dm.TClassifMer.FieldByName('Lanc').asInteger    :=vlan;
          dm.TClassifMer.FieldByName('REG_ID').asInteger  := frGeneratorFB('GEN_CLASSIFM_ID');
          dm.TClassifMer.FieldByName('Integra').asInteger :=cdsDados.FieldByName('Lanc').asInteger;
          dm.TClassifMer.FieldByName('Lote').asInteger    :=cdsDados.FieldByName('Lote').asInteger;
          dm.TClassifMer.FieldByName('Safra').asString    :=cdsDados.FieldByName('Safra').AsString;
          dm.TClassifMer.FieldByName('CodiAux').asInteger :=cdsRomanMer.FieldByName('CodiAux').asInteger;
          dm.TClassifMer.FieldByName('ProdCod').asInteger :=cdsRomanMer.FieldByName('ProdCod').asInteger;
          dm.TClassifMer.FieldByName('ProdDes').asString  :=cdsRomanMer.FieldByName('ProdDes').asString;
          dm.TClassifMer.FieldByName('Calibre').asString  :=cdsRomanMer.FieldByName('Calibre').asString;
          dm.TClassifMer.FieldByName('QtdeEnt').asFloat   :=frDeci(cdsRomanMer.FieldByName('Qtde').asFloat*vper,3);
//          dm.TClassifMer.FieldByName('PesoReal').asFloat  :=cdsRomanMer.FieldByName('PesoReal').asFloat*vper;
          dm.TClassifMer.FieldByName('PesoReal').asFloat  :=frDeci((cdsRomanMer.FieldByName('Qtde').asFloat*vper) * cdsRomanMer.FieldByName('PesoLiq').asFloat,3);
          dm.TClassifMer.Post;
          cdsRomanMer.Next;
        end;
        cdsRomanPro.Next;
      end;
      cdsRomanPro.EnableControls;
      cdsRomanMer.EnableControls;
      dm.TClassif.EnableControls;
      dm.TClassifMer.EnableControls;
      dm.TClassif.ApplyUpdates(-1);
      dm.TClassifMer.ApplyUpdates(-1);

      dm.TClassif.Close;
      dm.TClassifMer.Close;
      fBar(2,0,'');
    end;
  except
    on E:Exception do frPerg(PChar('Falha Classificar! '+ E.Message), 'OK');
  end;
end;

procedure TFfrmRoman.GroupBox2Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
    exit;

  if (StrToIntDef(cdsDadosLote.AsString,0) > 0) then
  begin
    if (fBus(1,['Select count(*) from Roman where LANC <> 0' +cdsDadosLanc.AsString+ 'and LOTE = 0'+cdsDadosLote.AsString],1) > 0) then
    begin

      if not frPerg('Já existe romaneio com esse LOTE!'+#13+'Deseja continuar?', 'SN') then
      begin
        dbEdit15.SetFocus;
        exit;
      end;
    end;
  end;

end;

procedure TFfrmRoman.pAbrirTela(vatLanc: String);
var vlanc: Integer;
begin
  inherited;
  if cdsDados.Active  then vlanc := cdsDadosLanc.asInteger
  else vlanc := 0;
  pcItem.ActivePageIndex := 0;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select roman.*, '
                  +' Cast(SubString((SELECT LIST(romanpro.proddes, '', '') from romanpro where romanpro.lanc = ROMAN.LANC) from 1 for 50) as varchar(50)) AS ZZPRODNOM'
                  +' from roman '
                  +' where lanc = 0'+vatLanc
                  +' Order by roman.lanc desc');
  cdsDados.Open;
  cdsDados.EnableControls;
  if vlanc = 0 then cdsDados.First
  else cdsDados.Locate('Lanc', vlanc, []);
  pcItem.ActivePageIndex := 1;
end;

end.

