unit rlImprimir;

interface

uses
  Windows, SysUtils, Menus, StdCtrls, Spin, Controls, Buttons, ExtCtrls, Classes,
  Forms, QRPrntr, QrPrev, QRExport, QRPDFFilt, Printers, QRPrnSu, Dialogs, Graphics;


type
  TFImprimir = class(TForm)
    qrImprimir: TQRPreview;
    pnlImpressora: TPanel;
    sbPrimeiro: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbProximo: TSpeedButton;
    sbUltima: TSpeedButton;
    sbImprime: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Setup1: TMenuItem;
    Imprimir1: TMenuItem;
    Fechar1: TMenuItem;
    Primeira1: TMenuItem;
    Anterior1: TMenuItem;
    Prxima1: TMenuItem;
    ltima1: TMenuItem;
    SpeedButton3: TSpeedButton;
    PPagina: TPanel;
    QRPDFFilter1: TQRPDFFilter;
    SpeedButton7: TSpeedButton;
    SaveDialog: TSaveDialog;
    SEZoom: TSpinEdit;
    SpeedButton4: TSpeedButton;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimaClick(Sender: TObject);
    procedure qrImprimirPageAvailable(Sender: TObject; PageNum: Integer);
    procedure sbImprimeClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SEZoomChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChecaPaginas;
    procedure ImprimirPDF(vArquivoPDF:String);
  end;
  Function GetTemporaryDir: String;

var
  FImprimir: TFImprimir;

implementation

uses Menu, Rotina, Data, Email, zEmail;

{$R *.DFM}

Function GetTemporaryDir: String;
var pNetpath: ARRAY[ 0..MAX_path - 1 ] of Char;
    nlength: Cardinal;
