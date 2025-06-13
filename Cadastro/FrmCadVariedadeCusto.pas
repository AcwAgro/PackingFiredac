unit FrmCadVariedadeCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  ACBrBase, ACBrSocket, ACBrCEP, ShellApi, Menus, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadVariedadeCusto = class(TFModelo)
    dspCusto: TDataSetProvider;
    cdsCusto: TClientDataSet;
    dsCusto: TDataSource;
    DBGrid1: TDBGrid;
    cdsDadoslanc: TIntegerField;
    cdsDadosdata: TSQLTimeStampField;
    cdsDadoscqt: TIntegerField;
    cdsCustoLANC: TIntegerField;
    cdsCustoLANCIT: TIntegerField;
    cdsCustoCODIGO: TIntegerField;
    cdsCustoVAL1: TBCDField;
    cdsCustoVAL2: TBCDField;
    cdsCustoVAL3: TBCDField;
    cdsCustoVAL4: TBCDField;
    cdsCustoVAL5: TBCDField;
    cdsCustoACESOCOD: TIntegerField;
    PopupMenu1: TPopupMenu;
    Exclui1: TMenuItem;
    Panel1: TPanel;
    GroupBox12: TGroupBox;
    Label6: TLabel;
    DBEdit11: TcxDBDateEdit;
    cdsCustoREG_ID: TIntegerField;
    sqlCusto: TFDQuery;
    sqlCustoLANCIT: TIntegerField;
    sqlCustoLANC: TIntegerField;
    sqlCustoCODIGO: TIntegerField;
    sqlCustoVAL1: TBCDField;
    sqlCustoVAL2: TBCDField;
    sqlCustoVAL3: TBCDField;
    sqlCustoVAL4: TBCDField;
    sqlCustoVAL5: TBCDField;
    sqlCustoACESOCOD: TIntegerField;
    sqlCustoREGLOG: TStringField;
    sqlCustoREG_ID: TIntegerField;
    sqlCustoDATA: TSQLTimeStampField;
    cdsCustoDATA: TSQLTimeStampField;
    cdsCustoREGLOG: TStringField;
    sqlCustoZCATEGDES: TStringField;
    cdsCustoZCATEGDES: TStringField;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cdsCustoBeforeInsert(DataSet: TDataSet);
    procedure Exclui1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet);
    procedure pcItemChange(Sender: TObject);
  private
    { Private declarations }
    procedure pVerificaCadastro(vZerado:Boolean = True);
    procedure pSalvaCadastro;
    procedure pCadastroEmpty;
    procedure pMostraDados;

  public
    { Public declarations }
  end;

var
  FfrmCadVariedadeCusto: TFfrmCadVariedadeCusto;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmGerenciadorNFE;

procedure TFfrmCadVariedadeCusto.FormCreate(Sender: TObject);
begin
  cdsDados.Close;
  cdsCusto.Close;

  inherited;

  cdsDados.Open;

  pcItem.ActivePageIndex := 0;

end;

procedure TFfrmCadVariedadeCusto.FormShow(Sender: TObject);
begin
  inherited;

  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;

  pCadastroEmpty;

end;

procedure TFfrmCadVariedadeCusto.pCadastroEmpty;
begin
{
  if cdsDados.IsEmpty then
  begin
    cdsDados.Append;
    cdsDadosLANC.AsInteger := frGenerator('CADVARIECUS','LANC',1);
    cdsDadosDATA.AsDateTime := Date;

    pVerificaCadastro(False);

    cdsDados.Cancel;
    cdsDados.Refresh;

  end;
}
end;

procedure TFfrmCadVariedadeCusto.pcItemChange(Sender: TObject);
begin
  inherited;
  pMostraDados;
end;

procedure TFfrmCadVariedadeCusto.pMostraDados;
begin
  cdsCusto.Close;
  sqlCusto.Close;
  sqlCusto.Params[0].AsInteger := cdsDadosLANC.AsInteger;
  cdsCusto.Open;

  if cdsDadosDATA.AsDateTime = StrToDate('01/01/2000') then
    sbExcluir.Enabled := False
  else
    sbExcluir.Enabled := True;

end;

