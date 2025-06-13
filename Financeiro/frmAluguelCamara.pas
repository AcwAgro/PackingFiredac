unit frmAluguelCamara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, Grids, DBGrids,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, Menus, Mask, RzTabs, DBCtrls,
  RzDBNav, zModeloFixo, RzButton, RzPanel, zFrmPesquisa, RzEdit, ACBrBase,
  ACBrEnterTab, DateUtils, ppDB, ppParameter, ppModule, raCodMod, ppCtrls,
  ppBands, ppClass, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppDBBDE, ppVar, ppDesignLayer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit, RxCurrEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit;

type
  TFfrmAluguelCamara = class(TFModeloFixo)
    pnlCabecalho: TPanel;
    sbFiltrar: TSpeedButton;
    GroupBox2: TGroupBox;
    dtData: TDateTimePicker;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    lbltotalValor: TLabel;
    rbPeriodo: TGroupBox;
    Label2: TLabel;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    GroupBox1: TGroupBox;
    GroupBox29: TGroupBox;
    frmPesquisaCad: TfrmPesquisa;
    ME1: TMaskEdit;
    ACBrEnterTab1: TACBrEnterTab;
    SPB1: TSpeedButton;
    SPB2: TSpeedButton;
    PopupMenu3: TPopupMenu;
    Lanamentoanaltico1: TMenuItem;
    ppDados: TppBDEPipeline;
    ppRelProdutor: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel37: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine12: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    PopupMenu1: TPopupMenu;
    Selecionatodos1: TMenuItem;
    Desmarcatodos1: TMenuItem;
    btnMarcar: TButton;
    GroupBox6: TGroupBox;
    lbltotalQtde: TLabel;
    sqlDadosLANCIT: TIntegerField;
    sqlDadosLANC: TIntegerField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosVARIEQTD: TBCDField;
    sqlDadosVARIEPES: TBCDField;
    sqlDadosVARIECHE: TBCDField;
    sqlDadosBINSCOD: TIntegerField;
    sqlDadosBINSDES: TStringField;
    sqlDadosSAFRA: TStringField;
    sqlDadosIMPORTLANC: TIntegerField;
    sqlDadosLOTE_PRO: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    sqlDadosALG_DIAS: TIntegerField;
    sqlDadosALG_VLRPRECO: TFloatField;
    sqlDadosALG_VLRDIA: TFloatField;
    sqlDadosALG_VLRTOTAL: TFloatField;
    sqlDadosALG_DATA: TDateField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosLOCALCOD: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    cdsDadosLANCIT: TIntegerField;
    cdsDadosLANC: TIntegerField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosVARIEQTD: TBCDField;
    cdsDadosVARIEPES: TBCDField;
    cdsDadosVARIECHE: TBCDField;
    cdsDadosBINSCOD: TIntegerField;
    cdsDadosBINSDES: TStringField;
    cdsDadosSAFRA: TStringField;
    cdsDadosIMPORTLANC: TIntegerField;
    cdsDadosLOTE_PRO: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDadosALG_DIAS: TIntegerField;
    cdsDadosALG_VLRPRECO: TFloatField;
    cdsDadosALG_VLRDIA: TFloatField;
    cdsDadosALG_VLRTOTAL: TFloatField;
    cdsDadosALG_DATA: TDateField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosvSEL: TStringField;
    sqlDadosRECIBO: TIntegerField;
    cdsDadosRECIBO: TIntegerField;
    cePreco: TCurrencyEdit;
    sqlDadosRET_DATA01: TDateField;
    sqlDadosRET_QTDEBIN01: TIntegerField;
    sqlDadosRET_QTDETON01: TFloatField;
    sqlDadosRET_DATA02: TDateField;
    sqlDadosRET_QTDEBIN02: TIntegerField;
    sqlDadosRET_QTDETON02: TFloatField;
    sqlDadosRET_DATA03: TDateField;
    sqlDadosRET_QTDEBIN03: TIntegerField;
    sqlDadosRET_QTDETON03: TFloatField;
    cdsDadosRET_DATA01: TDateField;
    cdsDadosRET_QTDEBIN01: TIntegerField;
    cdsDadosRET_QTDETON01: TFloatField;
    cdsDadosRET_DATA02: TDateField;
    cdsDadosRET_QTDEBIN02: TIntegerField;
    cdsDadosRET_QTDETON02: TFloatField;
    cdsDadosRET_DATA03: TDateField;
    cdsDadosRET_QTDEBIN03: TIntegerField;
    cdsDadosRET_QTDETON03: TFloatField;
    rzpnlBaixar: TRzPanel;
    RzPanel1: TRzPanel;
    GroupBox5: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox11: TGroupBox;
    sqlDadosRET_DIAS01: TIntegerField;
    sqlDadosRET_VALOR01: TFloatField;
    sqlDadosRET_DIAS02: TIntegerField;
    sqlDadosRET_VALOR02: TFloatField;
    sqlDadosRET_DIAS03: TIntegerField;
    sqlDadosRET_VALOR03: TFloatField;
    cdsDadosRET_DIAS01: TIntegerField;
    cdsDadosRET_VALOR01: TFloatField;
    cdsDadosRET_DIAS02: TIntegerField;
    cdsDadosRET_VALOR02: TFloatField;
    cdsDadosRET_DIAS03: TIntegerField;
    cdsDadosRET_VALOR03: TFloatField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    sbBaixarok: TSpeedButton;
    sbBaixarSair: TSpeedButton;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    cxDBDateEdit3: TcxDBDateEdit;
    N1: TMenuItem;
    RetiradaBaixa1: TMenuItem;
    sqlDadosBXA_DATA: TDateField;
    cdsDadosBXA_DATA: TDateField;
    ppLabel2: TppLabel;
    ppLabel13: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText3: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    sqlDadosPRODDES: TStringField;
    cdsDadosPRODDES: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sbFiltrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtFinalExit(Sender: TObject);
    procedure GroupBox29Enter(Sender: TObject);
    procedure meMultaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SPB1Click(Sender: TObject);
    procedure dbDadosTitleClick(Column: TColumn);
    procedure SPB2Click(Sender: TObject);
    procedure dbDadosDblClick(Sender: TObject);
    procedure Selecionatodos1Click(Sender: TObject);
    procedure btnMarcarClick(Sender: TObject);
    procedure GroupBox29Exit(Sender: TObject);
    procedure RetiradaBaixa1Click(Sender: TObject);
    procedure sbBaixarokClick(Sender: TObject);
    procedure sbBaixarSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure pTotaliza;
  public
    { Public declarations }
  end;

