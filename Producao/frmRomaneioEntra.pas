unit frmRomaneioEntra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ACBrBase, ACBrEnterTab, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmRomaneioEntra = class(TFModelo)
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    dspDetalhe: TDataSetProvider;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosPLACA: TStringField;
    sqlDadosPLACADES: TStringField;
    sqlDadosPESO: TBCDField;
    sqlDadosBINSQTD: TBCDField;
    sqlDadosNOTA: TIntegerField;
    sqlDadosQTDE: TBCDField;
    sqlDadosBINSLIQ: TBCDField;
    sqlDadosBINSTAR: TBCDField;
    sqlDadosBINSMED: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosRECIBO: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosPLACA: TStringField;
    cdsDadosPLACADES: TStringField;
    cdsDadosPESO: TBCDField;
    cdsDadosBINSQTD: TBCDField;
    cdsDadosNOTA: TIntegerField;
    cdsDadosQTDE: TBCDField;
    cdsDadosBINSLIQ: TBCDField;
    cdsDadosBINSTAR: TBCDField;
    cdsDadosBINSMED: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosRECIBO: TIntegerField;
    cdsDadosSAFRA: TStringField;
    DBEdit9: TDBEdit;
    cdsDetalheLANC: TIntegerField;
    cdsDetalheVARIECOD: TIntegerField;
    cdsDetalheVARIEDES: TStringField;
    cdsDetalheVARIEQTD: TBCDField;
    cdsDetalheVARIEPES: TBCDField;
    cdsDetalheVARIECHE: TBCDField;
    cdsDetalheLANCIT: TIntegerField;
    cdsDetalheBINSCOD: TIntegerField;
    cdsDetalheBINSDES: TStringField;
    cdsDetalheSAFRA: TStringField;
    Label6: TLabel;
    edSoma: TEdit;
    PopupMenu1: TPopupMenu;
    Inserir1: TMenuItem;
    Excluir1: TMenuItem;
    RzPanel3: TRzPanel;
    SpeedButton1: TSpeedButton;
    dsEtiqBins: TDataSource;
    cdsEtiqBins: TClientDataSet;
    dspEtiqBins: TDataSetProvider;
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
    sqlDadosIMPORTEMP: TIntegerField;
    sqlDadosIMPORTLANC: TIntegerField;
    cdsDadosIMPORTEMP: TIntegerField;
    cdsDadosIMPORTLANC: TIntegerField;
    sqlDadosIMPORTENV: TIntegerField;
    cdsDadosIMPORTENV: TIntegerField;
    sqlDadosOBS: TStringField;
    cdsDadosOBS: TStringField;
    GroupBox11: TGroupBox;
    DBEdit1: TDBEdit;
    sqlDadosLOTE_CFO: TStringField;
    cdsDadosLOTE_CFO: TStringField;
    cdsDetalheLOTE_PRO: TStringField;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    sqlDadosEMBALQTD: TBCDField;
    sqlDadosEMBALCOD: TIntegerField;
    cdsDadosEMBALQTD: TBCDField;
    cdsDadosEMBALCOD: TIntegerField;
    sqlDadosPESOZERO: TStringField;
    cdsDadosPESOZERO: TStringField;
    sqlDadosVLRFRETE: TBCDField;
    cdsDadosVLRFRETE: TBCDField;
    btnRecalcular: TButton;
    pnlPalet: TPanel;
    GroupBox8: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox1: TGroupBox;
    frmPesquisaPalet: TfrmPesquisa;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox4: TGroupBox;
    frmPesquisaPro: TfrmPesquisa;
    GroupBox9: TGroupBox;
    frmPesquisaLocal: TfrmPesquisa;
    gbFrete: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox6: TGroupBox;
    frmPesquisaMot: TfrmPesquisa;
    DBEdit16: TcxDBDateEdit;
    dbDadosDBTableView1RECIBO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1PLACA: TcxGridDBColumn;
    dbDadosDBTableView1PLACADES: TcxGridDBColumn;
    dbDadosDBTableView1PESO: TcxGridDBColumn;
    dbDadosDBTableView1BINSQTD: TcxGridDBColumn;
    dbDadosDBTableView1QTDE: TcxGridDBColumn;
    dbDadosDBTableView1LOCALCOD: TcxGridDBColumn;
    dbDadosDBTableView1BINSLIQ: TcxGridDBColumn;
    dbDadosDBTableView1LOTE_CFO: TcxGridDBColumn;
    dbDadosDBTableView1BINSTAR: TcxGridDBColumn;
    dbDadosDBTableView1BINSMED: TcxGridDBColumn;
    dbDadosDBTableView1NOTA: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1IMPORTEMP: TcxGridDBColumn;
    dbDadosDBTableView1IMPORTLANC: TcxGridDBColumn;
    dbDadosDBTableView1IMPORTENV: TcxGridDBColumn;
    dbDadosDBTableView1OBS: TcxGridDBColumn;
    dbDadosDBTableView1EMBALQTD: TcxGridDBColumn;
    dbDadosDBTableView1EMBALCOD: TcxGridDBColumn;
    dbDadosDBTableView1PESOZERO: TcxGridDBColumn;
    dbDadosDBTableView1VLRFRETE: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDetalheIMPORTLANC: TIntegerField;
    cdsDetalheREGLOG: TStringField;
    cdsDetalheREG_ID: TIntegerField;
    sqlDetalhe: TFDQuery;
    sqlEtiqBins: TFDQuery;
    sqlDetalheLANCIT: TIntegerField;
    sqlDetalheLANC: TIntegerField;
    sqlDetalheVARIECOD: TIntegerField;
    sqlDetalheVARIEDES: TStringField;
    sqlDetalheVARIEQTD: TBCDField;
    sqlDetalheVARIEPES: TBCDField;
    sqlDetalheVARIECHE: TBCDField;
    sqlDetalheBINSCOD: TIntegerField;
    sqlDetalheBINSDES: TStringField;
    sqlDetalheSAFRA: TStringField;
    sqlDetalheIMPORTLANC: TIntegerField;
    sqlDetalheLOTE_PRO: TStringField;
    sqlDetalheREGLOG: TStringField;
    sqlDetalheREG_ID: TIntegerField;
    sqlDadosHORA: TStringField;
    sqlDadosQTDELIQ: TFloatField;
    DBEdit12: TDBEdit;
    cdsDadosQTDELIQ: TFloatField;
    cdsDadosHORA: TStringField;
    dbDadosDBTableView1QTDELIQ: TcxGridDBColumn;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure cdsDetalheBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure btnRecalcularClick(Sender: TObject);
    procedure GroupBox5Exit(Sender: TObject);
  private
    { Private declarations }
    vcodant: Integer;
    varPesoPalet, varPesoBins: Boolean;

    procedure fSomaBin;
    procedure fCalculaLiq;
    procedure fCalculaLiqPalet;
    procedure fCalculaLiqBins;
    procedure fIntegraFrete(vSalva:Boolean);
  public
    { Public declarations }
  end;

