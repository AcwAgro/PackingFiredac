unit FrmCadBancoCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, zFrmPesquisa,
  FileCtrl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadBancoCob = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    sqlDadosID: TIntegerField;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosATIVO: TStringField;
    sqlDadosBANCONUM: TIntegerField;
    sqlDadosBANCODES: TStringField;
    sqlDadosAGENCIANR: TStringField;
    sqlDadosAGENCIADV: TStringField;
    sqlDadosCONTANR: TStringField;
    sqlDadosCONTADV: TStringField;
    sqlDadosCONVENIO: TStringField;
    sqlDadosCONTRATO: TStringField;
    sqlDadosCARTEIRA: TStringField;
    sqlDadosINSTRUCAO1: TStringField;
    sqlDadosINSTRUCAO2: TStringField;
    sqlDadosMENSAGEM: TStringField;
    sqlDadosTEXTO1: TStringField;
    sqlDadosARQUIVODES: TStringField;
    sqlDadosARQUIVONUM: TIntegerField;
    sqlDadosNOSSONUMERO: TIntegerField;
    sqlDadosLAYOUT: TIntegerField;
    sqlDadosACEITE: TStringField;
    sqlDadosJUROSPER: TBCDField;
    sqlDadosMULTAPER: TBCDField;
    sqlDadosPROTESTO: TIntegerField;
    sqlDadosPASTAENV: TStringField;
    sqlDadosPASTARET: TStringField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    cdsDadosID: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosATIVO: TStringField;
    cdsDadosBANCONUM: TIntegerField;
    cdsDadosBANCODES: TStringField;
    cdsDadosAGENCIANR: TStringField;
    cdsDadosAGENCIADV: TStringField;
    cdsDadosCONTANR: TStringField;
    cdsDadosCONTADV: TStringField;
    cdsDadosCONVENIO: TStringField;
    cdsDadosCONTRATO: TStringField;
    cdsDadosCARTEIRA: TStringField;
    cdsDadosINSTRUCAO1: TStringField;
    cdsDadosINSTRUCAO2: TStringField;
    cdsDadosMENSAGEM: TStringField;
    cdsDadosTEXTO1: TStringField;
    cdsDadosARQUIVODES: TStringField;
    cdsDadosARQUIVONUM: TIntegerField;
    cdsDadosNOSSONUMERO: TIntegerField;
    cdsDadosLAYOUT: TIntegerField;
    cdsDadosACEITE: TStringField;
    cdsDadosJUROSPER: TBCDField;
    cdsDadosMULTAPER: TBCDField;
    cdsDadosPROTESTO: TIntegerField;
    cdsDadosPASTAENV: TStringField;
    cdsDadosPASTARET: TStringField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox12: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox11: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit9: TDBEdit;
    btnRemessa: TSpeedButton;
    btnRetorno: TSpeedButton;
    GroupBox13: TGroupBox;
    DBComboBox1: TDBComboBox;
    GroupBox14: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit12: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit13: TDBEdit;
    DataSource1: TDataSource;
    GroupBox18: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit15: TDBEdit;
    GroupBox20: TGroupBox;
    DBEdit16: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox21: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit19: TDBEdit;
    Label6: TLabel;
    GroupBox23: TGroupBox;
    DBEdit20: TDBEdit;
    GroupBox24: TGroupBox;
    DBEdit21: TDBEdit;
    sqlDadosESPECIE: TStringField;
    cdsDadosESPECIE: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    procedure DBEdit4Exit(Sender: TObject);
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbgAtivoClick(Sender: TObject);
    procedure btnRemessaClick(Sender: TObject);
    procedure btnRetornoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadBancoCob: TFfrmCadBancoCob;

const
  SELDIRHELP = 1000;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCadBancoCob.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  rbgAtivo.Visible := True;
  cdsDados.Open;
end;

procedure TFfrmCadBancoCob.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadBancoCob.rbgAtivoClick(Sender: TObject);
begin
  inherited;

  cdsDados.Close;
  if rbgAtivo.ItemIndex = 0 then
    sqlDados.SQL.Text := 'select * from cadbanco where ativo = ''S'''
  else
    sqlDados.SQL.Text := 'select * from cadbanco where ativo = ''N''';
  cdsDados.Open;

end;

procedure TFfrmCadBancoCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadBancoCob);
end;

procedure TFfrmCadBancoCob.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosID.AsInteger := frGenerator('CADBANCOCC','CODIGO',0) + 1;
          cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADBANCOCC_ID');
          cdsDadosATIVO.AsString  := 'S';
          cdsDadosACEITE.AsString := 'S';
          cdsDadosMENSAGEM.AsString  := 'Pagar preferêncialmente nas agências do Banco do Brasil';

          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Edit;
           cdsDadosATIVO.AsString  := 'N';
           cdsDados.Post;
           cdsDados.ApplyUpdates(-1);
           cdsDados.Refresh;
         end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosID.AsInteger := frGenerator('CADBANCOCC','CODIGO',1);

            cdsDadosCODIGO.AsInteger := cdsDadosID.AsInteger;
            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
            //cdsDados.Refresh;
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

procedure TFfrmCadBancoCob.btnRemessaClick(Sender: TObject);
var Dir: string;
begin
  if Length(cdsDadosPASTAENV.AsString) <= 0 then
     Dir := ExtractFileDir(application.ExeName)+'\Remessa'
  else
     Dir := cdsDadosPASTAENV.AsString;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt] ,SELDIRHELP) then
    cdsDadosPASTAENV.AsString := Dir;

end;

procedure TFfrmCadBancoCob.btnRetornoClick(Sender: TObject);
var Dir: string;
begin
  if Length(cdsDadosPASTARET.AsString) <= 0 then
     Dir := ExtractFileDir(application.ExeName)+'\Retorno'
  else
     Dir := cdsDadosPASTARET.AsString;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    cdsDadosPASTARET.AsString := Dir;

end;

procedure TFfrmCadBancoCob.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;
//  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;
end;

end.