var
  FfrmAluguelCamara: TFfrmAluguelCamara;

implementation

uses Data, Rotina, Menu, zModeloRel;

{$R *.dfm}

procedure TFfrmAluguelCamara.FormCreate(Sender: TObject);
var
  vdialanc: Integer;
begin
  inherited;
  //vdialanc := fBus(1,['Select valor From zGenerator Where Tabela = ''FILTRO'' and Campo = ''PERIODO'''],1);
  //if (vdialanc = 0) then
  //begin
    dtInicial.Date := StrToDate('01/01/' + xAno);
    dtFinal.Date   := StrToDate('31/12/' + xAno);
  //end
  //else begin
  //  dtInicial.Date := Date - vdialanc;
  //  dtFinal.Date   := Date + vdialanc;
  //end;

  dtData.Date    := Date;
  pcItem.ActivePageIndex := 0;
  cePreco.Value := 0;
  frmPesquisaCad.pInicia('ttProdutor', TForm(Sender),2,2,GroupBox29,true);
end;

procedure TFfrmAluguelCamara.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmAluguelCamara);
end;

procedure TFfrmAluguelCamara.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pcItem.ActivePageIndex > 0 then exit;

  if key = VK_F7 then sbFiltrar.OnClick(sbFiltrar);
  if key = VK_F2 then SPB1.OnClick(SPB1);
  if key = VK_F8 then SPB2.OnClick(SPB2);
  inherited;