var
  FfrmRomaneioEntra: TFfrmRomaneioEntra;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmRomaneioEntra.FormCreate(Sender: TObject);
begin
  inherited;
  //Verifica se parametro para peso por palet
  varPesoPalet := (fBus(1,['Select valor From zGenerator Where Tabela = ''ENTRADA'' and Campo = ''PESO_PALET'''],1) = 1);
  gbFrete.Visible := (fBus(1,['Select valor From zGenerator Where Tabela = ''ENTRADA'' and Campo = ''FRETE'''],1) = 1);
  varPesoBins := (fBus(1,['Select valor From zGenerator Where Tabela = ''ENTRADA'' and Campo = ''PESO_BINS'''],1) = 1);

  //  Label9.Visible    := not varPesoPalet;
  DBEdit4.ReadOnly  := varPesoPalet;
  GroupBox2.Visible := not varPesoPalet;
  GroupBox1.Visible := varPesoPalet;
  GroupBox8.Visible := varPesoPalet;
  pnlPalet.Visible  := varPesoPalet;
  //dbGrid1.Columns[6].Visible := not varPesoPalet;
  dbGrid1.Columns[7].Visible := not varPesoPalet;
//  if varPesoPalet then
//    dbgrid1.Height := 220
//  else
//    dbgrid1.Height := 265;
  //Fim

  gdsDetalhe := cdsDetalhe;
  frmPesquisaPro.pInicia('ttProdutor',TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista',TForm(Sender),7,147,GroupBox6,true);
  frmPesquisaLocal.pInicia('ttLocal',TForm(Sender),7,147,GroupBox9,true);
  frmPesquisaPalet.pInicia('ttTipoBins',TForm(Sender),7,147,GroupBox1,true);

  btnRecalcular.Visible := False;
  if (xAcess = 'ACWebAgro') then
    btnRecalcular.Visible := True;

  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomaneioEntra.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;


procedure TFfrmRomaneioEntra.cdsDetalheBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsDetalheLanc.asInteger = 0)   then cdsDetalheLanc.asInteger := cdsDadosLanc.asInteger;
  if (cdsDetalheLancit.asInteger = 0) then cdsDetalheLancit.asInteger := frGenerator('ENTREVAR','LANCIT',1);
  if cdsDetalheREG_ID.asInteger = 0 then cdsDetalheREG_ID.asInteger := frGeneratorFB('GEN_ENTREVAR_ID');
