unit FrmCadCategoriaCusto;

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
  TFfrmCadCategoriaCusto = class(TFModelo)
    sqlCustox: TQuery;
    dspCusto: TDataSetProvider;
    cdsCusto: TClientDataSet;
    dsCusto: TDataSource;
    DBGrid1: TDBGrid;
    cdsDadoslanc: TIntegerField;
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
    sqlCustoxLANC: TIntegerField;
    sqlCustoxCODIGO: TIntegerField;
    sqlCustoxDATA: TSQLTimeStampField;
    sqlCustoxVAL1: TBCDField;
    sqlCustoxVAL2: TBCDField;
    sqlCustoxVAL3: TBCDField;
    sqlCustoxVAL4: TBCDField;
    sqlCustoxVAL5: TBCDField;
    sqlCustoxACESOCOD: TIntegerField;
    sqlCustoxLANCIT: TIntegerField;
    Panel1: TPanel;
    Label6: TLabel;
    GroupBox12: TGroupBox;
    DBEdit11: TcxDBDateEdit;
    sqlCustoxREGLOG: TStringField;
    sqlCustoxREG_ID: TIntegerField;
    cdsCustoREGLOG: TStringField;
    cdsCustoREG_ID: TIntegerField;
    cdsDadosDATA: TDateField;
    sqlCusto: TFDQuery;
    sqlCustoLANCIT: TIntegerField;
    sqlCustoLANC: TIntegerField;
    sqlCustoCODIGO: TIntegerField;
    sqlCustoDATA: TDateField;
    sqlCustoVAL1: TBCDField;
    sqlCustoVAL2: TBCDField;
    sqlCustoVAL3: TBCDField;
    sqlCustoVAL4: TBCDField;
    sqlCustoVAL5: TBCDField;
    sqlCustoACESOCOD: TIntegerField;
    sqlCustoREGLOG: TStringField;
    sqlCustoREG_ID: TIntegerField;
    cdsCustoDATA: TDateField;
    sqlDadosLANC: TIntegerField;
    sqlDadosDATA: TDateField;
    sqlDadosCQT: TIntegerField;
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
    procedure pcItemChange(Sender: TObject);
  private
    { Private declarations }
    procedure pVerificaCadastro(vZerado:Boolean = True);
    procedure pSalvaCadastro;
    procedure pCadastroEmpty;
    procedure pAbrirDados;

  public
    { Public declarations }
  end;

var
  FfrmCadCategoriaCusto: TFfrmCadCategoriaCusto;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, frmGerenciadorNFE;

procedure TFfrmCadCategoriaCusto.FormCreate(Sender: TObject);
begin
  cdsDados.Close;
  cdsCusto.Close;

  inherited;

  cdsDados.Open;

  pcItem.ActivePageIndex := 0;

end;

procedure TFfrmCadCategoriaCusto.FormShow(Sender: TObject);
begin
  inherited;

  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;

  pCadastroEmpty;

end;

procedure TFfrmCadCategoriaCusto.pAbrirDados;
begin

  cdsCusto.Close;
  sqlCusto.Close;
  sqlCusto.Params[0].AsInteger := cdsDadosLANC.AsInteger;
  cdsCusto.Open;

  if cdsDadosDATA.Value = StrToDate('01/01/2000') then
  begin
    //DBEdit11.ReadOnly := True;
    sbExcluir.Enabled := False;
    //dtpData.Enabled   := False;
  end
  else begin
    //DBEdit11.ReadOnly := False;
    sbExcluir.Enabled := True;
    //dtpData.Enabled   := True;
  end;

end;

procedure TFfrmCadCategoriaCusto.pCadastroEmpty;
begin

  if cdsDados.IsEmpty then
  begin
    cdsDados.Append;
    cdsDadosLANC.AsInteger := frGenerator('CADCATEGCUS','LANC',1);
    cdsDadosDATA.Value := Date;

    pVerificaCadastro(False);

    cdsDados.Cancel;
    cdsDados.Refresh;

  end;