procedure TFfrmCadVariedadeCusto.pVerificaCadastro(vZerado:Boolean = True);
var vcod: Integer;
begin

  try
    cdsCusto.BeforeInsert := nil;

    fSql(1,1,['Select Codigo, descricao, val1, val2 From CadVarie Where ativo = ''S'' Order by codigo'],1);
    dm.qrSql1.DisableControls;
    cdsCusto.DisableControls;
    dm.qrSql1.First;
    while not dm.qrSql1.Eof do
    begin
      vcod := dm.qrSql1.Fields[0].asInteger;
      if not cdsCusto.Locate('codigo', vcod, []) then
      begin

        cdsCusto.Append;
        cdsCustoLANC.AsInteger     := cdsDadosLanc.AsInteger;
        cdsCustoLANCIT.AsInteger   := frGenerator('CADVARIECUS','LANCIT',1);
        cdsCustoREG_ID.AsInteger   := frGeneratorFB('GEN_CADVARIECUS_ID');
        cdsCustoCODIGO.AsInteger   := dm.qrSql1.Fields[0].asInteger;
        cdsCustozCategDes.AsString := dm.qrSql1.Fields[1].asString;
        cdsCustoACESOCOD.AsInteger := xAcesso;
        //Se zerado deve informar o valor
        if vZerado then
        begin

          cdsCustoDATA.Value       := cdsDadosDATA.Value;
          cdsCustoVAL1.AsFloat     := 0;
          cdsCustoVAL2.AsFloat     := 0;
          cdsCusto.Post;

        end
        else begin

          cdsCustoDATA.asDateTime  := StrToDate('01/01/2000');
          cdsCustoVAL1.AsFloat     := dm.qrSql1.Fields[2].asFloat;
          cdsCustoVAL2.AsFloat     := dm.qrSql1.Fields[3].asFloat;
          cdsCusto.Post;

        end;

      end;

      dm.qrSql1.Next;
    end;

  finally
    dm.qrSql1.EnableControls;
    cdsCusto.EnableControls;
    dm.qrSql1.Close;
    cdsCusto.BeforeInsert := cdsCustoBeforeInsert;
    cdsCusto.First;
  end;
end;

procedure TFfrmCadVariedadeCusto.pSalvaCadastro;
begin

  try
    //dtpData.Date := cdsDadosDATA.Value;
    cdsCusto.DisableControls;

    cdsCusto.Last;
    while not cdsCusto.Bof do
    begin
      if (cdsCustoCODIGO.AsInteger <= 0) then
        cdsCusto.Delete;

      cdsCusto.Prior;
    end;

    cdsCusto.First;
    while not cdsCusto.Eof do
    begin

      if (cdsCustoCODIGO.AsInteger > 0) then
      begin
        cdsCusto.Edit;
        cdsCustoLANC.AsInteger     := cdsDadosLanc.AsInteger;
        cdsCustoDATA.Value         := cdsDadosDATA.Value;
        cdsCustoACESOCOD.AsInteger := xAcesso;
        cdsCusto.Post;
      end;

      cdsCusto.Next;
    end;
    cdsCusto.First;
    cdsCusto.EnableControls;
    cdsCusto.ApplyUpdates(-1);

    try
      cdsDados.Post;
      cdsDados.ApplyUpdates(-1);
    except
      on E:Exception do frPerg(PChar('Falha! '+ E.Message), 'OK');
    end;
  finally
    cdsCusto.EnableControls;
  end;
end;

procedure TFfrmCadVariedadeCusto.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
//  cdsCustozCategDes.AsString := fBus(1,['Select descricao from cadvarie where codigo = 0'+cdsCustoCODIGO.AsString],1);
{
  cdsCusto.Close;
  sqlCusto.Close;
  sqlCusto.Params[0].AsInteger := cdsDadosLANC.AsInteger;
  cdsCusto.Open;
}
end;

procedure TFfrmCadVariedadeCusto.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsCusto.Edit;
  Case DBGrid1.SelectedIndex of
    3: begin
         cdsCusto.Post;
         cdsCusto.Next;
         if cdsCusto.Eof then cdsCusto.Last;
         DBGrid1.SelectedIndex := 0;
       end;
  end;

end;

procedure TFfrmCadVariedadeCusto.DBGrid1Enter(Sender: TObject);
begin
  inherited;

  //dtpData.Date := cdsDadosDATA.Value;

  keyPreview := False;
  dbGrid1.ReadOnly := (not sbSalvar.Visible);
  cdsCusto.Edit;
  DBGrid1.SelectedIndex:=2;
end;

procedure TFfrmCadVariedadeCusto.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmCadVariedadeCusto.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  if key=#13 then
  begin
    key:=#0;
    if DBGrid1.SelectedIndex>=DBGrid1.Columns.Count-1 then
    begin
      DBGrid1.SelectedIndex:=2;
      cdsCusto.Next;
    end
    else DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1;
  end;

end;

procedure TFfrmCadVariedadeCusto.cdsCustoBeforeInsert(DataSet: TDataSet);
begin
  cdsCusto.Cancel;
end;

procedure TFfrmCadVariedadeCusto.Exclui1Click(Sender: TObject);
begin
  cdsCusto.Cancel;
end;

procedure TFfrmCadVariedadeCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadVariedadeCusto);
end;

procedure TFfrmCadVariedadeCusto.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosLANC.AsInteger := frGenerator('CADVARIECUS','LANC',1);
          cdsDadosDATA.AsDateTime := Date;

          pMostraDados;
          pVerificaCadastro;

          DBEdit11.SetFocus;
        end;
     13: begin
          cdsDados.Edit;

          pMostraDados;
          pVerificaCadastro;

          DBEdit11.SetFocus;
        end;
     14: begin
           fSql(1,2,['Delete From CADVARIECUS Where Lanc=0'+cdsDadosLanc.asString],1);
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            pSalvaCadastro;
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
     91,92: pMostraDados;
  end;
  vTag := TComponent(Sender).Tag;
end;

end.