end;

procedure TFfrmRomaneioEntra.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  
  frmPesquisaPalet.edtPesquisa.SetFocus;

end;

procedure TFfrmRomaneioEntra.DBEdit4Enter(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if (cdsDadosEmbalQtd.AsInteger = 0) then Exit;
  fSomaBin;
  fCalculaLiq;
end;

procedure TFfrmRomaneioEntra.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  fSomaBin;
  fCalculaLiq;
  DBEdit1.SetFocus;
end;

procedure TFfrmRomaneioEntra.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsDetalhe.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(cdsDetalheVarieQtd.Text,1,3)='999' then
         begin
           cdsDetalhe.Delete;
           fSomaBin;
           if varPesoPalet then
             DBEdit10.SetFocus
           else
             DBEdit4.SetFocus;
           Abort;
         end;
         if cdsDetalheVarieQtd.asInteger=0 then
         begin
            DBGrid1.SelectedIndex := 0;
            cdsDetalhe.Edit;
            DBGrid1.SetFocus;
            DBGrid1.SelectedIndex:=0;
            Abort;
         end;

         if (cdsDetalheVarieCod.asInteger = 0) and (vcodant <> 0) then
           cdsDetalheVarieCod.asInteger := vcodant;

         if cdsDetalheBinsCod.asInteger<1 then cdsDetalheBinsCod.asInteger:=1;
       end;
    1: begin
         if fTra(1,['Select Descricao,PesoLiq From CadVarie Where Ativo=''S'' and Codigo=0'+cdsDetalheVarieCod.Text],1) then
         begin
            vcodant := cdsDetalheVarieCod.asInteger;
            cdsDetalheVarieDes.Text:=dm.qrSqlTra.Fields[0].Text;
            cdsDetalheVarieChe.asFloat := dm.qrSqlTra.Fields[1].asFloat;

            //Se tiver informado peso desconsidera o da grid
{            if (cdsDadosPESO.AsFloat = 0) then
            begin
              if (cdsDetalheVarieChe.asFloat < 1) then
                cdsDetalheVarieChe.asFloat := dm.qrSqlTra.Fields[1].asFloat;
            end
            else begin
             if (cdsDadosPesozero.AsString = '0') then
               cdsDetalheVarieChe.asFloat :=0;
            end;
}
            //Retorna CFO da variedade
            cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
            if (cdsDadosProdCod.asInteger > 0) and (not varPesoPalet) then
            begin
               cdsDetalheLote_pro.asString := fBus(1,['Select d.Lote_pro'+
                                                      '  from previs m, previsco d'+
                                                      ' where (m.lanc = d.lanc)'+
                                                      ' and m.prodcod = 0'+cdsDadosProdCod.asString+
                                                      ' and m.safra = '+QuotedStr(Copy(DateToStr(dtInicial.Date),7,4))+
                                                      ' and d.variecod = 0'+cdsDetalheVarieCod.AsString+
                                                      ' order by m.lanc desc'],1);
            end;

         end
         else begin
           fPqVarie;
           cdsDetalhe.Edit;
           cdsDetalheVarieCod.asString := xpqResul;
           DBGrid1.SetFocus;
           DBGrid1.SelectedIndex:=1;
           Abort;
         end;
       end;
    3: begin
         if (cdsDadosPESO.AsFloat <> 0) and (cdsDadosPesozero.AsString = '0') then
           cdsDetalheVarieChe.asFloat := 0;

         if (cdsDetalheVarieChe.asFloat <> 0) then
         begin
           cdsDadosPesozero.AsString  := '';
           if varPesoPalet then
           begin
             if (cdsDetalheVarieQtd.asFloat <> 0) then
               cdsDetalheVariePes.asFloat:= 0 //cdsDetalheVarieChe.asFloat / cdsDetalheVarieQtd.asFloat
           end
           else
             cdsDetalheVariePes.asFloat:= cdsDetalheVarieQtd.asFloat * cdsDetalheVarieChe.asFloat;
         end;

       end;
    4: begin
         if fTra(1,['Select Descricao From CadBins Where Codigo=0'+cdsDetalheBinsCod.Text],1) then
            cdsDetalheBinsDes.Text:=dm.qrSqlTra.Fields[0].Text
         else begin
           fPqBins;
           cdsDetalhe.Edit;
           cdsDetalheBinsCod.asString := xpqResul;
           DBGrid1.SetFocus;
           DBGrid1.SelectedIndex:=4;
           Abort;
         end;
       end;
    5: begin
         cdsDetalhe.Post;
         fSomaBin;
         cdsDetalhe.Next;
         if cdsDetalhe.Eof then cdsDetalhe.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFfrmRomaneioEntra.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  keyPreview := False;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  //Se tiver informado o peso não deve deixar digitar o peso na grid.
  dbGrid1.Columns[3].ReadOnly := ((cdsDadosPESO.AsFloat <> 0) and (cdsDadosPesozero.AsString = '0'));
  cdsDetalhe.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFfrmRomaneioEntra.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
  FMenu.ACBrEnterTab1.EnterAsTab := keyPreview;
  if cdsDetalhe.State in [dsInsert, dsEdit] then exit;

  if (sbSalvar.Visible) then
  begin
    fSomaBin;
    fCalculaLiq;
  end;
end;

procedure TFfrmRomaneioEntra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>6 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFfrmRomaneioEntra.Excluir1Click(Sender: TObject);
begin
  inherited;
  if cdsDetalhe.RecordCount > 0 then
    if frPerg('Deseja Excluir ?') then
      cdsDetalhe.Delete;
end;

procedure TFfrmRomaneioEntra.fCalculaLiq;
begin
  if varPesoPalet then
    fCalculaLiqPalet
  else
    fCalculaLiqBins;
end;

procedure TFfrmRomaneioEntra.fCalculaLiqBins;
var vpeso, vpesobru, vbins, vvaz, vazio, vliq, vmbin, vmtar, vpbin:Double;
    vdtini:TDate;
begin
   cdsDados.Edit;
   vdtini := StrToDate('01/01/'+FormatDateTime('yyyy',Date));
   vmtar:=0;

   vpesoBru := 0;
   //Se peso bruto maior que zero quer dizer que foi pesado na balança
   if (cdsDadosPeso.asFloat > 0) and (cdsDadosPesozero.AsString = '0') then
   begin
//Primeiro tiramos a tara
     vpesoBru := cdsDadosPeso.asFloat;
     fSql(1,1,['Select Sum(Peso), Count(ProdCod) From EntRT Where Placa='+QuotedStr(cdsDadosPlaca.Text)+' and data > '+frInvD(vdtini)],1);
     if dm.qrSql1.Fields[1].asFloat>0 then
        vmtar := frDeci(dm.qrSql1.Fields[0].asFloat/dm.qrSql1.Fields[1].asFloat,4)
   end;

   cdsDadosBinsTar.asFloat:=vmtar;
//Calcular por tipo de Bins
   cdsDetalhe.First;
   vmbin:=0; vpbin:=0; vliq:=0;
   vpeso := 0;
   while not cdsDetalhe.Eof do
   begin
     //Peso por palet ou peso = 0

     if varPesoBins then //Calcula bins emprestimo
     begin
       if (vpesoBru = 0) then
       begin
         if fTra(1,['Select Peso1 From CadBins Where Codigo=0'+cdsDetalheBinsCod.Text],1) then
           vmbin := vmbin + (cdsDetalheVarieQtd.asFloat * dm.qrSqlTra.Fields[0].asFloat);
       end
       else begin
         //Se foi informado peso busca no emprestimo
        if (vpesoBru > 0) and (cdsDadosPesozero.AsString = '0') then
         begin
           //Busca emprestimo para ser descontado
           fSql(1,1,['Select Sum(BinsLiq), Sum(BinsQtd) From EntRB',
                     ' Where ProdCod = 0'+IntToStr(frmPesquisaPro.vpCodPrincipal)+
                     '   and BinsCod = 0'+cdsDetalheBinsCod.Text
                     +' and data > '+frInvD(vdtini)],2);
           if (dm.qrSql1.Fields[0].asFloat>0) and (dm.qrSql1.Fields[1].asFloat>0) then
             vmbin := vmbin + (cdsDetalheVarieQtd.asFloat * frDeci((dm.qrSql1.Fields[0].asFloat / dm.qrSql1.Fields[1].asFloat),4) );
         end;
       end;
     end;
     vpbin := vpbin + (cdsDetalheVarieQtd.asFloat);

     //Peso Bruto - Quando peso bruto = 0
     if (vpesoBru = 0) then
     begin
       if varPesoPalet then
         vpeso := vpeso + cdsDetalheVarieChe.asFloat
       else
         vpeso := vpeso + (cdsDetalheVarieQtd.asFloat * cdsDetalheVarieChe.asFloat);
     end;

     cdsDetalhe.Next;
   end;
//Bins Vario
//   if (cdsDadosBinsQtd.asFloat > 0) and (vpbin > 0) then
//     vvaz := frDeci(vmbin / vpbin,4)
//   else
     vvaz:=0;

//Peso Liquido
   if (vpeso > 0) then
     vpesobru := vpeso;

   vliq := vpesobru - vmtar - vmbin - vvaz;
   cdsDadosBinsLiq.asFloat:=vliq;

   cdsDetalhe.First;
   vmtar:=0;

   while not cdsDetalhe.Eof do
   begin
     vbins:=(cdsDetalheVarieQtd.asFloat);

     if vpbin>0 then
       vbins := frDeci(vbins/vpbin*100,4);

     vmtar := frDeci(vliq*vbins/100,4);

     cdsDetalhe.Edit;
     cdsDetalheVariePes.asFloat:=StrToFloat(FloatToStrF(vmtar,ffFixed,8,2));
     cdsDetalhe.Post;
     cdsDetalhe.Next;
   end;

   if varPesoBins then //Desconta peso bins vazio
   begin
     if (cdsDadosQtde.asFloat > 0) then
       cdsDadosBinsMed.asFloat := frDeci(cdsDadosBinsLiq.asFloat / cdsDadosQtde.asFloat,4)
     else
       cdsDadosBinsMed.asFloat := 0;
   end
   else begin

     if ((cdsDadosQtde.asFloat - cdsDadosBINSQtd.asFloat) > 0) then
       cdsDadosBinsMed.asFloat := frDeci(cdsDadosBinsLiq.asFloat / (cdsDadosQtde.asFloat - cdsDadosBINSQtd.asFloat),4)
     else
       cdsDadosBinsMed.asFloat := 0;

   end;

   if (cdsDadosPesozero.AsString = '') then
     cdsDadosPeso.asFloat := vpesobru;

end;

procedure TFfrmRomaneioEntra.fCalculaLiqPalet;
var vpeso, vpesobru, vbins, vvaz, vazio, vliq, vmbin, vmtar, vpbin, vppalet:Double;
    vdtini:TDate;
begin
   cdsDados.Edit;
   vdtini := StrToDate('01/01/'+FormatDateTime('yyyy',Date));
   vpesoBru := 0;
   vmtar    := 0;
   cdsDadosBinsTar.asFloat := vmtar;

   //Pega peso do palet
   vppalet := 0;
   cdsDadosEmbalCod.asInteger  := frmPesquisaPalet.vpCodPrincipal;
   fSql(1,1,['Select peso1 From cadbins Where codigo = 0'+cdsDadosEmbalCod.asString],1);
   vppalet := dm.qrSql1.Fields[0].asFloat;

//Calcular por tipo de Bins
   cdsDetalhe.First;
   vmbin:=0; vpbin:=0; vliq:=0;
   vpeso := 0;
   while not cdsDetalhe.Eof do
   begin
     vpbin := vpbin + (cdsDetalheVarieQtd.asFloat);

     //Peso Bruto - Quando peso bruto = 0
     if (vpesoBru = 0) then
       vpeso := vpeso + cdsDetalheVarieChe.asFloat;

     cdsDetalhe.Next;
   end;
//Bins Vario
   vvaz:=0;

//Peso Liquido
   if (vpeso > 0) then
     vpesobru := vpeso;

//   vliq := vpesobru - vmtar - vmbin - vvaz - (cdsDadosEmbalQtd.asFloat * vppalet);
// cdsDadosBinsLiq.asFloat := vliq;
//Repassa peso liquido
   cdsDetalhe.First;
   vliq := 0;
   while not cdsDetalhe.Eof do
   begin
     if fTra(1,['Select Peso1 From CadBins Where Codigo=0'+cdsDetalheBinsCod.Text],1) then
       vmbin := dm.qrSqlTra.Fields[0].asFloat
     else
       vmbin := 0;

     vbins := (cdsDetalheVarieQtd.asFloat * vmbin);
     vmtar := frDeci(cdsDetalheVarieChe.asFloat - vbins - vppalet,4);
     vliq := vliq + vmtar;

     cdsDetalhe.Edit;
     cdsDetalheVariePes.asFloat:=StrToFloat(FloatToStrF(vmtar,ffFixed,8,2));
     cdsDetalhe.Post;
     cdsDetalhe.Next;
   end;

   cdsDadosBinsLiq.asFloat := vliq;
   //fim liq.

   if cdsDadosQtde.asFloat > 0 then
     cdsDadosBinsMed.asFloat := frDeci(cdsDadosBinsLiq.asFloat / cdsDadosQtde.asFloat,4)
   else
     cdsDadosBinsMed.asFloat := 0;

   if (cdsDadosPesozero.AsString = '') then
     cdsDadosPeso.asFloat := vpesobru;

end;

procedure TFfrmRomaneioEntra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomaneioEntra);
end;