begin
  nlength := MAX_path;
  FillChar( pNetpath, SizeOF( pNetpath ), #0 );
  GetTemppath( nlength, pNetpath );
  Result := StrPas( pNetpath );
end;

procedure TFImprimir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  fImprimir:=Nil;
end;

procedure TFImprimir.ChecaPaginas;
begin
 PPagina.Caption:='Zoom de '+IntToStr(qrImprimir.Zoom)+'% - Página '+ IntToStr(qrImprimir.PageNumber)+
                  ' de '+IntToStr(qrImprimir.QrPrinter.PageCount);
 SEZoom.Value := qrImprimir.Zoom;
 sbPrimeiro.Visible:=(qrImprimir.PageNumber > 1);
 sbAnterior.Visible:=(qrImprimir.PageNumber > 1);
 sbProximo.Visible :=(qrImprimir.PageNumber < qrImprimir.QRPrinter.PageCount);
 sbUltima.Visible  :=(qrImprimir.PageNumber < qrImprimir.QRPrinter.PageCount);
end;

procedure TFImprimir.sbPrimeiroClick(Sender: TObject);
begin
  qrImprimir.PageNumber:=1;
  ChecaPaginas;
end;

procedure TFImprimir.sbAnteriorClick(Sender: TObject);
begin
  qrImprimir.PageNumber:=qrImprimir.PageNumber-1;
  ChecaPaginas;
end;

procedure TFImprimir.sbProximoClick(Sender: TObject);
begin
  qrImprimir.PageNumber:=qrImprimir.PageNumber+1;
  ChecaPaginas;
end;

procedure TFImprimir.sbUltimaClick(Sender: TObject);
begin
  qrImprimir.PageNumber:=qrImprimir.QRPrinter.PageCount;
  ChecaPaginas;
end;

procedure TFImprimir.qrImprimirPageAvailable(Sender: TObject;
  PageNum: Integer);
begin
  if SEZoom.Tag < 100 then
  begin
    qrImprimir.Zoom := 100;
    SEZoom.Value := qrImprimir.Zoom;
    Application.ProcessMessages;
    SEZoom.Tag := 1000;
  end;
  ChecaPaginas;
end;

procedure TFImprimir.sbImprimeClick(Sender: TObject);
var
  aDialog : TQRPrintDialog;
  Device,
  Driver,
  Port : array[0..255] of char;
  hDMode : THandle;
  I : TQRBin;
  aBin : integer;
begin

  aDialog := TQRPrintDialog.Create(Application);
//  aDialog.Printer := QRPrinter.aPrinterSettings.Printer;

  aDialog.Printer.GetPrinter(Device, Driver, Port, hDMode);
  // 23/05/05 don't null the printer settings
  //aDialog.Printer.SetPrinter(Device, Driver, Port, 0);

  aDialog.Printer.PrinterIndex := qrImprimir.QRPrinter.PrinterIndex;
  CompositePrinterIndex := -999;
  with aDialog do
  try
    MinPage := 0;
    MaxPage := 9999;
{    if (QRPrinter <> nil) and (QRPrinter.Status = mpFinished) then
    begin
      MinPage := 1;
      MaxPage := QRPrinter.PageCount;
      FromPage := 1;
      ToPage := MaxPage;
    end;
 }     Options := [poPageNums, poWarning];
      aDialog.Printer.Orientation := qrImprimir.QRPrinter.Orientation;
      Copies := qrImprimir.QRPrinter.Copies;
      FromPage := 1;
      ToPage   := qrImprimir.QrPrinter.PageCount;
      if Execute then
      begin
        qrImprimir.QRPrinter.Copies := Copies;
        qrImprimir.QRPrinter.PrinterIndex := aDialog.Printer.PrinterIndex;
        qrImprimir.QRPrinter.Orientation := aDialog.Printer.Orientation;
        // catch the user selections
        qrImprimir.QRPrinter.CustomBinCode := aDialog.outputbin;
        qrImprimir.QRPrinter.ExtendedDuplex := aDialog.DuplexCode;
        qrImprimir.QRPrinter.PrintQuality := aDialog.PrintQuality;
        qrImprimir.QRPrinter.Collate := aDialog.Collate;
        qrImprimir.QRPrinter.ColorOption := aDialog.ColorOption;
        qrImprimir.QRPrinter.Copies := aDialog.Copies;
        qrImprimir.QRPrinter.Orientation := aDialog.Printer.Orientation;
        qrImprimir.QRPrinter.FirstPage := aDialog.FromPage;
        qrImprimir.QRPrinter.LastPage := aDialog.ToPage;
//        qrImprimir.QRPrinter.OutputBin := aDialog.OutputBin;
        aBin := aDialog.outputbin;
        if aBin > 255 then aBin := aBin - 256;
        for I := First to Last do
         if cQRBinTranslate[I] = aBin then
         begin
          qrImprimir.QRPrinter.OutputBin := I;
          break;
         end;

        qrImprimir.QRPrinter.CustomPaperCode := aDialog.PaperSize;
        qrImprimir.QRPrinter.PrinterIndex := aDialog.Printer.PrinterIndex;
        qrImprimir.QRPrinter.FirstPage := aDialog.FromPage;
        qrImprimir.QRPrinter.LastPage := aDialog.ToPage;
        qrImprimir.QRPrinter.Duplex := aDialog.Duplex;
        case PrintRange of
          prAllPages,
          prSelection : begin
                         qrImprimir.QRPrinter.FirstPage := 0;
                         qrImprimir.QRPrinter.LastPage := 0;
                       end;
          prPageNums : begin
                         qrImprimir.QRPrinter.FirstPage := FromPage;
                         qrImprimir.QRPrinter.LastPage := ToPage;
                       end;
        end;
        Self.Tag := 0;
        //Imprimir
        qrImprimir.QRPrinter.Print;
      end
      else Self.Tag := 1;
  finally
    free;
  end

end;

procedure TFImprimir.SpeedButton3Click(Sender: TObject);
var Cur : TCursor;
    varqpdf: String;
Begin
  if xRelTela = '' then xRelTela := 'Relatorio_'+FormatDateTime('ddmm', Date)+FormatDateTime('hhmm', Time)+'.pdf';
  SaveDialog.FileName := xRelTela;
  if SaveDialog.Execute then
  begin
    Cur := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    varqpdf := SaveDialog.FileName;
    if pos('.pdf',varqpdf) = 0  then
      varqpdf := varqpdf +'.pdf';
    ImprimirPDF(varqpdf);
    Screen.Cursor := Cur;
  end;
end;

procedure TFImprimir.SpeedButton4Click(Sender: TObject);
var Cur : TCursor;
Begin
  if xRelTela = '' then xRelTela := 'Relatorio_'+FormatDateTime('ddmm', Date)+FormatDateTime('hhmm', Time);
  SaveDialog.FileName := xRelTela;
  if SaveDialog.Execute then
  begin
    Cur := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    qrImprimir.QRPrinter.ExportToFilter(TQRXLSFilter.Create(SaveDialog.FileName + '.xls'));
    Screen.Cursor := Cur;
  end;

end;

procedure TFImprimir.SpeedButton7Click(Sender: TObject);
var vemail, spdf : string;
    vseq: Integer;
    Email : TEmail;
    mmAssunto, mmTexto: String;
begin
  try
    if xRelTela = '' then xRelTela := 'Relatorio_'+FormatDateTime('ddmm', Date)+FormatDateTime('hhmm', Time);
    spdf := xRelTela;
    spdf := GetTemporaryDir + spdf +'.pdf';

//    qrImprimir.QRPrinter.ExportToFilter(TQRPDFDocumentFilter.Create(spdf));
    ImprimirPDF(spdf);

    if FileExists(spdf) then
    begin
      //Abrir Email
      try
        if not Assigned(frmEmail) then
          frmEmail := TfrmEmail.create(self);

        vemail := LowerCase(xRelEmail);

        frmEmail.edAssunto.Text := xRelTela;
        frmEmail.edTexto.Text   := 'Enviado por: '+xAcess;

        frmEmail.edm1.Text := Trim(vemail);
        frmEmail.edm2.Text := '';


        frmEmail.ShowModal;
      finally
         vemail    := frmEmail.vRetEmail;
         mmAssunto := frmEmail.edAssunto.Text;
         mmTexto   := frmEmail.edTexto.Text;

        FreeAndNil(frmEmail)
      end;

      if vemail = 'Close' then
        Exit;

      vemail := LowerCase(vemail);
      if Pos('@', vemail) = 0 then
      begin
        Application.MessageBox('Email inválido!','Aviso',mb_ok+MB_ICONINFORMATION);
        exit;
      end;

      //corpo da email
      mmTexto := mmTexto +' '+sLineBreak;
      mmTexto := mmTexto +'Emitida por: ' + Trim(xEmpre)+sLineBreak;
      mmTexto := mmTexto +'Na data de : ' + DateToStr(Date)+sLineBreak;
      mmTexto := mmTexto +''+sLineBreak;

      if EnviaMail(110,
                   vemail,
                   mmAssunto,
                   mmTexto,
                   spdf,
                   '') then
        Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION)
      else begin
         application.messagebox('Houve falha no envio deste email...','Atenção',mb_ok+MB_ICONERROR)
      end;
    end
    else Application.MessageBox('Arquivo não encontrado!','Erro',mb_ok+mb_iconerror);
  except
  end;