end;

procedure TFfrmAluguelCamara.FormShow(Sender: TObject);
begin
  inherited;
  if frmPesquisaCad.edtPesquisa.CanFocus then
    frmPesquisaCad.edtPesquisa.SetFocus;
end;

procedure TFfrmAluguelCamara.GroupBox29Enter(Sender: TObject);
begin
  inherited;
  ME1.Text := '';
  cdsDados.Close;
end;

procedure TFfrmAluguelCamara.GroupBox29Exit(Sender: TObject);
var vvlr: String;
begin
  inherited;

  if cePreco.Value = 0 then
  begin
    vvlr := fBus(1,['select ALG_VLRPRECO from cadForne where codigo = 0'+IntToStr(frmPesquisaCad.vpCodPrincipal)],1);
    cePreco.Value := StrToFloatDef(vvlr,0);
  end;

  if dtData.CanFocus then
    dtData.SetFocus;

end;

procedure TFfrmAluguelCamara.meMultaEnter(Sender: TObject);
begin
  inherited;
  sbFiltrar.onclick(sbFiltrar);
end;

procedure TFfrmAluguelCamara.btnMarcarClick(Sender: TObject);
begin
  inherited;
  try
    cdsDados.DisableControls;
    cdsDados.First;
    while not cdsDados.Eof do
    begin
      cdsDados.Edit;
      if btnMarcar.Caption = 'Marcar todos' then
        cdsDadosvSEL.AsString := '*'
      else
        cdsDadosvSEL.AsString := '';
      cdsDados.Post;

      cdsDados.Next;
    end;
    cdsDados.First;

    if btnMarcar.Caption = 'Marcar todos' then
      btnMarcar.Caption := 'Desmarcar todos'
    else
      btnMarcar.Caption := 'Marcar todos';
  finally
    cdsDados.EnableControls
  end;
end;

procedure TFfrmAluguelCamara.dbDadosDblClick(Sender: TObject);
begin
  inherited;
  if cdsDados.IsEmpty then exit;

  cdsDados.Edit;
  if (Trim(cdsDadosvSEL.AsString) = '') then
    cdsDadosvSEL.AsString := '*'
  else
    cdsDadosvSEL.AsString := '';
  cdsDados.Post;

end;

procedure TFfrmAluguelCamara.dbDadosTitleClick(Column: TColumn);
begin
//  inherited;
end;

procedure TFfrmAluguelCamara.dtFinalExit(Sender: TObject);
begin
  inherited;
  sbFiltrar.OnClick(sbFiltrar);
end;

procedure TFfrmAluguelCamara.sbBaixarokClick(Sender: TObject);
begin
  inherited;

  DBEdit1.SetFocus;
  DBEdit8.SetFocus;

  pnlCabecalho.Enabled := True;
  dbDados.Enabled      := True;
  rzpnlBaixar.Visible := False;

  if not cdsDados.active then exit;

  try
    try
      cdsDados.Edit;

      cdsDadosvSEL.AsString := '*';

      //Se não tiver informação na retirada 2
      if not cdsDadosRet_Data03.IsNull then
        cdsDadosRET_QTDETON03.AsFloat := cdsDadosRET_QTDEBIN03.AsInteger * cdsDadosVARIECHE.AsFloat
      else begin
        cdsDadosRET_QTDETON03.Clear;
        cdsDadosRet_Dias03.Clear;
        cdsDadosRet_Valor03.Clear;
      end;

      if not cdsDadosRet_Data02.IsNull then
        cdsDadosRET_QTDETON02.AsFloat := cdsDadosRET_QTDEBIN02.AsInteger * cdsDadosVARIECHE.AsFloat
      else begin
        cdsDadosRET_QTDETON02.Clear;
        cdsDadosRet_Dias02.Clear;
        cdsDadosRet_Valor02.Clear;
      end;

      cdsDados.Post;

      cdsDados.ApplyUpdates(0);
    except
    end;
  finally
    SPB1.OnClick(SPB1);
  end;

