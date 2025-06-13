unit Palet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, Spin, DelphiZXingQRCode;

type
  TFPalet = class(TForm)
    TPalet: TTable;
    TPaletLOTE: TIntegerField;
    TPaletVARIECOD: TIntegerField;
    TPaletESTEIRA: TIntegerField;
    TPaletLANC: TIntegerField;
    TPaletBARRA: TStringField;
    TPaletNUMERO: TIntegerField;
    TPaletCODIGO: TIntegerField;
    TPaletQTDE: TFloatField;
    TPaletVARIEDES: TStringField;
    TPaletDESCRICAO: TStringField;
    TPaletQTDEANT: TFloatField;
    TPaletQTDEATU: TFloatField;
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
    TPaletWEBQRCODEL1: TStringField;
    TPaletWEBQRCODEL2: TStringField;
    TPaletWEBQRCODEL3: TStringField;
    TPaletWEBQRCODEL4: TStringField;
    ImgQrCode: TImage;
    procedure SB4Click(Sender: TObject);
    procedure CB2Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    QRCodeBitmap: TBitmap;
    procedure qrCodeExecute;
  public
    { Public declarations }
    vvarie, vcodigo: Integer;
    procedure pProcessarManual;
    procedure pImprimeEtiq(vConfigura: Boolean);
  end;

var
  FPalet: TFPalet;

implementation

{$R *.DFM}
uses Esteira, Rotina, Data, rlPalet, zModeloRel;

procedure TFPalet.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;

end;

procedure TFPalet.CB2Click(Sender: TObject);
var vcod:String;
begin
//
end;

procedure TFPalet.Configurar1Click(Sender: TObject);
begin
  pImprimeEtiq(True);
end;

procedure TFPalet.SB4Click(Sender: TObject);
var vArq:TextFile;
    vCalibre: String;
begin
  //Salva dados no arquivo
  xPaletNr:= SE2.Value;
  xPalqtd := SE3.Value;
  xpalemp := edOrigem.Text;
  DeleteFile(xdirini+'Dados\Palet.ini');
  AssignFile(varq,xdirini+'Dados\Palet.ini');
  Rewrite(varq);
  Writeln(varq,fPreencher(xpaletnr,4,'0',0));
  Writeln(varq,fPreencher(xpalqtd,4,'0',0));
  Writeln(varq,fPreencher(xpalimp,4,'0',0));
  Writeln(varq,xpalsim);
  Writeln(varq,xpalemp);
  CloseFile(varq);

  vCalibre := CB2.Text;

  pProcessarManual;

{  if qrPalet<>Nil then  qrPalet.Destroy;
  Application.CreateForm(TqrPalet,qrPalet);
  with rlPalet.qrPalet do
  begin
    PrinterSettings.PrinterIndex := StrToInt('0'+ximp);
    qrLabel0.Caption:=xpalemp;
    qrLabel1.Caption:='Palet Nº.: '+fPreencher(xPaletNr,6,'0',0);
    qrPalet.Close;
    qrPalet.Sql.Strings[2]:='Where QtdeAtu=0'+IntToStr(xPaletNr);
    qrPalet.Open;}
    pImprimeEtiq(False);
//  end;

  SE2.Value:=SE2.Value+1;

end;

procedure TFPalet.pProcessarManual;
var  vqrcode: String;
begin
  //Limpa Tabela
  TPalet.Close;
  fProc(1,['Delete From ESTEIRAPALET'],1);
  TPalet.Open;
  while not TPalet.Eof do TPalet.Open;

  TPalet.Append;
  TPaletCodigo.asString   := Trim(Copy(CB0.Text,1,2))+Trim(Copy(CB1.Text,1,2))+Trim(Copy(CB2.Text,1,5));
  TPaletLote.asString     := IntToStr(SE4.Value);
  TPaletVarieCod.asString := Trim(Copy(CB0.Text,1,2));
  TPaletLanc.asString     := IntToStr(SE2.Value);
  TPaletQtde.asInteger    := SE1.Value;
  TPaletNumero.asString   := CB2.text;
  TPaletVarieDes.asString := Trim(Copy(CB0.Text,4,20));
  TPaletDescricao.asString:= Trim(Copy(CB1.Text,4,20));
  TPaletBarra.asString    := Trim(Copy(edOrigem.Text,1,13));
  TPaletEsteira.asInteger := 1;
  TPaletQtdeAnt.asInteger := SE1.Value;
  TPaletQtdeAtu.asInteger := xPaletNr;

  //qrCode - SITE
//http://www.acwebsystem.com.br/sistemas/rastrear/11741540000142/202001/lt000000001pr001010080.html
//      vqrcode := 'https://www.acwebsystem.com.br/sistemas/rastrear/';
  vqrcode := 'https://www.acwebsystem.com.br/';

  // - Ano + Mes
  vqrcode := vqrcode + xanomes + '/';

  // - empresa
  vqrcode := vqrcode + xcpfcnpj + '/';
  // - Lote
//      vqrcode := vqrcode + 'lt'+fPreencher(xvLan,9,'0',0);
  vqrcode := vqrcode + 'R'+xvLan;
  // - Codigo produto
//      vqrcode := vqrcode + 'pr'+fPreencher(edCodigo.Text,9,'0',0)+'.html';
  vqrcode := vqrcode + 'P'+TPaletCodigo.Text+'.html';

  TPaletWEBQRCODEL1.Text := vqrcode;
  TPaletWEBQRCODEL2.Text := 'R'+xvLan + 'P'+TPaletCodigo.Text;
  TPaletWEBQRCODEL4.Text := xdirini+'rastrear\qrcodetmp.bmp';

  TPalet.Post;

end;

procedure TFPalet.pImprimeEtiq(vConfigura: Boolean);
begin

  qrCodeExecute;

  xRelTela := UpperCase('FfrmImpPalet');
  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := TPalet;
  if not vConfigura then
  begin
    if FModeloRel.cdsDados.RecordCount <= 1 then
      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir)
    else begin
      FModeloRel.rzpMenu.Visible := False;
      FModeloRel.ShowModal;
    end;
    Sleep(1000);
  end
  else
    FModeloRel.ShowModal;
end;

procedure TFPalet.qrCodeExecute;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
  vqrcode, vcodigo: String;
  Scale: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try

    vcodigo := Trim(Copy(CB0.Text,1,2))+Trim(Copy(CB1.Text,1,2))+Trim(Copy(CB2.Text,1,5));

    vqrcode := 'https://www.acwebsystem.com.br/';

    // - Ano + Mes
    vqrcode := vqrcode + xanomes + '/';

    // - empresa
    vqrcode := vqrcode + xcpfcnpj + '/';
    // - Lote
    vqrcode := vqrcode + 'R'+xvLan;
    // - Codigo produto
    vqrcode := vqrcode + 'P'+vCodigo+'.html';

    QRCode.Data := vqrcode;
    QRCode.Encoding := TQRCodeEncoding(5);//cmbEncoding.ItemIndex);
    QRCode.QuietZone := 0;//StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Width := QRCode.Rows;
    QRCodeBitmap.Height := QRCode.Columns;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally

    DeleteFile(xdirini+'rastrear\qrcodetmp.bmp');
    scale := 2;
    ImgQrCode.Width  := scale * 33;
    ImgQrCode.Height := scale * 33;

    ImgQrCode.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
    ImgQrCode.Picture.SaveToFile(xdirini+'rastrear\qrcodetmp.bmp');

    QRCode.Free;
    //ImgQrCode.Visible := True;

  end;


end;
end.