procedure TFfrmRomaneioEntra.sbIncluirClick(Sender: TObject);
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
           frmPesquisaPro.pLimpaCampo;
           frmPesquisaMot.pLimpaCampo;
           frmPesquisaLocal.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger     := frGenerator('ENTRE','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ENTRE_ID');
           cdsDadosRecibo.AsInteger   := 0;
           cdsDadosLocalCod.asInteger := 1;
           cdsDadosPlaca.AsString     := '1';
           cdsDadosPesozero.AsString  := '';
           frmPesquisaLocal.edtPesquisa.Text := '1';
           frmPesquisaMot.edtPesquisa.Text := '1';
           cdsDadosData.asDateTime    := date;
           cdsDadosSafra.AsString     := xAno;
           cdsDadosVLRFRETE.asFloat   := 0;
           pcItem.OnChange(pcItem);
           dbEdit16.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          dbEdit16.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From ENTREVAR Where Lanc=0'+cdsDadosLanc.asString],1);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             fCalculaLiq;
             if cdsDadosRecibo.AsInteger = 0 then
               cdsDadosRecibo.AsInteger := frGenerator('ENTRE','RECIBO',1,xAno);
             cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
            cdsDadosProdDes.AsString   := frmPesquisaPro.vpDescricao;
             cdsDadosPlaca.AsString     := IntToStr(frmPesquisaMot.vpCodPrincipal);
             if (Length(Trim(frmPesquisaMot.vpCampo_2)) > 1) then
               cdsDadosPlacaDes.AsString  := Trim(frmPesquisaMot.vpCampo_2)+' - '+frmPesquisaMot.vpDescricao
             else
               cdsDadosPlacaDes.AsString  := frmPesquisaMot.vpDescricao;
             cdsDadosImportEnv.AsInteger := 0;
             cdsDadosLocalCod.asInteger  := frmPesquisaLocal.vpCodPrincipal;
             if cdsDadosLocalCod.asInteger < 1 then
               cdsDadosLocalCod.asInteger := 1;
             cdsDadosEmbalCod.asInteger  := frmPesquisaPalet.vpCodPrincipal;

             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             cdsDados.Post;
             cdsDados.ApplyUpdates(0);
             cdsDetalhe.ApplyUpdates(0);

             fIntegraFrete(True);

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
     18: gdsDetalhe := cdsDetalhe;
     91,92: pcItem.OnChange(pcItem);
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmRomaneioEntra.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from entre where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmRomaneioEntra.SpeedButton1Click(Sender: TObject);
var vinicio,vqtde: Integer;
begin
  inherited;
  if not cdsEtiqBins.Active then cdsEtiqBins.Open;

  cdsDetalhe.First;
  vinicio := 0;
  while not cdsDetalhe.Eof do
  begin
    for vqtde := 1 to (cdsDetalheVarieQtd.asInteger) do
    begin
      vinicio := vinicio + 1;
      cdsEtiqBins.Append;
      cdsEtiqBinsQtde.Value       := cdsDetalheVarieQtd.asInteger;
      cdsEtiqBinsContador.Value   := vinicio;
      cdsEtiqBinsVariedade.Text   := Copy(cdsDetalheVarieDes.AsString,1,50);
      cdsEtiqBinsProdutor.Text    := Copy(cdsDadosProdDes.AsString,1,50);
      cdsEtiqBinsMotorista.Text   := Copy(cdsDadosPlacaDes.AsString,1,50);
      cdsEtiqBinsRomaneio.Text    := cdsDadosRecibo.AsString;
      cdsEtiqBinsData.Text        := DateToStr(cdsDadosData.AsDateTime);
      cdsEtiqBinsNota.Text        := cdsDadosNota.AsString;
      cdsEtiqBinsTipoBins.Text    := Copy(cdsDetalheBinsDes.AsString,1,50);
      cdsEtiqBinsVarcod.Value     := cdsDetalheVarieCod.AsInteger;
      cdsEtiqBinsProdCod.Value    := cdsDadosProdCod.asInteger;
      cdsEtiqBinsBarra.Text       := frPree(cdsDadosRecibo.AsString,6,'0',0)+frPree(vinicio,6,'0',0);
      cdsEtiqBinsLINHA1.Text      := cdsDadosObs.AsString;
      cdsEtiqBins.Post;
    end;
    cdsDetalhe.Next;
  end;
  cdsDetalhe.Prior;
  if not cdsDados.IsEmpty then
  begin
    xRelTela := UpperCase('FfrmImpEtiqBins');
    Application.CreateForm(TFModeloRel, FModeloRel);
    FModeloRel.dsRelat.DataSet := cdsEtiqBins;
    FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir);
