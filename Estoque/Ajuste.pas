unit Ajuste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, IBQuery, IBCustomDataSet, IBTable;

type
  TFAjuste = class(TForm)
    TPesq: TTimer;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    PDados: TPanel;
    DBGrid1: TDBGrid;
    PMenu: TPanel;
    SB11: TSpeedButton;
    SB10: TSpeedButton;
    SB9: TSpeedButton;
    SB8: TSpeedButton;
    SB6: TSpeedButton;
    SB5: TSpeedButton;
    SB4: TSpeedButton;
    SB3: TSpeedButton;
    SB2: TSpeedButton;
    SB1: TSpeedButton;
    SB7: TSpeedButton;
    Table1: TTable;
    DataSource1: TDataSource;
    Table2: TTable;
    DataSource2: TDataSource;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Altera1: TMenuItem;
    Exclui1: TMenuItem;
    Salva1: TMenuItem;
    Cancela1: TMenuItem;
    Pesquisa1: TMenuItem;
    N1: TMenuItem;
    Primeiro1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ltimo1: TMenuItem;
    Label11: TLabel;
    DBEdit16: TDBEdit;
    DBEdit26: TDBEdit;
    Label16: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Table1LANC: TIntegerField;
    Table1DATA: TDateTimeField;
    Table1NUMERO: TIntegerField;
    Table1HISTORICO: TStringField;
    Table1EMPRECOD: TIntegerField;
    procedure Novo1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Excluir1Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    vTag,vKey:Integer;
    procedure fRestaura;
    procedure fMostra;
  public
  end;
var
  FAjuste: TFAjuste;

implementation

uses Menu, Rotina, Data, Pesq, rlImprimir;

{$R *.DFM}

procedure TFAjuste.FormActivate(Sender: TObject);
begin
  if not Table1.Active then begin
     Table2.Open; Table1.Open; Table1.Last;
  end;
  if Table1.Filter<>xFiltro1 then begin
     Table1.Filter:=xFiltro1; Table1.Last;
     Table2.Filter:='Lanc=0'+Table1.FieldByName('Lanc').Text;
     fMostra;
  end;
end;

procedure TFAjuste.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFAjuste.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13; Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFAjuste.fRestaura;
begin
  SB1.Enabled := not SB1.Enabled;
//  SB2.Enabled := not SB2.Enabled;
  SB3.Enabled := not SB3.Enabled;
  SB4.Enabled := not SB4.Enabled;
  SB5.Enabled := not SB5.Enabled;
  SB6.Enabled := not SB6.Enabled;
//  SB7.Enabled := not SB7.Enabled;
  SB8.Enabled := not SB8.Enabled;
  SB9.Enabled := not SB9.Enabled;
  SB10.Enabled := not SB10.Enabled;
  SB11.Enabled := not SB11.Enabled;
  PDados.Enabled := not PDados.Enabled;
end;

procedure TFAjuste.Novo1Click(Sender: TObject);
begin
  if (TComponent(Sender).Tag=4) or (TComponent(Sender).Tag=5) then begin
     if SB1.Enabled then Exit; end
  else if SB4.Enabled then Exit;
  if (TComponent(Sender).Tag<6) and (TComponent(Sender).Tag<>3) then fRestaura;
  Case TComponent(Sender).Tag of
     1: begin
          Table1.Append;
          Table1.FieldByName('Lanc').Value:=ffLanc(1);
          Table1.FieldByName('Numero').Value:=fBus(1,['Select Max(Numero) From Ajuste'],1)+1;
          Table1.FieldByName('Data').Value:=Date;
          Table1.FieldByName('EmpreCod').asInteger:=xEmp;
          DBEdit26.SetFocus;
        end;
     2: begin Table1.Edit; DBEdit26.SetFocus; end;
     3: begin
          if frPerg('Deseja Excluir?') then begin
            Table2.First;
            while not Table2.Eof do Table2.Delete;
            Table1.Delete;
        end; end;
     4: Table1.Post;
     5: begin
          if vTag=1 then begin
            Table2.First;
            while not Table2.Eof do Table2.Delete;
          end;
          Table1.Delete;
        end;
     6: begin fpqAjuste; xpqpesq:=-1; TPesq.Enabled:=True; end;
    11: Table1.First;
    12: Table1.Prior;
    13: Table1.Next;
    14: Table1.Last;
  end;
  vTag:=TComponent(Sender).Tag;
  if vtag>10 then Table1.Refresh;
  fMostra;
