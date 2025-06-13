unit teste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Buttons, DB;

type
  Tfrmteste = class(TFrame)
    sbAnterior: TSpeedButton;
    sbProximo: TSpeedButton;
    dsDB: TDataSource;
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pInicia(vDB:TDataSource);
  end;

implementation

{$R *.dfm}

{ TFrame1 }

procedure Tfrmteste.pInicia(vDB: TDataSource);
begin
  dsdb.DataSet := vdb.DataSet;
  if dsDB.DataSet.bof then
    sbAnterior.enabled := false;

end;

procedure Tfrmteste.sbAnteriorClick(Sender: TObject);
begin
  dsDB.DataSet.Prior;
  if dsDB.DataSet.bof then
    sbAnterior.enabled := false
  else
  sbProximo.enabled := true
end;

procedure Tfrmteste.sbProximoClick(Sender: TObject);
begin
  dsDB.DataSet.Next;
  if dsDB.DataSet.eof then
    sbProximo.enabled := false
  else
    sbAnterior.enabled := true;

end;

end.