end;

procedure TFfrmAluguelCamara.sbBaixarSairClick(Sender: TObject);
begin
  inherited;

  pnlCabecalho.Enabled := True;
  dbDados.Enabled      := True;
  rzpnlBaixar.Visible  := False;

end;

procedure TFfrmAluguelCamara.sbFiltrarClick(Sender: TObject);
var vi: Integer; vdat: String;
begin
  cdsDados.Close;
  ME1.Text := '';
  if (Length(frmPesquisaCad.edtPesquisa.Text) < 3) then
  begin
    ME1.Text := frSoNumero(frmPesquisaCad.edtPesquisa.Text);
    frmPesquisaCad.pRetornaDados(ME1.Text);
  end
  else begin
    vi := pos('-', frmPesquisaCad.edtPesquisa.Text);
    ME1.Text := Trim(Copy(frmPesquisaCad.edtPesquisa.Text, 1, vi-1));
  end;
  if (StrToIntDef(ME1.Text,0)= 0) then
  begin
//    ShowMessage('Obrigatótio informar produtor!');
    frmPesquisaCad.edtPesquisa.SetFocus;
    Exit;
  end;

  sqlDados.Close;
  sqlDados.ParamByName('PPROD').AsInteger := StrToIntDef(ME1.Text,0);
  sqlDados.ParamByName('PLOC').AsInteger  := 0;
  sqlDados.ParamByName('PDTINI').AsDate   := dtInicial.Date;
  sqlDados.ParamByName('PDTFIM').AsDate   := dtFinal.Date;
  cdsDados.Open;

  if cePreco.Value = 0 then
    cePreco.Value := cdsDadosAlg_VlrPreco.asFloat;

  pTotaliza;
end;

procedure TFfrmAluguelCamara.pTotaliza;
var vTotalQtde, vTotalValor: Double;
begin
  try
    cdsDados.DisableControls;
    vTotalQtde  := 0;
    vTotalValor := 0;
    cdsDados.First;
    while not cdsDados.eof do
    begin
      vTotalQtde  := vTotalQtde  + cdsDadosVariePes.asFloat;
      vtotalValor := vtotalValor + cdsDadosAlg_VlrTotal.asFloat;
      cdsDados.Next;
    end;
    cdsDados.First;
    lblTotalQtde.Caption   := FormatFloat('#,0.###', vTotalQtde);
    lblTotalValor.Caption   := FormatFloat('#,0.00', vTotalValor);
  finally
    cdsDados.EnableControls;
  end;

end;


procedure TFfrmAluguelCamara.RetiradaBaixa1Click(Sender: TObject);
begin
  inherited;

  pnlCabecalho.Enabled := False;
  dbDados.Enabled      := False;
  rzpnlBaixar.Visible  := True;

end;

procedure TFfrmAluguelCamara.SPB1Click(Sender: TObject);
var vvlrpreco, vvlrdia, vvlrtotal, vpeso: Double;
    vdias: Integer;