end;

procedure TFImprimir.SEZoomChange(Sender: TObject);
begin
  qrImprimir.Zoom:= SEZoom.Value; ChecaPaginas;
end;

procedure TFImprimir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
     qrImprimir.VertScrollBar.Position:=qrImprimir.VertScrollBar.Position+10;
  end else if key=38 then begin key:=0;
     qrImprimir.VertScrollBar.Position:=qrImprimir.VertScrollBar.Position-10;
  end else if key=37 then begin key:=0;
     qrImprimir.HorzScrollBar.Position:=qrImprimir.HorzScrollBar.Position-10;
  end else if key=39 then begin key:=0;
     qrImprimir.HorzScrollBar.Position:=qrImprimir.HorzScrollBar.Position+10;
  end else if key=36 then begin key:=0; //home
     qrImprimir.PageNumber:=1; ChecaPaginas;
  end else if key=35 then begin key:=0; //end
     qrImprimir.PageNumber:=qrImprimir.QRPrinter.PageCount; ChecaPaginas;
  end else if key=33 then begin key:=0; //UP
     qrImprimir.PageNumber:=qrImprimir.PageNumber-1; ChecaPaginas;
  end else if key=34 then begin key:=0; //DN
     qrImprimir.PageNumber:=qrImprimir.PageNumber+1; ChecaPaginas;
  end else if key=107 then begin key:=0; //+
     qrImprimir.Zoom:=qrImprimir.Zoom+10; ChecaPaginas;
  end else if key=109 then begin key:=0; //-
     qrImprimir.Zoom:=qrImprimir.Zoom-10; ChecaPaginas;
  end;
end;

procedure TFImprimir.FormShow(Sender: TObject);
begin
  FImprimir.Caption := 'Visualizador de impressão... '+FMenu.pnlImpressora.Caption;
  pnlImpressora.Caption := FMenu.pnlImpressora.Caption;
end;

procedure TFImprimir.SpeedButton2Click(Sender: TObject);
begin
  qrImprimir.Zoom:=qrImprimir.Zoom-10; ChecaPaginas;
end;

procedure TFImprimir.SpeedButton1Click(Sender: TObject);
begin
  qrImprimir.Zoom:=qrImprimir.Zoom+10; ChecaPaginas;
end;

procedure TFImprimir.ImprimirPDF(vArquivoPDF:String);
begin
  qrImprimir.QRPrinter.ExportToFilter(TQRPDFDocumentFilter.Create(vArquivoPDF));
end;
//var oPDF: TPDFDocument;
//    oMetaDados: TMetafile;
//    oPosicionamento: TPDFCanvasRenderMetaFileTextPositioning;
//    nPagina: integer;
//begin
//  try
//    oPDF := TPDFDocument.Create(True, 0, False, nil);
//    oMetaDados := nil;
//    oPDF.DefaultPaperSize := psA4;
//    if qrImprimir.QRPrinter.aPrinterSettings.Orientation = poPortrait then
//      oPDF.DefaultPageLandscape := False
//    else
//      oPDF.DefaultPageLandscape := True;
//    oPosicionamento := tpExactTextCharacterPositining;
//    oPDF.Root.PageLayout := plOneColumn;
//
//    for nPagina := 1 to qrImprimir.QRPrinter.PageCount do
//    begin
//      oPDF.AddPage;
//      oMetaDados := qrImprimir.QRPrinter.PageList.GetPage(nPagina);
//      oPDF.Canvas.RenderMetaFile(oMetaDados, 1, 0, 0, oPosicionamento);
//      oMetaDados := nil;
//    end;
//
//    oPDF.SaveToFile(vArquivoPDF);
//  finally
//    oMetaDados.Free;
//    oPDF.Free;
//  end;
//end;

end.

