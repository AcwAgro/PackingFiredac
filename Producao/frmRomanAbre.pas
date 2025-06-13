unit frmRomanAbre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ACBrBase, ACBrEnterTab, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmRomanAbre = class(TFModelo)
    SE1: TSpeedButton;
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
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    sqlDadosCODLOTECLASS: TStringField;
    cdsDadosCODLOTECLASS: TStringField;
    frmPesquisaVarie: TfrmPesquisa;
    GroupBox9: TGroupBox;
    frmPesquisaLocal: TfrmPesquisa;
    sqlDadosLOCALCOD: TIntegerField;
    cdsDadosLOCALCOD: TIntegerField;
    GroupBox5: TGroupBox;
    frmPesquisaProdutor: TfrmPesquisa;
    sqlDadosPRODUTORCOD: TIntegerField;
    cdsDadosPRODUTORCOD: TIntegerField;
    DBEdit16: TcxDBDateEdit;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1HORINI: TcxGridDBColumn;
    dbDadosDBTableView1LOTE: TcxGridDBColumn;
    dbDadosDBTableView1VARIEDES: TcxGridDBColumn;
    dbDadosDBTableView1FECHA: TcxGridDBColumn;
    dbDadosDBTableView1LOCALCOD: TcxGridDBColumn;
    dbDadosDBTableView1HORFIM: TcxGridDBColumn;
    dbDadosDBTableView1QTDEBIN: TcxGridDBColumn;
    dbDadosDBTableView1PESOBRU: TcxGridDBColumn;
    dbDadosDBTableView1PESOLIQ: TcxGridDBColumn;
    dbDadosDBTableView1DATAFIN: TcxGridDBColumn;
    dbDadosDBTableView1PESOPRO: TcxGridDBColumn;
    dbDadosDBTableView1PERCA: TcxGridDBColumn;
    dbDadosDBTableView1PEREC: TcxGridDBColumn;
    dbDadosDBTableView1VARIECOD: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1CODLOTECLASS: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    dbDadosDBTableView1PRODUTORCOD: TcxGridDBColumn;
    dbDadosDBTableView1ProdDes: TcxGridDBColumn;
    sqlDadosOBS: TStringField;
    sqlDadosFGENVIAWEB: TStringField;
    sqlDadosQTDEMER: TBCDField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosOBS: TStringField;
    cdsDadosFGENVIAWEB: TStringField;
    cdsDadosQTDEMER: TBCDField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosZZPRODDES: TStringField;
    cdsDadosZZPRODDES: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure frmPesquisaVarieExit(Sender: TObject);
    procedure SE1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GroupBox2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRomanAbre: TFfrmRomanAbre;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmRomanAbre.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaVarie.pInicia('ttVariedade',TForm(Sender),7,147,GroupBox4,True);
  frmPesquisaLocal.pInicia('ttLocal',TForm(Sender),7,147,GroupBox9,True);
  frmPesquisaProdutor.pInicia('ttProdutor',TForm(Sender),7,147,GroupBox5,True);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomanAbre.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomanAbre.frmPesquisaVarieExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if pcItem.ActivePageIndex = 1 then
  begin

    cdsDadosVarieCod.AsInteger := frmPesquisaVarie.vpCodPrincipal;
    if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
      cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',0,xAno+Trim('0'+cdsDadosVarieCod.asString)) + 1
    else
      cdsDadosLote.AsInteger := cdsDadosLanc.AsInteger;

  end;
end;


procedure TFfrmRomanAbre.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaVarie.pRetornaDados(cdsDadosVarieCod.AsString);
    frmPesquisaLocal.pRetornaDados(cdsDadosLocalCod.AsString);
    frmPesquisaProdutor.pRetornaDados(cdsDadosProdutorCod.AsString);
  end;
end;

procedure TFfrmRomanAbre.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFfrmRomanAbre.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (cdsDadosLote.AsInteger = 0) then
  begin
    frPerg('Informe um lote válido!', 'OK');
    DBEdit15.SetFocus;
  end;

end;

procedure TFfrmRomanAbre.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit15.SetFocus;
end;

procedure TFfrmRomanAbre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomanAbre);
end;