end;

procedure TFAjuste.fMostra;
begin
  Table2.Filter:='Lanc=0'+Table1.FieldByName('Lanc').Text;
end;

procedure TFAjuste.DBEdit4Exit(Sender: TObject);
begin
  DBEdit2.SetFocus;
end;

procedure TFAjuste.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     vkey:=0;
     TPesq.Enabled:=False;
     Table1.Edit; Table2.Edit;
     if xpqpesq=3 then begin
       Table2.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBGrid1.SetFocus; DBGrid1.SelectedIndex:=0;
     end
     else if xpqpesq=-1 then begin
        Table1.Locate('Numero',FPesq.qrPesq.Fields[0].asInteger,[]);
        fMostra;
     end;
  end;
end;

//Produto
procedure TFAjuste.DBGrid1Enter(Sender: TObject);
begin
  Table2.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFAjuste.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if DBGrid1.SelectedIndex<>6 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
    else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFAjuste.DBGrid1ColExit(Sender: TObject);
var vent,vsai:Double;
begin
  Table2.Edit;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(Table2.FieldByName('Codigo').Text,1,3)='999' then begin
            Table2.Delete; if frSalv then Novo1Click(SB4); Abort;
         end;
         if fTra(1,['Select * From CadProdu Where Codigo=0'+Table2.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
            if Table2.FieldByName('Lancit').value<1 then Table2.FieldByName('Lancit').Value:=ffLanc(2);
            Table2.FieldByName('Lanc').Value:=Table1.FieldByName('Lanc').Value;
            Table2.FieldByName('Data').Value:=Table1.FieldByName('Data').Value;
            Table2.FieldByName('Codigo').Value:=dm.qrSqlTra.FieldByName('Codigo').Value;
            Table2.FieldByName('Descricao').Text:=dm.qrSqlTra.FieldByName('Descricao').Text;
            Table2.FieldByName('Unidade').Text:=dm.qrSqlTra.FieldByName('Unidade').Text;
            DBGrid1.SelectedIndex := 3;
//Verifica Saldo
            fSql(1,2,['Select Sum(Qtde) From Roman rr, RomanMer mm',
                      'Where (rr.Lanc=mm.Lanc) and ProdCod='+Table2.FieldByName('Codigo').Text],2);
            vent:=dm.qrSql2.Fields[0].asFloat;
            fSql(1,2,['Select Sum(Qtde) From NFVendCo Where Codigo='+Table2.FieldByName('Codigo').Text],1);
            vsai:=dm.qrSql2.Fields[0].asFloat;
            fSql(1,2,['Select Sum(Entrada), Sum(Saida) From AjusteCom',
                      'Where Codigo='+Table2.FieldByName('Codigo').Text+' and Lanc<>'+Table2.FieldByName('Lanc').Text],2);
            vent:=vent+dm.qrSql2.Fields[0].asFloat;
            vsai:=vsai+dm.qrSql2.Fields[1].asFloat;
            Table2.FieldByName('Anterior').asFloat:=vent-vsai;
         end else begin
            fPqProduto;
            xpqpesq:=3;
            TPesq.Enabled:=True;
            Abort;
         end;
       end;
    4,5: begin
         Table2.FieldByName('Saldo').asFloat:=Table2.FieldByName('Anterior').asFloat+
                                              Table2.FieldByName('Entrada').asFloat-
                                              Table2.FieldByName('Saida').asFloat;
       end;
    6: begin
         Table2.Post; Table2.Next;
         if Table2.Eof then Table2.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFAjuste.Excluir1Click(Sender: TObject);
begin
  if frExcl then Table2.Delete;
end;


end.
