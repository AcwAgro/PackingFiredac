unit FrmCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, zModelo, DB, Provider, DBClient, DBTables, StdCtrls, Mask, Grids,
  DBGrids, RzTabs, ComCtrls, Buttons, ExtCtrls, RzPanel, DBCtrls;

type
  TFfrmCad = class(TFModelo)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    procedure DBEdit4Exit(Sender: TObject);
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
  FfrmCad: TFfrmCad;

implementation

{$R *.dfm}
uses Data, Rotina, Menu, zModeloRel;

procedure TFfrmCad.FormCreate(Sender: TObject);
begin
  inherited;
  pcItem.ActivePageIndex := 0;
  cdsDados.Open;
end;

procedure TFfrmCad.FormShow(Sender: TObject);
begin
  inherited;
  if pcItem.ActivePageIndex = 0 then dbDados.SetFocus;
end;

procedure TFfrmCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FfrmCadCidade);
end;

procedure TFfrmCad.sbIncluirClick(Sender: TObject);
begin
  inherited;
  Case TComponent(Sender).Tag of
     12: begin
          cdsDados.Append;
          cdsDadosCodigo.AsInteger := frGenerator('CADCIDAD','CODIGO',0) + 1;
          DBEdit2.SetFocus;
        end;
     13: begin
          cdsDados.Edit;
          DBEdit2.SetFocus;
        end;
     14: begin
           cdsDados.Delete;
           cdsDados.ApplyUpdates(-1);
         end;
     15: begin
          try
            if vTag = 12 then
              cdsDadosCodigo.AsInteger := frGenerator('CADCIDAD','CODIGO',1);

            cdsDadosEmpreCod.asInteger := xEmp;
            cdsDadosAcesoCod.asInteger := xAcesso;
            cdsDados.Post;
            cdsDados.ApplyUpdates(0);
            cdsDados.Refresh;
          except
            frPerg('Erro salvando dados!', 'OK');
          end;
          pLiberar('Geral');
        end;
     16: begin
           cdsDados.Cancel;
           pLiberar('Geral');
         end;
  end;
  vTag := TComponent(Sender).Tag;
end;

procedure TFfrmCad.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if (not sbSalvar.Visible) or (vkey <> 13) then Exit;

  if not frUF(cdsDadosEstado.asString) then
  begin
    frPerg('Estado inválido!', 'OK');
    DBEdit4.SetFocus;
    Exit;
  end;
  if frSalv then sbIncluirClick(sbSalvar) else DBEdit2.SetFocus;

end;

end.