begin
  inherited;
  if not cdsDados.active then exit;
  vvlrpreco := cePreco.Value;

  try
    try
      //Transformar o valor kgs.
      if vvlrpreco = 0 then
        vvlrdia :=  0
      else
        vvlrdia := frDeci(vvlrpreco / 30,4);

      cdsDados.First;
      while not cdsDados.Eof do
      begin
        if (Trim(cdsDadosvSEL.AsString) = '*') then
        begin
          //Se não tiver a data de baixa
          if cdsDadosBxa_Data.IsNull then
          begin
            cdsDados.Edit;
            vvlrtotal := 0;
            cdsDadosAlg_VlrDia.asFloat   := vvlrdia;
            cdsDadosAlg_VlrPreco.asFloat := vvlrpreco;

            //Se tiver informação na retirada 2
            if not cdsDadosRet_Data03.IsNull then
            begin
              vdias := DaysBetween(cdsDadosData.asDateTime, cdsDadosRet_Data03.asDateTime);
              cdsDadosRet_Dias03.asInteger   := vdias;
              cdsDadosRet_Valor03.asFloat    := frDeci(vdias * (vvlrdia / 1000) * cdsDadosRet_QtdeTon03.asFloat,2);
            end;

            //Se tiver informação na retirada 1
            if not cdsDadosRet_Data02.IsNull then
            begin
              vdias := DaysBetween(cdsDadosData.asDateTime, cdsDadosRet_Data02.asDateTime);
              cdsDadosRet_Dias02.asInteger   := vdias;
              cdsDadosRet_Valor02.asFloat    := frDeci(vdias * (vvlrdia / 1000) * cdsDadosRet_QtdeTon02.asFloat,2);
            end;

            //Se não tiver informação na retirada 1
            if cdsDadosRet_Data02.IsNull then
            begin
              vdias := DaysBetween(cdsDadosData.asDateTime, dtData.Date);
              cdsDadosRet_Data01.asDateTime  := dtData.Date;
              cdsDadosRet_Dias01.asInteger   := vdias;
              cdsDadosRet_Valor01.asFloat    := frDeci(vdias * (vvlrdia / 1000) * cdsDadosVariePes.asFloat,2);
              cdsDadosRet_QtdeTon01.asFloat  := cdsDadosVariePes.asFloat;
            end
            else begin
              vdias := DaysBetween(cdsDadosData.asDateTime, dtData.Date);
              vpeso := cdsDadosVariePes.asFloat - cdsDadosRet_QtdeTon02.asFloat - cdsDadosRet_QtdeTon03.asFloat;
              if vpeso = 0 then
              begin
                cdsDadosRet_Data01.asDateTime  := dtData.Date; //cdsDadosRet_Data02.asDateTime;
                cdsDadosRet_Dias01.asInteger   := 0;
                cdsDadosRet_Valor01.asFloat    := 0;
                cdsDadosRet_QtdeTon01.asFloat  := 0;
              end
              else begin
                cdsDadosRet_Data01.asDateTime  := dtData.Date;
                cdsDadosRet_Dias01.asInteger   := vdias;
                cdsDadosRet_Valor01.asFloat    := frDeci(vdias * (vvlrdia / 1000) * vpeso,2);
                cdsDadosRet_QtdeTon01.asFloat  := vpeso;
              end;
            end;

            cdsDadosAlg_VlrTotal.asFloat := cdsDadosRet_Valor01.asFloat
                                          + cdsDadosRet_Valor02.asFloat
                                          + cdsDadosRet_Valor03.asFloat;
            cdsDados.Post;
          end;
        end;
        cdsDados.Next;
      end;

      cdsDados.ApplyUpdates(0);
    except
    end;
  finally
    pTotaliza;
  end;

end;

procedure TFfrmAluguelCamara.SPB2Click(Sender: TObject);
begin
  inherited;
//  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  ppLabel4.Caption := 'Período: '+DateToStr(dtInicial.Date)+' à '+DateToStr(dtfinal.Date);
  ppRelProdutor.DeviceType := 'Screen';
  ppRelProdutor.Print;
  //sbFiltrar.onclick(sbFiltrar);

end;

procedure TFfrmAluguelCamara.Selecionatodos1Click(Sender: TObject);
begin
  inherited;
  try
    cdsDados.DisableControls;
    cdsDados.First;
    while not cdsDados.Eof do
    begin
      cdsDados.Edit;
      if btnMarcar.Caption = 'Marcar todos' then
        cdsDadosvSEL.AsString := '*'
      else
        cdsDadosvSEL.AsString := '';
      cdsDados.Post;

      cdsDados.Next;
    end;
    cdsDados.First;

    if btnMarcar.Caption = 'Marcar todos' then
      btnMarcar.Caption := 'Desmarcar todos'
    else
      btnMarcar.Caption := 'Marcar todos';
  finally
    cdsDados.EnableControls;
  end;

end;

end.
