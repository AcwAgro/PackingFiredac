unit rlImprimir;

interface

uses
  Windows, SysUtils, Menus, StdCtrls, Spin, Controls, Buttons, ExtCtrls, Classes,
  Forms, QRPrntr, QrPrev, QRExport, QRPDFFilt, Dialogs;

type
  TFImprimir = class(TForm)
    qrImprimir: TQRPreview;
    Panel1: TPanel;
    sbPrimeiro: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbProximo: TSpeedButton;
    sbUltima: TSpeedButton;
    sbSetup: TSpeedButton;
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
    PFechar: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    PPagina: TPanel;
    SEZoom: TSpinEdit;
    QRPDFFilter1: TQRPDFFilter;
    SpeedButton7: TSpeedButton;
    SaveDialog: TSaveDialog;
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimaClick(Sender: TObject);
    procedure qrImprimirPageAvailable(Sender: TObject; PageNum: Integer);
    procedure sbSetupClick(Sender: TObject);
    procedure sbImprimeClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SEZoomChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChecaPaginas;
  end;
  Function GetTemporaryDir: String;

var
  FImprimir: TFImprimir;
  r:TQRSTandardPreview;

implementation

uses Rotina, Data;

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

procedure TFImprimir.sbSetupClick(Sender: TObject);
begin
  qrImprimir.QRPrinter.PrintSetup;
end;

procedure TFImprimir.sbImprimeClick(Sender: TObject);
begin
  qrImprimir.QRPrinter.Print;
end;

procedure TFImprimir.SpeedButton3Click(Sender: TObject);
var fName,xRelTela : String;
    Cur : TCursor;
Begin
  xRelTela := 'Relatorio_'+FormatDateTime('ddmm', Date);
  SaveDialog.FileName := xRelTela;
  if SaveDialog.Execute then
  begin
    Cur := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    FName := ChangeFileExt(SaveDialog.FileName,'');
    qrImprimir.QRPrinter.ExportToFilter(TQRPDFDocumentFilter.Create(FName+'.pdf'));
    Screen.Cursor := Cur;
  end;
{         1: ExportToFilter(TQRAsciiExportFilter.Create(FName+'.txt'));
         2: ExportToFilter(TQRRTFExportFilter.Create(FName+'.doc'));
         3: ExportToFilter(TQRXLSFilter.Create(FName+'.xls'));
         4: ExportToFilter(TQRPDFDocumentFilter.Create(FName+'.pdf'));
         5: ExportToFilter(TQRGHTMLDocumentFilter.Create(FName+'.html'));
}
end;

procedure TFImprimir.SpeedButton4Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
  -1: Close;
  -2: WindowState:=wsMaximized;
  -3: WindowState:=wsNormal;
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

procedure TFImprimir.SpeedButton2Click(Sender: TObject);
begin
  qrImprimir.Zoom:=qrImprimir.Zoom-10; ChecaPaginas;
end;

procedure TFImprimir.SpeedButton1Click(Sender: TObject);
begin
  qrImprimir.Zoom:=qrImprimir.Zoom+10; ChecaPaginas;
end;

end.

