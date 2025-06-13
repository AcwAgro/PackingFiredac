unit frmCadImpres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadImpres = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    CB15: TCheckBox;
    CB1: TCheckBox;
    CB2: TCheckBox;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    CB8: TCheckBox;
    DBEdit11: TDBEdit;
    CheckBox1: TCheckBox;
    DBEdit6: TDBEdit;
    CheckBox2: TCheckBox;
    DBEdit7: TDBEdit;
    CheckBox3: TCheckBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosNOME: TStringField;
    sqlDadosVOLUME: TStringField;
    sqlDadosPRO1: TIntegerField;
    sqlDadosPRO2: TIntegerField;
    sqlDadosPRO3: TIntegerField;
    sqlDadosPRO4: TIntegerField;
    sqlDadosPRO5: TIntegerField;
    sqlDadosPRO6: TIntegerField;
    sqlDadosPRO7: TIntegerField;
    sqlDadosPRO8: TIntegerField;
    sqlDadosPRO9: TIntegerField;
    sqlDadosPRO10: TIntegerField;
    sqlDadosPRO11: TIntegerField;
    sqlDadosPRO12: TIntegerField;
    sqlDadosPRO13: TIntegerField;
    sqlDadosPRO14: TIntegerField;
    sqlDadosPRO15: TIntegerField;
    sqlDadosIMP1: TIntegerField;
    sqlDadosIMP2: TIntegerField;
    sqlDadosIMP3: TIntegerField;
    sqlDadosIMP4: TIntegerField;
    sqlDadosIMP5: TIntegerField;
    sqlDadosIMP6: TIntegerField;
    sqlDadosIMP7: TIntegerField;
    sqlDadosIMP8: TIntegerField;
    sqlDadosIMP9: TIntegerField;
    sqlDadosIMP10: TIntegerField;
    sqlDadosIMP11: TIntegerField;
    sqlDadosIMP12: TIntegerField;
    sqlDadosIMP13: TIntegerField;
    sqlDadosIMP14: TIntegerField;
    sqlDadosIMP15: TIntegerField;
    sqlDadosREG_ID: TIntegerField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosVOLUME: TStringField;
    cdsDadosPRO1: TIntegerField;
    cdsDadosPRO2: TIntegerField;
    cdsDadosPRO3: TIntegerField;
    cdsDadosPRO4: TIntegerField;
    cdsDadosPRO5: TIntegerField;
    cdsDadosPRO6: TIntegerField;
    cdsDadosPRO7: TIntegerField;
    cdsDadosPRO8: TIntegerField;
    cdsDadosPRO9: TIntegerField;
    cdsDadosPRO10: TIntegerField;
    cdsDadosPRO11: TIntegerField;
    cdsDadosPRO12: TIntegerField;
    cdsDadosPRO13: TIntegerField;
    cdsDadosPRO14: TIntegerField;
    cdsDadosPRO15: TIntegerField;
    cdsDadosIMP1: TIntegerField;
    cdsDadosIMP2: TIntegerField;
    cdsDadosIMP3: TIntegerField;
    cdsDadosIMP4: TIntegerField;
    cdsDadosIMP5: TIntegerField;
    cdsDadosIMP6: TIntegerField;
    cdsDadosIMP7: TIntegerField;
    cdsDadosIMP8: TIntegerField;
    cdsDadosIMP9: TIntegerField;
    cdsDadosIMP10: TIntegerField;
    cdsDadosIMP11: TIntegerField;
    cdsDadosIMP12: TIntegerField;
    cdsDadosIMP13: TIntegerField;
    cdsDadosIMP14: TIntegerField;
    cdsDadosIMP15: TIntegerField;
    cdsDadosREG_ID: TIntegerField;
    sqlDadosREGLOG: TStringField;
    cdsDadosREGLOG: TStringField;
    dbDadosDBTableView1CODIGO: TcxGridDBColumn;
    dbDadosDBTableView1NOME: TcxGridDBColumn;
    dbDadosDBTableView1VOLUME: TcxGridDBColumn;
    dbDadosDBTableView1PRO1: TcxGridDBColumn;
    dbDadosDBTableView1PRO2: TcxGridDBColumn;
    dbDadosDBTableView1PRO3: TcxGridDBColumn;
    dbDadosDBTableView1PRO4: TcxGridDBColumn;
    dbDadosDBTableView1PRO5: TcxGridDBColumn;
    dbDadosDBTableView1PRO6: TcxGridDBColumn;
    dbDadosDBTableView1PRO7: TcxGridDBColumn;
    dbDadosDBTableView1PRO8: TcxGridDBColumn;
    dbDadosDBTableView1PRO9: TcxGridDBColumn;
    dbDadosDBTableView1PRO10: TcxGridDBColumn;
    dbDadosDBTableView1PRO11: TcxGridDBColumn;
    dbDadosDBTableView1PRO12: TcxGridDBColumn;
    dbDadosDBTableView1PRO13: TcxGridDBColumn;
    dbDadosDBTableView1PRO14: TcxGridDBColumn;
    dbDadosDBTableView1PRO15: TcxGridDBColumn;
    dbDadosDBTableView1IMP1: TcxGridDBColumn;
    dbDadosDBTableView1IMP2: TcxGridDBColumn;
    dbDadosDBTableView1IMP3: TcxGridDBColumn;
    dbDadosDBTableView1IMP4: TcxGridDBColumn;
    dbDadosDBTableView1IMP5: TcxGridDBColumn;
    dbDadosDBTableView1IMP6: TcxGridDBColumn;
    dbDadosDBTableView1IMP7: TcxGridDBColumn;
    dbDadosDBTableView1IMP8: TcxGridDBColumn;
    dbDadosDBTableView1IMP9: TcxGridDBColumn;
    dbDadosDBTableView1IMP10: TcxGridDBColumn;
    dbDadosDBTableView1IMP11: TcxGridDBColumn;
    dbDadosDBTableView1IMP12: TcxGridDBColumn;
    dbDadosDBTableView1IMP13: TcxGridDBColumn;
    dbDadosDBTableView1IMP14: TcxGridDBColumn;
    dbDadosDBTableView1IMP15: TcxGridDBColumn;
    dbDadosDBTableView1REG_ID: TcxGridDBColumn;
    dbDadosDBTableView1REGLOG: TcxGridDBColumn;
    procedure sbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmCadImpres: TFfrmCadImpres;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel, Printers;

procedure TFfrmCadImpres.FormCreate(Sender: TObject);
var vll:Integer;
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
  Memo1.Lines:=Printer.Printers;
  for vll:=0 to Memo1.Lines.Count-1 do
     Memo1.Lines[vll]:=IntToStr(vll)+' = '+Memo1.Lines[vll]
end;

procedure TFfrmCadImpres.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCadImpres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadImpres);
end;

procedure TFfrmCadImpres.sbIncluirClick(Sender: TObject);
var vVolume: String;
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          vVolume := frMicro('C');
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('ZIMPR','CODIGO',1);
          cdsDadosVolume.asString  := vVolume;
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
//           cdsDados.Refresh;
         end;
     15: begin
          try
            cdsDados.Edit;
            cdsDados.Post;
            cdsDados.ApplyUpdates(-1);
//            cdsDados.Refresh;
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

end.