//    FModeloRel.ShowModal; - Configurar na aba sistema
    Sleep(1000);
  end;
  cdsEtiqBins.Close;
end;

procedure TFfrmRomaneioEntra.fSomaBin;
var vval:Double; vl, vplt:Integer; vliq: Double;
begin
  if (not sbSalvar.Visible) then Exit;
  vl := cdsDetalheLancit.asInteger;
  cdsDetalhe.First;
  vval:=0;
  vliq:=0;
  vplt:=0;
  while not cdsDetalhe.eof do
  begin
    vval := vval + StrToFloatDef(cdsDetalheVarieQtd.AsString,0);
    vliq := vliq + cdsDetalheVariePes.asFloat;
    vplt := vplt + 1;
    cdsDetalhe.Next;
  end;
  //edSoma.Text := FloatToStr(vval);
  cdsDados.Edit;
  cdsDadosQtde.asFloat := vval + cdsDadosBinsQtd.asFloat;
  cdsDadosBinsLiq.asFloat := vliq;
  cdsDadosQtdeLiq.asFloat := vval;

  if varPesoPalet then
  begin
    if cdsDadosEmbalQtd.asInteger < vplt then
      cdsDadosEmbalQtd.asInteger := vplt;
  end
  else
    cdsDadosEmbalQtd.asInteger := 0;

  cdsDetalhe.Locate('Lancit', vl, []);
