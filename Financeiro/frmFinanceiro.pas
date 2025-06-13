unit frmFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, Grids, DBGrids,
  ComCtrls, StdCtrls, ExtCtrls, Buttons, DBCtrls, Menus, RzTabs,
  RzButton, RzDBNav, Mask, RzPanel, zFrmPesquisa, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  dxCore, cxDateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmFinanceiro = class(TFModelo)
    DBRadioGroup1: TDBRadioGroup;
    DBEdit22: TDBEdit;
    DBRGbaixado: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    sqlDadosLANC: TIntegerField;
    sqlDadosBAIXA: TStringField;
    sqlDadosBANCOCOD: TIntegerField;
    sqlDadosBANCODES: TStringField;
    sqlDadosREGISTRO: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosDTPAGO: TSQLTimeStampField;
    sqlDadosFAVORECIDO: TStringField;
    sqlDadosFORMAR: TStringField;
    sqlDadosFORMADES: TStringField;
    sqlDadosIMPRES: TStringField;
    sqlDadosPROVE: TStringField;
    sqlDadosRECIBO: TIntegerField;
    sqlDadosTIPO: TStringField;
    sqlDadosVALOR: TBCDField;
    sqlDadosVALORREAL: TBCDField;
    sqlDadosVENCTO: TSQLTimeStampField;
    sqlDadosHISCOD: TIntegerField;
    sqlDadosFAVORCOD: TIntegerField;
    sqlDadosREDUZ: TIntegerField;
    sqlDadosCONTA: TStringField;
    sqlDadosCONTADES: TStringField;
    sqlDadosLANCCOM: TIntegerField;
    sqlDadosLANCVEN: TIntegerField;
    sqlDadosBANCODOC: TStringField;
    sqlDadosCLIENCOD: TIntegerField;
    sqlDadosDTCONTAB: TSQLTimeStampField;
    sqlDadosDUPLICNOT: TStringField;
    sqlDadosDUPLISIM: TStringField;
    sqlDadosDUPLINOT: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosDEVOLUC: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosRECIBO: TIntegerField;
    cdsDadosBAIXA: TStringField;
    cdsDadosBANCOCOD: TIntegerField;
    cdsDadosBANCODES: TStringField;
    cdsDadosREGISTRO: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosDTPAGO: TSQLTimeStampField;
    cdsDadosFAVORECIDO: TStringField;
    cdsDadosFORMAR: TStringField;
    cdsDadosFORMADES: TStringField;
    cdsDadosIMPRES: TStringField;
    cdsDadosPROVE: TStringField;
    cdsDadosTIPO: TStringField;
    cdsDadosVALOR: TBCDField;
    cdsDadosVALORREAL: TBCDField;
    cdsDadosVENCTO: TSQLTimeStampField;
    cdsDadosHISCOD: TIntegerField;
    cdsDadosFAVORCOD: TIntegerField;
    cdsDadosREDUZ: TIntegerField;
    cdsDadosCONTA: TStringField;
    cdsDadosCONTADES: TStringField;
    cdsDadosLANCCOM: TIntegerField;
    cdsDadosLANCVEN: TIntegerField;
    cdsDadosBANCODOC: TStringField;
    cdsDadosCLIENCOD: TIntegerField;
    cdsDadosDTCONTAB: TSQLTimeStampField;
    cdsDadosDUPLICNOT: TStringField;
    cdsDadosDUPLISIM: TStringField;
    cdsDadosDUPLINOT: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosDEVOLUC: TStringField;
    sbBaixar: TSpeedButton;
    rzpnlBaixar: TRzPanel;
    sbBaixarok: TSpeedButton;
    RzPanel4: TRzPanel;
    sbBaixarSair: TSpeedButton;
    GroupBox10: TGroupBox;
    frmPesquisaBan: TfrmPesquisa;

    frmPesquisaCFP: TfrmPesquisa;
    frmPesquisaCtc: TfrmPesquisa;
    GroupBox11: TGroupBox;
    frmPesquisaBanbaixa: TfrmPesquisa;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit10: TDBEdit;
    sqlDadosVALORPAGO: TBCDField;
    cdsDadosVALORPAGO: TBCDField;
    GroupBox16: TGroupBox;
    DBEdit11: TDBEdit;
    sqlDadosSAFRA: TStringField;
    cdsDadosSAFRA: TStringField;
    DBEdit23: TcxDBDateEdit;
    DBEdit2: TcxDBDateEdit;
    DBEdit4: TcxDBDateEdit;
    dtpDataBaixar: TcxDateEdit;
    dbDadosDBTableView1RECIBO: TcxGridDBColumn;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1VENCTO: TcxGridDBColumn;
    dbDadosDBTableView1DTPAGO: TcxGridDBColumn;
    dbDadosDBTableView1VALOR: TcxGridDBColumn;
    dbDadosDBTableView1BANCODOC: TcxGridDBColumn;
    dbDadosDBTableView1BAIXA: TcxGridDBColumn;
    dbDadosDBTableView1FAVORECIDO: TcxGridDBColumn;
    dbDadosDBTableView1BANCODES: TcxGridDBColumn;
    dbDadosDBTableView1PROVE: TcxGridDBColumn;
    dbDadosDBTableView1CONTADES: TcxGridDBColumn;
    dbDadosDBTableView1BANCOCOD: TcxGridDBColumn;
    dbDadosDBTableView1REGISTRO: TcxGridDBColumn;
    dbDadosDBTableView1FORMAR: TcxGridDBColumn;
    dbDadosDBTableView1FORMADES: TcxGridDBColumn;
    dbDadosDBTableView1IMPRES: TcxGridDBColumn;
    dbDadosDBTableView1TIPO: TcxGridDBColumn;
    dbDadosDBTableView1VALORREAL: TcxGridDBColumn;
    dbDadosDBTableView1HISCOD: TcxGridDBColumn;
    dbDadosDBTableView1FAVORCOD: TcxGridDBColumn;
    dbDadosDBTableView1REDUZ: TcxGridDBColumn;
    dbDadosDBTableView1CONTA: TcxGridDBColumn;
    dbDadosDBTableView1LANCCOM: TcxGridDBColumn;
    dbDadosDBTableView1LANCVEN: TcxGridDBColumn;
    dbDadosDBTableView1CLIENCOD: TcxGridDBColumn;
    dbDadosDBTableView1DTCONTAB: TcxGridDBColumn;
    dbDadosDBTableView1DUPLICNOT: TcxGridDBColumn;
    dbDadosDBTableView1DUPLISIM: TcxGridDBColumn;
    dbDadosDBTableView1DUPLINOT: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1DEVOLUC: TcxGridDBColumn;
    dbDadosDBTableView1VALORPAGO: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sbTransferir: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbIncluirClick(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure sbBaixarClick(Sender: TObject);
    procedure sbBaixarokClick(Sender: TObject);
    procedure sbBaixarSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBRGbaixadoChange(Sender: TObject);
    procedure dtpPagoExit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure GroupBox6Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure sbTransferirClick(Sender: TObject);
  private
    { Private declarations }
    procedure fRecibo;
  public
    { Public declarations }
  end;

var
  FfrmFinanceiro: TFfrmFinanceiro;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaCTC.pInicia('ttPlano', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaBan.pInicia('ttBanco', TForm(Sender),7,147,GroupBox7,true);
  frmPesquisaBanBaixa.pInicia('ttBanco', TForm(Sender),290,210,GroupBox11,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmFinanceiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if (key = vk_F7) then SpeedButton1.OnClick(Sender);
end;

procedure TFfrmFinanceiro.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaCtc.pRetornaDados(cdsDadosReduz.AsString);
    frmPesquisaBan.pRetornaDados(cdsDadosBancoCod.AsString);
    if cdsDadosFormaDes.Text = 'C' then frmPesquisaCFP.pInicia('ttCliente', FfrmFinanceiro,7,197,GroupBox6,true)
    else if cdsDadosFormaDes.Text = 'P' then frmPesquisaCFP.pInicia('ttProdutor', FfrmFinanceiro,7,197,GroupBox6,true)
    else if cdsDadosFormaDes.Text = 'U' then frmPesquisaCFP.pInicia('ttFuncionario', FfrmFinanceiro,7,197,GroupBox6,true)
    else frmPesquisaCFP.pInicia('ttFornecedor', FfrmFinanceiro,7,197,GroupBox6,true);
    frmPesquisaCFP.edtPesquisa.Text := cdsDadosFavorecido.asString;
  end;
end;

procedure TFfrmFinanceiro.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
end;

procedure TFfrmFinanceiro.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
  DBEdit8.SetFocus;
end;

procedure TFfrmFinanceiro.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;

  if cdsDadosFormaDes.Text = 'C' then frmPesquisaCFP.pInicia('ttCliente', FfrmFinanceiro,7,197,GroupBox6,true)
  else if cdsDadosFormaDes.Text = 'P' then frmPesquisaCFP.pInicia('ttProdutor', FfrmFinanceiro,7,197,GroupBox6,true)
  else if cdsDadosFormaDes.Text = 'U' then frmPesquisaCFP.pInicia('ttFuncionario', FfrmFinanceiro,7,197,GroupBox6,true)
  else frmPesquisaCFP.pInicia('ttFornecedor', FfrmFinanceiro,7,197,GroupBox6,true);

  if (cdsDadosFavorCod.AsInteger > 0) then
  begin
    frmPesquisaCFP.edtPesquisa.Text := cdsDadosFavorecido.AsString;
    frmPesquisaCFP.vpCodPrincipal   := cdsDadosFavorCod.AsInteger;
  end;

end;

procedure TFfrmFinanceiro.DBRGbaixadoChange(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if cdsDados.State = dsBrowse then exit;

  if DBRGbaixado.ItemIndex = 0 then
  begin
    cdsDadosBaixa.asString := 'S';
    if cdsDadosDTPAGO.IsNull then
    begin
      cdsDadosDTPAGO.AsDateTime := Date;
      cdsDadosVALORPAGO.asFloat := cdsDadosVALOR.asFloat;
    end;
    DBEdit23.SetFocus;
  end
  else begin
    cdsDadosBaixa.asString := 'N';
    cdsDadosDTPAGO.Clear;
    cdsDadosVALORPAGO.Clear;
  end;
end;

procedure TFfrmFinanceiro.dtpPagoExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  DBEdit5.SetFocus;
end;

procedure TFfrmFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmFinanceiro);
end;

procedure TFfrmFinanceiro.sbBaixarClick(Sender: TObject);
begin
  inherited;
  if cdsDados.IsEmpty then exit;

  pcItem.ActivePageIndex := 1;
  if cdsDadosBaixa.asString = 'S' then
    ShowMessage('Lançamento já baixado')
  else begin
    frmPesquisaBanBaixa.pRetornaDados(cdsDadosBancoCod.AsString);
    rzpnlBaixar.Visible := True;
    dtpDataBaixar.Date := Date;
    dtpDataBaixar.SetFocus;
  end;
end;

procedure TFfrmFinanceiro.sbIncluirClick(Sender: TObject);
begin
  rzpnlBaixar.Visible := False;
  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;

    if not frValidaAnoData(cdsDadosVencto.AsDateTime) then
      Exit;

    if cdsDadosBaixa.asString = 'S' then
    begin
      if not frValidaAnoData(cdsDadosDTPago.AsDateTime) then
        Exit;

      if frmPesquisaBan.vpCodPrincipal = 0 then
      begin
        ShowMessage('Deve lançar uma conta que não seja contas A PAGAR!');
        frmPesquisaBan.edtPesquisa.SetFocus;
        exit;
      end;
    end;
  end;

  if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.AsDateTime) then
    exit;

  inherited;
  Case TComponent(Sender).Tag of
     12: begin
           rzpnlBaixar.Visible := False;
           frmPesquisaCTC.pLimpaCampo;
           frmPesquisaBAN.pLimpaCampo;
           frmPesquisaBANBAIXA.pLimpaCampo;
           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('GERAL','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_CXBANCO_ID');
           cdsDadosData.asDateTime := date;
           cdsDadosDTContab.asDateTime := date;
           cdsDadosVencto.asDateTime := date;//+30;
           cdsDadosBaixa.AsString  := 'N';
           cdsDadosTipo.AsString   := 'N';
           cdsDadosImpres.AsString := 'N';
           cdsDadosFormar.AsString := 'S';
           cdsDadosFormaDes.AsString := 'F';
           cdsDadosDupliSim.AsString := 'N';
           dbEdit2.SetFocus;
         end;
     13: begin
          rzpnlBaixar.Visible := False;
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDadosBancoCod.AsInteger := frmPesquisaBan.vpCodPrincipal;
            cdsDadosBancoDes.AsString  := frmPesquisaBan.vpDescricao;
            cdsDadosReduz.AsInteger    := frmPesquisaCtc.vpCodPrincipal;
            cdsDadosConta.AsString     := frmPesquisaCtc.vpCampo_2;
            cdsDadosContaDes.AsString  := frmPesquisaCtc.vpDescricao;

            //Baixa - Pega o valor pago
            if (cdsDadosBaixa.AsString = 'S') then
            begin

              if cdsDadosFormar.Text = 'S' then
                cdsDadosValorReal.asFloat := cdsDadosValorPago.asFloat * -1
              else
                cdsDadosValorReal.asFloat := cdsDadosValorPago.asFloat;

            end
            else begin

              if cdsDadosFormar.Text = 'S' then
                cdsDadosValorReal.asFloat := cdsDadosValor.asFloat * -1
              else
                cdsDadosValorReal.asFloat := cdsDadosValor.asFloat;

            end;

            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);

            fRecibo;

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


procedure TFfrmFinanceiro.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from cxbanco where '+frWhereD('Data',dtInicial.Date,dtFinal.Date)+' order by lanc desc');
  cdsDados.Open;
  if cdsDadosFormaDes.Text = 'C' then frmPesquisaCFP.pInicia('ttCliente', FfrmFinanceiro,7,197,GroupBox6,true)
  else if cdsDadosFormaDes.Text = 'P' then frmPesquisaCFP.pInicia('ttProdutor', FfrmFinanceiro,7,197,GroupBox6,true)
  else if cdsDadosFormaDes.Text = 'U' then frmPesquisaCFP.pInicia('ttFuncionario', FfrmFinanceiro,7,197,GroupBox6,true)
  else frmPesquisaCFP.pInicia('ttFornecedor', FfrmFinanceiro,7,197,GroupBox6,true);
end;

procedure TFfrmFinanceiro.sbTransferirClick(Sender: TObject);
var vlanc: Integer;
    vTipo: String;
    vValor: double;
begin
  inherited;

  if frPerg('Deseja Transferir movimento ?') then
  begin

    vlanc := frGenerator('GERAL','LANC',1);
    if (cdsDadosFormar.Text = 'E') then
    begin
      vTipo := 'S';
      vValor := cdsDadosVALORREAL.AsFloat * -1;
    end
    else begin
      vTipo := 'E';
      vValor := cdsDadosVALORREAL.AsFloat * -1;
    end;

   fIntCaixa(cdsDadosLanc.Text,
             cdsDadosLanc.Text,
             IntToStr(vLanc),
             frInvD(cdsDadosData.asDateTime),
             vtipo,
             cdsDadosBANCOCOD.AsString,
             cdsDadosBANCODES.AsString,
             frInvD(cdsDadosVENCTO.asDateTime),
             frInvV(cdsDadosVALOR.AsFloat),
             frInvV(vValor),
             cdsDadosFAVORECIDO.AsString,
             cdsDadosCONTA.AsString,
             cdsDadosCONTADES.AsString,
             Copy('Transf.nº '+cdsDadosLanc.Text +' '+cdsDadosPROVE.AsString,1,50),
             cdsDadosBANCODOC.AsString,
             cdsDadosBAIXA.AsString,
             frInvD(cdsDadosDTPAGO.asDateTime),
             cdsDadosFAVORCOD.AsString,
             cdsDadosREDUZ.AsString,
             frInvV(cdsDadosVALORPAGO.Value));
      cdsDados.Close;
      cdsDados.Open;
      if cdsDados.locate('Lanc', vlanc, []) then
      begin
        sbEditar.OnClick(sbEditar);
        frmPesquisaBan.edtPesquisa.SetFocus;
      end;
  end;
end;

procedure TFfrmFinanceiro.sbBaixarokClick(Sender: TObject);
begin
  inherited;
  //Se o banco for zero contas a pagar deve perguntar qual conta financeiro foi pago
  if frmPesquisaBanBaixa.vpCodPrincipal = 0 then
  begin
    ShowMessage('Deve lançar uma conta que não seja contas A PAGAR!');
    frmPesquisaBanBaixa.edtPesquisa.SetFocus;
    exit;
  end;

  rzpnlBaixar.Visible := False;

  if rzpDados.Visible then
    sbIncluir.OnClick(sbSalvar);

  cdsDados.Edit;
  cdsDadosBaixa.asString := 'S';
  cdsDadosDTPago.AsDateTime := dtpDataBaixar.Date;
  cdsDadosBancoCod.AsInteger := frmPesquisaBanBaixa.vpCodPrincipal;
  cdsDadosBancoDes.AsString  := frmPesquisaBanBaixa.vpDescricao;

  if (cdsDadosVencto.AsDateTime > cdsDadosDTPago.AsDateTime) then
  begin
    cdsDadosVencto.AsDateTime := cdsDadosDTPago.AsDateTime;

    if (pos('Vencto', cdsDadosProve.AsString) = 0) then
      cdsDadosProve.AsString := cdsDadosProve.AsString + ' - Vencto: '+FormatDateTime('dd/mm/yyyy', cdsDadosVencto.AsDateTime);
  end;
  cdsDadosVALORPAGO.asFloat := cdsDadosVALOR.asFloat;
  cdsDados.Post;
  cdsDados.ApplyUpdates(0);
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmFinanceiro.sbBaixarSairClick(Sender: TObject);
begin
//  inherited;
  rzpnlBaixar.Visible := False;
  pcItem.ActivePageIndex := 0;
end;

procedure TFfrmFinanceiro.fRecibo;
var vcpf,vdoc,vtipo,vprove:String;
    vlanc, vrecb:Integer;
begin
  if cdsDadosTipo.Text <> 'S' then Exit;

  try
    fSql(1,1,['Delete From CxRecibo Where Numero=0'+cdsDadosRecibo.Text],1);

    if cdsDadosRecibo.AsInteger = 0 then
      vrecb := frGenerator('CXRECIBO','NUMERO',1)
    else
      vrecb := cdsDadosRecibo.AsInteger;

    vlanc := frGenerator('CXRECIBO','LANC',1);
    fSql(1,2,['Update CxBanco Set Recibo = 0'+IntToStr(vrecb)+' Where Lanc = 0'+cdsDadosLanc.Text],1);

    if cdsDadosFormar.Text='E' then vtipo:='1'
    else vtipo:='2';

    if cdsDadosFormaDes.Text ='C' then
    begin
       if fTra(1,['Select CPF,DOC From CadClien Where Codigo=0'+cdsDadosFavorCod.Text],1) then
       begin
         vcpf:=dm.qrSqlTra.Fields[0].Text;
         vdoc:=dm.qrSqlTra.Fields[1].Text;
       end;
    end
    else if cdsDadosFormaDes.Text ='F' then
    begin
       if fTra(1,['Select CPF,DOC From CadForne Where Codigo=0'+cdsDadosFavorCod.Text],1) then
       begin
         vcpf:=dm.qrSqlTra.Fields[0].Text;
         vdoc:=dm.qrSqlTra.Fields[1].Text;
       end;
    end;

    if cdsDadosFormaDes.Text = 'U' then
      vprove := 'Funcionário: '+cdsDadosProve.Text
    else
      vprove := cdsDadosProve.Text;

    fSql(1,3,['Insert Into CxRecibo',
              '(Lanc,Numero,Data,Valor,Prov1,Conforme,Terceiro,Tipo,Cpf,Doc,EmpreCod)',
              'Values',
              '('+inttostr(vlanc)+','+inttostr(vrecb)+','
                 +frInvd(cdsDadosData.asDateTime)+','
                 +frInvv(cdsDadosValor.asFloat)+','
                 +QuotedStr(vprove)+','
                 +QuotedStr(cdsDadosBancoDes.Text+' - Doc. '+cdsDadosBancoDoc.Text)+','
                 +QuotedStr(cdsDadosFavorecido.Text)+','
                 +QuotedStr(vtipo)+','+QuotedStr(vcpf)+','+QuotedStr(vdoc)+',1)'],4);
  except
  end;
end;

procedure TFfrmFinanceiro.GroupBox4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  cdsDadosReduz.AsInteger  := frmPesquisaCtc.vpCodPrincipal;
  GroupBox16.Visible := False;
  if (fBus(1,['Select Count(*) From cadplano p  Where (p.fgfechamento is null or p.fgfechamento = ''S'') and  p.Reduz = 0'+cdsDadosReduz.AsString],1) <> 0) then
  begin
    GroupBox16.Visible := True;
    if (Trim(cdsDadosSafra.AsString) = '')  then
      cdsDadosSafra.asString  := FormatDateTime('yyyy', now);
    DBEdit11.SetFocus;
  end;

end;

procedure TFfrmFinanceiro.GroupBox6Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;
  if frmPesquisaCFP.dbgLista.Visible then exit;

  cdsDadosFavorCod.AsInteger  := frmPesquisaCFP.vpCodPrincipal;
  cdsDadosFavorecido.AsString := frmPesquisaCFP.vpDescricao;

  //Deve buscar o Plano de contas do cadastro empresa
  if (cdsDadosFavorCod.AsInteger > 0) and (cdsDadosReduz.AsInteger = 0)then
  begin
    if cdsDadosFormaDes.Text ='C' then
      fSql(1,1,['Select CTC From CadClien Where codigo = 0'+IntToStr(cdsDadosFavorCod.AsInteger)],1)
    else
      fSql(1,1,['Select CTC From CadForne Where codigo = 0'+IntToStr(cdsDadosFavorCod.AsInteger)],1);

    if dm.qrSql1.Fields[0].asInteger > 0 then
    begin
      cdsDadosReduz.asInteger := dm.qrSql1.FieldByName('CTC').asInteger;
      frmPesquisaCtc.pRetornaDados(cdsDadosReduz.AsString);
    end
    else begin
      //Se não tiver cadastrado traz o último
      fSql(1,1,['Select First 1 Reduz, Safra From CXBanco Where FavorCod = 0'+IntToStr(cdsDadosFavorCod.AsInteger)+' Order by Lanc Desc'],1);
      if dm.qrSql1.Fields[0].asInteger > 0 then
      begin
        cdsDadosReduz.asInteger := dm.qrSql1.FieldByName('Reduz').asInteger;
        cdsDadosSafra.asString  := dm.qrSql1.FieldByName('Safra').asString;
        frmPesquisaCtc.pRetornaDados(cdsDadosReduz.AsString);
      end
    end;
  end;

  frmPesquisaCTC.edtPesquisa.SetFocus;
end;

end.
