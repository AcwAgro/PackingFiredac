unit PaletAvulso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,
  Grids, DBGrids, Spin, DelphiZXingQRCode, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPaletAvulso = class(TForm)
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    PDados: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    SB4: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SE2: TSpinEdit;
    SE1: TSpinEdit;
    CB2: TComboBox;
    CB1: TComboBox;
    SE3: TSpinEdit;
    CB0: TComboBox;
    SE4: TSpinEdit;
    edOrigem: TEdit;
    Panel1: TPanel;
    ImgQrCode: TImage;
    cdsPalet: TFDQuery;
    cdsPaletLANC: TIntegerField;
    cdsPaletESTEIRA: TIntegerField;
    cdsPaletLOTE: TIntegerField;
    cdsPaletVARIECOD: TIntegerField;
    cdsPaletCATEGCOD: TIntegerField;
    cdsPaletCODIGO: TIntegerField;
    cdsPaletQTDE: TFMTBCDField;
    cdsPaletBARRA: TStringField;
    cdsPaletNUMERO: TIntegerField;
    cdsPaletVARIEDES: TStringField;
    cdsPaletCATEGDES: TStringField;
    cdsPaletDESCRICAO: TStringField;
    cdsPaletUNIDADE: TStringField;
    cdsPaletCALIBREDES: TStringField;
    cdsPaletWEBQRCODEL1: TStringField;
    cdsPaletWEBQRCODEL2: TStringField;
    cdsPaletWEBQRCODEL3: TStringField;
    cdsPaletWEBQRCODEL4: TStringField;
    procedure SB4Click(Sender: TObject);
    procedure CB2Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
    { Public declarations }
    vvarie, vcodigo: Integer;
    procedure pProcessarManual;
    procedure pImprimeEtiq(vConfigura: Boolean);
  end;

var
  FPaletAvulso: TFPaletAvulso;

implementation

{$R *.DFM}
uses Esteira, Rotina, Data, rlPalet, zModeloRel;

procedure TFPaletAvulso.FormCreate(Sender: TObject);
begin

//  QRCodeBitmap := TBitmap.Create;

end;

procedure TFPaletAvulso.CB2Click(Sender: TObject);
var vcod:String;
begin
//
end;

procedure TFPaletAvulso.Configurar1Click(Sender: TObject);
begin
  pImprimeEtiq(True);
end;

procedure TFPaletAvulso.SB4Click(Sender: TObject);
var vArq:TextFile;
    vCalibre: String;
begin
  //Salva dados no arquivo

  if SE1.Value <= 0 then exit;

  pProcessarManual;
  pImprimeEtiq(False);

end;

procedure TFPaletAvulso.pProcessarManual;
var  vqrcode: String;
begin
  //Limpa Tabela

  cdsPalet.Close;
  fSql(1,['Delete From PALETIMP'],1);
  cdsPalet.Open;

  cdsPalet.Append;
  cdsPaletCodigo.asString   := Trim(Copy(CB0.Text,1,2))+Trim(Copy(CB1.Text,1,2))+Trim(Copy(CB2.Text,1,5));
  cdsPaletLote.asString     := IntToStr(SE4.Value);
  cdsPaletLanc.asString     := IntToStr(SE2.Value);
  cdsPaletQtde.asInteger    := SE1.Value;
  cdsPaletEsteira.asInteger := 1;
  cdsPaletBarra.asString    := fPreencher(cdsPaletLanc.asInteger, 12, '0', 0);

  if dm.TCadProdu.Locate('Codigo', cdsPaletCodigo.asInteger, []) then
  begin

    cdsPaletVarieCod.asInteger  := dm.TCadProdu.FieldByName('VarieCod').asInteger;
    cdsPaletVarieDes.asString   := Trim(dm.TCadProdu.FieldByName('VarieDes').asString)+'.';
    cdsPaletCategCod.asInteger  := dm.TCadProdu.FieldByName('CategCod').asInteger;
    cdsPaletCategDes.asString   := dm.TCadProdu.FieldByName('CategDes').asString;
    cdsPaletUnidade.asString    := dm.TCadProdu.FieldByName('Unidade').asString;
    cdsPaletCalibreDes.asString := dm.TCadProdu.FieldByName('CalibreDes').asString;

  end;

  cdsPalet.Post;
  cdsPalet.ApplyUpdates(0);

end;

procedure TFPaletAvulso.pImprimeEtiq(vConfigura: Boolean);
begin

  xRelTela := UpperCase('FfrmImpPalet');
  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := cdsPalet;
  if not vConfigura then
  begin
    if FModeloRel.cdsDados.RecordCount <= 1 then
      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir)
    else begin
      FModeloRel.rzpMenu.Visible := False;
      FModeloRel.ShowModal;
    end;
  end
  else
    FModeloRel.ShowModal;
end;


end.
