unit frmRomaneioTara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmRomaneioTara = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    dtpData: TDateTimePicker;
    GroupBox5: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
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
    cdsDadosIMPORTEMP: TIntegerField;
    cdsDadosIMPORTLANC: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    cdsDadosHORA: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpDataChange(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure pcItemChange(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet);
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
uses Data, Rotina, Esteira, zModeloRel, Pesq;

procedure TFfrmRomaneioTara.FormCreate(Sender: TObject);
begin
  inherited;
  dtpData.Date := Date;
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

procedure TFfrmRomaneioTara.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pcItem.ActivePageIndex = 1 then
  begin
    frmPesquisaPro.pRetornaDados(cdsDadosProdCod.AsString);
    frmPesquisaMot.pRetornaDados(cdsDadosPlaca.AsString);
  end;
end;

procedure TFfrmRomaneioTara.DBEdit16Exit(Sender: TObject);
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

procedure TFfrmRomaneioTara.dtpDataChange(Sender: TObject);
begin
  inherited;
  cdsDadosDATA.AsDateTime := dtpData.Date;
end;

procedure TFfrmRomaneioTara.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  FreeAndNil(FfrmRomaneioTara);
end;

procedure TFfrmRomaneioTara.sbIncluirClick(Sender: TObject);
begin

  //if not fVerficaDataValida(TComponent(Sender).Tag, cdsDadosData.Value) then
  //  exit;

  inherited;

  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosLanc.AsInteger   := frGenerator('ENTRT','LANC',1);
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_ENTRT_ID');
          cdsDadosData.AsDateTime  := Date;
          cdsDadosSafra.AsString   := FormatDateTime('yyyy', Now);
          cdsDadosHora.AsString    := FormatDateTime('HH:MM:SS', Now);
          frmPesquisaMot.edtPesquisa.Text := '1';
          frmPesquisaMot.pRetornaDados(cdsDadosPlaca.AsString);

          DBEdit16.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit16.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(0);
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
            cdsDadosEmpreCod.asInteger   := xEmp;
            cdsDadosAcesoCod.asInteger   := xAcesso;
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
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmRomaneioTara.sbPeriodoClick(Sender: TObject);
begin
  inherited;
  cdsDados.Close;
  cdsDados.Sql.Clear;
  cdsDados.SQL.Add('select * from entrt where '+frWhereD('Data',dtInicial.Date,dtFinal.Date));
  cdsDados.Open;
end;

end.