end;

procedure TFfrmRomaneioEntra.GroupBox5Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (StrToIntDef(cdsDadosRecibo.AsString,0) > 0) then
  begin
    if (fBus(1,['Select count(*) from Entre where RECIBO = 0'+cdsDadosRecibo.AsString],1) > 0) then
    begin

      if not frPerg('Já existe entrada com esse romaneio!'+#13+'Deseja continuar?', 'SN') then
      begin
        dbEdit8.SetFocus;
        exit;
      end;
    end;
  end;

end;

procedure TFfrmRomaneioEntra.Inserir1Click(Sender: TObject);
begin
  inherited;
  cdsDetalhe.Append;
  dbGrid1.SelectedIndex := 0;
end;


procedure TFfrmRomaneioEntra.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    cdsDetalhe.close;
    sqlDetalhe.SQL.Clear;
    sqlDetalhe.SQL.Add('select * from entrevar');
    sqlDetalhe.SQL.Add('where lanc = 0'+cdsDadosLanc.asString);
    sqlDetalhe.SQL.Add('order by lancit');
    cdsDetalhe.Open;

    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosPlaca.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);
    frmPesquisaPalet.pRetornaDados(cdsDadosEmbalCod.AsString);
    edSoma.Text := frPree((cdsDadosQtdeLiq.asFloat),10,' ',0);
    //edSoma.Text := frPree((cdsDadosQtde.asFloat - cdsDadosBinsQtd.asFloat),10,' ',0);
  end;