procedure TFfrmRomanAbre.sbIncluirClick(Sender: TObject);
var vlot: Integer;
begin
  Case TComponent(Sender).Tag of
    13,14: if cdsDadosFecha.AsString = 'S' then
           begin
             frPerg('Esse lote já foi fechado.', 'OK');
             Abort;
           end;
  End;

  if TComponent(Sender).Tag = 15 then
  begin
    if not frValidaAnoData(cdsDadosData.AsDateTime) then
      Exit;

    if frmPesquisaVarie.vpCodPrincipal = 0 then
    begin
      frPerg('Obrigatório informar a variedade!', 'OK');
      frmPesquisaVarie.edtPesquisa.SetFocus;
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
          frmPesquisaVarie.pLimpaCampo;
          frmPesquisaLocal.pLimpaCampo;
          frmPesquisaProdutor.pLimpaCampo;
          cdsDados.Append;
          cdsDadosLanc.AsInteger := frGenerator('ROMAN','LANC',1);
          cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ROMAN_ID');
          cdsDadosData.asDateTime := Date;
          cdsDadosHorIni.asString := FormatDateTime('HH:MM', Time);
          cdsDadosLote.AsInteger := cdsDadosLanc.AsInteger;
          cdsDadosSafra.AsString := xAno;
          cdsDadosFecha.AsString := 'N';
          cdsDadosLocalCod.asInteger := 1;
          frmPesquisaLocal.edtPesquisa.Text := '1';

          if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
            cdsDadosLote.AsInteger := 0
          else
            cdsDadosLote.AsInteger := cdsDadosLanc.AsInteger;

          frmPesquisaVarie.edtPesquisa.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit16.SetFocus;
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

             if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
             begin
               vlot := frGenerator('ROMAN','LOTE',0,xAno+Trim('0'+cdsDadosVarieCod.asString)) + 1;
               if cdsDadosLote.AsInteger = vlot then
                 cdsDadosLote.AsInteger := frGenerator('ROMAN','LOTE',1,xAno+Trim('0'+cdsDadosVarieCod.asString));
             end;

             cdsDadosVarieCod.AsInteger := frmPesquisaVarie.vpCodPrincipal;
             cdsDadosVarieDes.AsString  := frmPesquisaVarie.vpDescricao;
             cdsDadosProdutorCod.AsInteger := frmPesquisaProdutor.vpCodPrincipal;
             cdsDadosLocalCod.AsInteger := frmPesquisaLocal.vpCodPrincipal;
             if cdsDadosLocalCod.asInteger < 1 then
               cdsDadosLocalCod.asInteger := 1;
             cdsDadosEmpreCod.asInteger := xEmp;
             cdsDadosAcesoCod.asInteger := xAcesso;
             cdsDados.Post;
             cdsDados.ApplyUpdates(-1);

             if frPerg('Deseja enviar para esteira/produção?') then
               SE1.OnClick(SE1);
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

procedure TFfrmRomanAbre.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select roman.*, cadforne.descricao as ZZProdDes');
  sqlDados.SQL.Add('  from roman');
  sqlDados.SQL.Add('  left join cadforne on cadforne.codigo = roman.produtorcod');
  sqlDados.SQL.Add('  where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

procedure TFfrmRomanAbre.SE1Click(Sender: TObject);
var vconf,varr:String; vArq:TextFile;
begin
  if cdsDadosFecha.AsString = 'S' then
  begin
    frPerg('Esse lote já foi fechado!', 'OK');
    Abort;
  end;

  if frPerg(PChar('Deseja Abrir ESTEIRA -> 01'+#13+
                  'Lote nº '+cdsDadosLote.asString)) then
  begin
    try
      vconf := xdirsi+'DADOS\Config'+xBDConexao+'.INI';
      DeleteFile(vconf);
      AssignFile(varq,xdirsi+'DADOS\Config'+xBDConexao+'.INI');
      Rewrite(varq);
      Writeln(varq,'Lote     ='+cdsDadosLote.Text);
      Writeln(varq,'Codigo   ='+cdsDadosVarieCod.Text);
      Writeln(varq,'Variedade='+cdsDadosVarieDes.Text);
      Writeln(varq,'Registro ='+cdsDadosLanc.Text);
      Writeln(varq,'LoteClass='+cdsDadosCodLoteClass.Text);
      Writeln(varq,'Data     ='+cdsDadosDATA.AsString);
      Writeln(varq,'DataVal  ='+DateToStr(cdsDadosDATA.asDateTime + 15));
      CloseFile(varq);

      AssignFile(varq,xdirsi+'DADOS\MUDOU.INI');
      Rewrite(varq);
      Writeln(varq,'Lote     ='+cdsDadosLote.Text);
      CloseFile(varq);

    except
      frPerg(PChar('Erro ao salvar esteira...'+#13+vconf), 'OK');
    end;
  end;
end;

procedure TFfrmRomanAbre.GroupBox2Exit(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then Exit;
  if cdsDados.State = dsBrowse then exit;

  if (fBus(1,['Select valor From zGenerator Where Tabela = ''ROMAN'' and Campo = ''POR_ANO'''],1) = 1) then
    exit;

  if (StrToIntDef(cdsDadosLote.AsString,0) > 0) then
  begin
    if (fBus(1,['Select count(*) from Roman where LOTE = 0'+cdsDadosLote.AsString],1) > 0) then
    begin

      if not frPerg('Já existe romaneio com esse LOTE!'+#13+'Deseja continuar?', 'SN') then
      begin
        dbEdit15.SetFocus;
        exit;
      end;
    end;
  end;

end;
end.
