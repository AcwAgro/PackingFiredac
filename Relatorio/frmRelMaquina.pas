unit frmRelMaquina;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Spin, DB, DBTables,
  RzPanel;

type
  TFfrmRelMaquina = class(TForm)
    TPesq: TTimer;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RB1: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP1: TSpeedButton;
    SBP2: TSpeedButton;
    ED1: TMaskEdit;
    ED11: TMaskEdit;
    GP4: TGroupBox;
    Label4: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    rzpUtilitario: TRzPanel;
    sb6: TSpeedButton;
    sb7: TSpeedButton;
    RzPanel4: TRzPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRelMaquina: TFfrmRelMaquina;

implementation

uses Menu, Data, Rotina, Pesq, rlMMManutenc;

{$R *.DFM}
procedure TFfrmRelMaquina.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelMaquina.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelMaquina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelMaquina);
end;

procedure TFfrmRelMaquina.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
end;

procedure TFfrmRelMaquina.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelMaquina.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

//Pesquisa
procedure TFfrmRelMaquina.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     0: fPqPlano;
     1: fPqPlano;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelMaquina.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if xpqpesq = 0 then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if xpqpesq = 1 then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
  end;
end;

procedure TFfrmRelMaquina.SB6Click(Sender: TObject);
var vDat,vCod:String;
begin
  vCod:= '(Codigo >= '+Trim(Ed1.Text)+' and Codigo <= '+Trim(Ed11.Text)+')';
  vDat:= '(Data >='+frInvD(ED4.Date)+' and Data <= '+frInvD(ED44.Date)+')';
  if (RB1.Checked) then begin
     if qrMMManutenc<>Nil then qrMMManutenc.Destroy; Application.CreateForm(TqrMMManutenc, qrMMManutenc);
     with qrMMManutenc do begin
        qrDados.Close; qrDadosCom.Close;
        qrDados.Sql.Strings[2]:='Where '+vCod+' and '+vDat;
        qrDadosCom.Sql.Strings[2] := 'Where '+vDat;
        qrDados.Open; qrDadosCom.Open;
        qrLabel16.Caption:='Manutenção Máquinas/Veículos  período '+DateToStr(ED4.Date)+' à '+DateToStr(ED44.Date);
        if qrDados.RecordCount < 1 then begin
           ShowMessage('Não há Lançamento.');
           exit;
        end;
        PrinterSettings.PrinterIndex := fImpr('imp1');
        if TComponent(Sender).Tag=0 then Preview else Print;
     end;
  end;
end;

end.


