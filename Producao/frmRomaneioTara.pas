unit frmRomaneioTara;

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
  TFfrmRomaneioTara = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TSQLTimeStampField;
    sqlDadosPRODCOD: TIntegerField;
    sqlDadosPRODDES: TStringField;
    sqlDadosPLACA: TStringField;
    sqlDadosPLACADES: TStringField;
    sqlDadosPESO: TBCDField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosSAFRA: TStringField;
    cdsDadosLANC: TIntegerField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosPRODCOD: TIntegerField;
    cdsDadosPRODDES: TStringField;
    cdsDadosPLACA: TStringField;
    cdsDadosPLACADES: TStringField;
    cdsDadosPESO: TBCDField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosSAFRA: TStringField;
    frmPesquisaMot: TfrmPesquisa;
    frmPesquisaPro: TfrmPesquisa;
    DBEdit16: TcxDBDateEdit;
    dbDadosDBTableView1DATA: TcxGridDBColumn;
    dbDadosDBTableView1PRODCOD: TcxGridDBColumn;
    dbDadosDBTableView1PRODDES: TcxGridDBColumn;
    dbDadosDBTableView1PLACA: TcxGridDBColumn;
    dbDadosDBTableView1PLACADES: TcxGridDBColumn;
    dbDadosDBTableView1PESO: TcxGridDBColumn;
    dbDadosDBTableView1EMPRECOD: TcxGridDBColumn;
    dbDadosDBTableView1ACESOCOD: TcxGridDBColumn;
    dbDadosDBTableView1SAFRA: TcxGridDBColumn;
    dbDadosDBTableView1LANC: TcxGridDBColumn;
    sqlDadosIMPORTEMP: TIntegerField;
    sqlDadosIMPORTLANC: TIntegerField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosIMPORTEMP: TIntegerField;
    cdsDadosIMPORTLANC: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcItemChange(Sender: TObject);
    procedure sbPeriodoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRomaneioTara: TFfrmRomaneioTara;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Pesq;

procedure TFfrmRomaneioTara.FormCreate(Sender: TObject);
begin
  inherited;
  frmPesquisaPro.pInicia('ttProdutor', TForm(Sender),7,147,GroupBox4,true);
  frmPesquisaMot.pInicia('ttMotorista', TForm(Sender),7,147,GroupBox6,true);
  pcItem.ActivePageIndex := 0;
  sbPeriodo.OnClick(sbPeriodo);
end;

procedure TFfrmRomaneioTara.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmRomaneioTara.pcItemChange(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosPlaca.AsString);
  end;
end;

procedure TFfrmRomaneioTara.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmRomaneioTara);
end;

procedure TFfrmRomaneioTara.sbIncluirClick(Sender: TObject);
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

           cdsDados.Append;
           cdsDadosLanc.AsInteger := frGenerator('ENTRT','LANC',1);
           cdsDadosREG_ID.AsInteger   := frGeneratorFB('GEN_ENTRT_ID');
           cdsDadosData.asDateTime := Date;
           cdsDadosSafra.AsString := xAno;
           frmPesquisaMot.edtPesquisa.Text := '1';
           DBEdit16.SetFocus;
         end;
     13: begin
          cdsDados.Edit;
          DBEdit16.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
           try
             cdsDadosProdCod.AsInteger  := frmPesquisaPro.vpCodPrincipal;
             cdsDadosProdDes.AsString   := frmPesquisaPro.vpDescricao;
             cdsDadosPlaca.AsInteger    := frmPesquisaMot.vpCodPrincipal;
             if (Length(Trim(frmPesquisaMot.vpCampo_2)) > 1) then
               cdsDadosPlacaDes.AsString  := Trim(frmPesquisaMot.vpCampo_2)+' - '+frmPesquisaMot.vpDescricao
             else
               cdsDadosPlacaDes.AsString  := frmPesquisaMot.vpDescricao;
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
procedure TFfrmRomaneioTara.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('select * from entrt where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

end.

