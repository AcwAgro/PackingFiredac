unit zEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RzPanel;

type
  TfrmEmail = class(TForm)
    RzPanel1: TRzPanel;
    pnlEmail: TPanel;
    Panel6: TPanel;
    GroupBox19: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edm1: TEdit;
    edm2: TEdit;
    edm3: TEdit;
    edm4: TEdit;
    pnlSair: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    gbAssunto: TGroupBox;
    edAssunto: TEdit;
    gbTexto: TGroupBox;
    edTexto: TMemo;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vRetEmail: String;
  end;

var
  frmEmail: TfrmEmail;

implementation

{$R *.dfm}

procedure TfrmEmail.FormCreate(Sender: TObject);
begin
  edAssunto.Text := '';
  edTexto.Text   := '';
end;

procedure TfrmEmail.FormShow(Sender: TObject);
begin
  vRetEmail := 'Close';
  gbAssunto.Visible := (edAssunto.Text <> '');
  gbTexto.Visible   := (edTexto.Text <> '');
end;

procedure TfrmEmail.SpeedButton1Click(Sender: TObject);
begin
  vRetEmail := '';
  if (trim(edm1.text) <> '') then
    vRetEmail := vRetEmail + trim(edm1.text)+';';
  if (trim(edm2.text) <> '') then
    vRetEmail := vRetEmail + trim(edm2.text)+';';
  if (trim(edm3.text) <> '') then
    vRetEmail := vRetEmail + trim(edm3.text)+';';
  if (trim(edm4.text) <> '') then
    vRetEmail := vRetEmail + trim(edm4.text)+';';
  if vretEmail <> '' then
    vretEmail := Copy(vretEmail, 1, Length(vretEmail)-1);

  edAssunto.Text := Trim(edAssunto.Text);
  edTexto.Text   := Trim(edTexto.Text);

  Close;
end;

procedure TfrmEmail.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