end;

procedure TFfrmRomaneioEntra.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if ((Key in ['0'..'9',',',#8])) then
  begin
//    Key := #0;
    cdsDadosPesozero.AsString  := '0';
  end;

end;

procedure TFfrmRomaneioEntra.fIntegraFrete(vSalva:Boolean);
var vcpf,vdoc,vtipo,vplaca:String;
    vlanc,vrecb:Integer;
begin

  try
    fSql(1,1,['Delete From CxFrete Where LancInt=0'+cdsDadosLanc.Text],1);

    if (vSalva) then
    begin
      if (cdsDadosVlrFrete.asFloat > 0) and (frmPesquisaMot.vpCodPrincipal > 0) then
      begin

        vlanc := frGenerator('CXFRETE','LANC',1);
        vrecb := frGenerator('GERAL','FRETEREC',1);
        vplaca := fBus(1,['select TRPlaca from cadtrans where codigo = 0'+IntToStr(frmPesquisaMot.vpCodPrincipal)],1);

        fSql(1,1,['Insert Into CxFrete',
                  '(Lanc,Recibo,LancInt,Data,Valor,Tipo,Pago,Codigo,Descricao,Placa,ProdCod,ProdDes,Historico,EmpreCod,AcesoCod)',
                  'Values',
                  '('+inttostr(vlanc)+','
                     +inttostr(vrecb)+','
                     +cdsDadosLanc.Text+','
                     +frInvd(cdsDadosData.asDateTime)+','
                     +frInvv(cdsDadosVlrFrete.asFloat)+','
                     +QuotedStr('S')+','
                     +QuotedStr('N')+','
                     +inttostr(frmPesquisaMot.vpCodPrincipal)+','
                     +QuotedStr(frmPesquisaMot.vpDescricao)+','
                     +QuotedStr(vplaca)+','
                     +inttostr(frmPesquisaPro.vpCodPrincipal)+','
                     +QuotedStr(frmPesquisaPro.vpDescricao)+','
                     +QuotedStr('Romaneio nº. '+cdsDadosRecibo.Text)+','
                     +IntToStr(xEmp)+','+IntToStr(xAce)+')'],4);
      end;
    end;
  except

  end;

end;

procedure TFfrmRomaneioEntra.btnRecalcularClick(Sender: TObject);
begin
  inherited;
{
  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;

    fCalculaLiq;

    cdsDados.Post;

    cdsDados.Next;
  end;

  if pInsertDataSet('REG_ID', 'ENTRE', cdsDados) then
    pInsertDataSetVarios('REG_ID', 'ENTREVAR', cdsDetalhe);

  cdsDados.First;
  frPerg('Finalizado!', 'OK');
}
end;

end.