end;

procedure TFfrmCadCategoriaCusto.pcItemChange(Sender: TObject);
begin
  inherited;
 pAbrirDados;
end;

procedure TFfrmCadCategoriaCusto.pVerificaCadastro(vZerado:Boolean = True);
var vcod: Integer;
begin

  try
    cdsCusto.BeforeInsert := nil;

    fSql(1,1,['Select Codigo, descricao, val1 From CadCateg Where ativo = ''S'' Order by codigo'],1);
    dm.qrSql1.DisableControls;
    cdsCusto.DisableControls;
    dm.qrSql1.First;
    while not dm.qrSql1.Eof do
    begin
      vcod := dm.qrSql1.Fields[0].asInteger;
      if not cdsCusto.Locate('codigo', vcod, []) then
      begin

        cdsCusto.Append;
        cdsCustoREG_ID.AsInteger := frGeneratorFB('GEN_CADCATEGCUS_ID');
        cdsCustoLANC.AsInteger     := cdsDadosLanc.AsInteger;
        cdsCustoLANCIT.AsInteger   := frGenerator('CADCATEGCUS','LANCIT',1);
        cdsCustoCODIGO.AsInteger   := dm.qrSql1.Fields[0].asInteger;
        cdsCustozCategDes.AsString := dm.qrSql1.Fields[1].asString;
        cdsCustoACESOCOD.AsInteger := xAcesso;
        //Se zerado deve informar o valor
        if vZerado then
        begin

          cdsCustoVAL1.AsFloat     := 0;
          cdsCusto.Post;

        end
        else begin

          cdsCustoDATA.Value       := cdsDadosDATA.Value;
          cdsCustoVAL1.AsFloat     := dm.qrSql1.Fields[2].asFloat;
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

procedure TFfrmCadCategoriaCusto.pSalvaCadastro;
begin

  try
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

procedure TFfrmCadCategoriaCusto.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) then Exit;
  cdsCusto.Edit;
  Case DBGrid1.SelectedIndex of
    2: begin
         cdsCusto.Post;
         cdsCusto.Next;
         if cdsCusto.Eof then cdsCusto.Last;
         DBGrid1.SelectedIndex := 0;
       end;
  end;

end;

procedure TFfrmCadCategoriaCusto.DBGrid1Enter(Sender: TObject);
begin
  inherited;

  //dtpData.Date := cdsDadosDATA.Value;

  keyPreview := False;
  dbGrid1.ReadOnly := (not sbSalvar.Visible);
  cdsCusto.Edit;
  DBGrid1.SelectedIndex:=2;
end;

procedure TFfrmCadCategoriaCusto.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  vKey := 0;
  keyPreview := True;
end;

procedure TFfrmCadCategoriaCusto.DBGrid1KeyPress(Sender: TObject;
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

procedure TFfrmCadCategoriaCusto.cdsCustoBeforeInsert(DataSet: TDataSet);
begin
  cdsCusto.Cancel;
end;

procedure TFfrmCadCategoriaCusto.Exclui1Click(Sender: TObject);
begin
  cdsCusto.Cancel;
end;

procedure TFfrmCadCategoriaCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadCategoriaCusto);
end;

procedure TFfrmCadCategoriaCusto.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosLANC.AsInteger := frGenerator('CADCATEGCUS','LANC',1);
          cdsDadosDATA.Value := Date;

          pAbrirDados;
          pVerificaCadastro;

          DBEdit11.SetFocus;
        end;
     13: begin
          cdsDados.Edit;

          pAbrirDados;
          pVerificaCadastro;

          DBEdit11.SetFocus;
        end;
     14: begin

           cdsCusto.Last;
           while not cdsCusto.Bof do
             cdsCusto.Delete;
           cdsCusto.ApplyUpdates(-1);

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
     91,92: pAbrirDados;
  end;
  vTag := TComponent(Sender).Tag;
end;

end.
