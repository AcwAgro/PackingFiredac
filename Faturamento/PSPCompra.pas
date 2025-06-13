unit PSPCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, IBCustomDataSet, IBTable;

type
  TFPSPCompra = class(TForm)
    TPesq: TTimer;
    PDados: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    PopupMenu3: TPopupMenu;
    Excluir2: TMenuItem;
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
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    SBP1: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    SBP3: TSpeedButton;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid2: TDBGrid;
    Table1LANC: TIntegerField;
    Table1NOTA: TIntegerField;
    Table1SERIE: TStringField;
    Table1VENDECOD: TIntegerField;
    Table1CODIGO: TIntegerField;
    Table1DESCRICAO: TStringField;
    Table1DATA: TDateTimeField;
    Table1ENTREGA: TDateTimeField;
    Table1CANCELADA: TStringField;
    Table1NATURCOD: TFloatField;
    Table1DADOSCOD: TIntegerField;
    Table1TRTIPO: TStringField;
    Table1TRCOD: TIntegerField;
    Table1TRDES: TStringField;
    Table1FORMA: TStringField;
    Table1PARCELA: TIntegerField;
    Table1VLRENTRADA: TFloatField;
    Table1DESCP: TFloatField;
    Table1VLRDESC: TFloatField;
    Table1VLRBASE: TFloatField;
    Table1VLRICMS: TFloatField;
    Table1VLRFRETE: TFloatField;
    Table1VLRPRODUTO: TFloatField;
    Table1VLRIPI: TFloatField;
    Table1VLRNOTA: TFloatField;
    Table1PESOBRU: TFloatField;
    Table1PESOLIQ: TFloatField;
    Table1RECEITU: TIntegerField;
    Table1QTDESP: TStringField;
    Table1NIMPRE: TStringField;
    Table1DIF: TStringField;
    Table1VLRSEGURO: TFloatField;
    Table1VLRICMSFRE: TFloatField;
    Table1ESTADO: TStringField;
    Table1TIPONF: TStringField;
    Table1OBS1: TStringField;
    Table2LANC: TIntegerField;
    Table2DATA: TDateTimeField;
    Table2FORNECED: TIntegerField;
    Table2CODIGO: TIntegerField;
    Table2DESCRICAO: TStringField;
    Table2UNIDADE: TStringField;
    Table2PESOLIQ: TFloatField;
    Table2PESOBRU: TFloatField;
    Table2ICMSP: TFloatField;
    Table2IPIP: TFloatField;
    Table2CST: TFloatField;
    Table2VLRICMS: TFloatField;
    Table2VLRIPI: TFloatField;
    Table2SUBST: TFloatField;
    Table2QTDE: TFloatField;
    Table2UNIT: TFloatField;
    Table2VALOR: TFloatField;
    Table2VENDA: TFloatField;
    Table2LOTE: TStringField;
    Table2PERVEN: TFloatField;
    Table2LANCIT: TIntegerField;
    Table2GRUPOCOD: TIntegerField;
    Table2CTCCOD: TIntegerField;
    Table2CTCDES: TStringField;
    DataSource3: TDataSource;
    Table3: TTable;
    Table3LANC: TIntegerField;
    Table3PARC: TIntegerField;
    Table3VENCTO: TDateTimeField;
    Table3VALOR: TFloatField;
    Table3PERC: TFloatField;
    Table3VLR: TFloatField;
    Table3CAR: TIntegerField;
    Table3TIPO: TStringField;
    Table3LANCIT: TIntegerField;
    Table3BANCOD: TIntegerField;
    Table3BANDOC: TStringField;
    Table3BANEMI: TStringField;
    Table1EMPRECOD: TIntegerField;
    Table1ACESOCOD: TIntegerField;
    Table2EMPRECOD: TIntegerField;
    Table2ACESOCOD: TIntegerField;
    Table3EMPRECOD: TIntegerField;
    Table3ACESOCOD: TIntegerField;
    procedure Novo1Click(Sender: TObject);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure SBP3Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure fRestaura;
    procedure fSSalvar(vTipo:Boolean);
    procedure fCalcPedi;
  public
    { Public declarations }
  end;

var
  FPSPCompra: TFPSPCompra;
  vTag,vKey:Integer; vPerVen:Real;

implementation

uses Menu, Rotina, Data, Pesq;

{$R *.DFM}

procedure TFPSPCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFPSPCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13; Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFPSPCompra.fRestaura;
begin
  SB1.Enabled := not SB1.Enabled;
  SB2.Enabled := not SB2.Enabled;
  SB3.Enabled := not SB3.Enabled;
  SB4.Enabled := not SB4.Enabled;
  SB5.Enabled := not SB5.Enabled;
  SB6.Enabled := not SB6.Enabled;
  SB8.Enabled := not SB8.Enabled;
  SB9.Enabled := not SB9.Enabled;
  SB10.Enabled := not SB10.Enabled;
  SB11.Enabled := not SB11.Enabled;
  PDados.Enabled := not PDados.Enabled;
end;

procedure TFPSPCompra.Novo1Click(Sender: TObject);
begin
  if (TComponent(Sender).Tag=4) or (TComponent(Sender).Tag=5) then begin
     if SB1.Enabled then Exit; end
  else if SB4.Enabled then Exit;
  if (TComponent(Sender).Tag<6) and (TComponent(Sender).Tag<>3) then fRestaura;
  Case TComponent(Sender).Tag of
     1: begin
          Table1.Append;
          Table1.Fields[0].Value:=frGenerator('NFCOMPR','LANC',1);
          Table1.FieldByName('Nota').Text:='';
          Table1.FieldByName('VendeCod').Value:=xAce;
          Table1.FieldByName('Data').Value:=Date;
          Table1.FieldByName('Entrega').Value:=Date;
          Table1.FieldByName('Parcela').Value:=1;
          Table1.FieldByName('VlrEntrada').Value:=0;
          Table1.FieldByName('VlrDesc').asFloat:=0;
          Table1.FieldByName('VlrFrete').asFloat:=0;
          Table1.FieldByName('Descp').asFloat:=0;
          Table1.FieldByName('Forma').Value:='S';
          Table1.FieldByName('Dif').Text:='C';
          DBEdit1.SetFocus;
        end;
     2: begin Table1.Edit; DBEdit1.SetFocus; end;
     3: if frExcl then fSSalvar(False);
     4: fSSalvar(True);
     5: if vTag=1 then fSSalvar(False);
     6: begin fPqnfCompra; xPQPesq:=-1; TPesq.Enabled:=True; end;
    11: Table1.First;
    12: Table1.Prior;
    13: Table1.Next;
    14: Table1.Last;
  end;
  vTag:=TComponent(Sender).Tag;
  if vtag>10 then Table1.Refresh;
end;

procedure TFPSPCompra.DBEdit9Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if fTra(1,['Select Descricao,Estado From CadForne Where Codigo=0'+Table1.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
       Table1.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[0].Text;
       Table1.FieldByName('Estado').Text:=dm.qrSqlTra.Fields[1].Text;
       if Table1.FieldByName('NaturCod').asFloat=0 then begin
          if Table1.FieldByName('Estado').Text='SC' then Table1.FieldByName('NaturCod').Value:=1.102
          else Table1.FieldByName('NaturCod').Value:=2.102;
       end;
       Table1.Edit;
       DBGrid1.SetFocus;
    end else SBP1.OnClick(Sender);
  end;
end;

procedure TFPSPCompra.SBP1Click(Sender: TObject);
begin
  fPqFornecedor; xpqpesq:=0; TPesq.Enabled:=True;
end;

procedure TFPSPCompra.DBEdit10Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if not fTra(3,['Select Descricao From CadNatur Where Codigo='+frInvS(Table1.FieldByName('NaturCod').Text)+' and '+xFiltro1],1) then
       SBP3.OnClick(Sender)
    else DBGrid1.SetFocus;
  end;
end;

procedure TFPSPCompra.SBP3Click(Sender: TObject);
begin
  fPqNatureza; xpqpesq:=8; TPesq.Enabled:=True;
end;

procedure TFPSPCompra.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     vkey:=0;
     TPesq.Enabled :=False;
     if xpqpesq=0 then begin
       Table1.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit9.SetFocus;
     end else if xpqpesq=3 then begin
       Table2.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBGrid1.SetFocus; DBGrid1.SelectedIndex:=0;
     end else if xpqpesq=4 then begin
       Table3.FieldByName('BanCod').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBGrid2.SetFocus; DBGrid2.SelectedIndex:=3;
     end else if xpqpesq=8 then begin
       Table1.FieldByName('NaturCod').asFloat:=FPesq.qrPesq.Fields[0].asFloat;
       DBEdit10.SetFocus;
     end else if xpqpesq=-1 then begin
       Table1.Locate('Nota',FPesq.qrPesq.Fields[0].asInteger,[]);
     end;
  end;
end;

//Produtos
procedure TFPSPCompra.DBGrid1Enter(Sender: TObject);
begin
  Table2.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFPSPCompra.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
     if DBGrid1.SelectedIndex<>6 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
     else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFPSPCompra.DBGrid1ColExit(Sender: TObject);
begin
  Table2.Edit;
  Table2.FieldByName('EmpreCod').asInteger:=xEmp;
  Table2.FieldByName('AcesoCod').asInteger:=xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(Table2.FieldByName('Codigo').Text,1,3)='999' then begin
            Table2.Delete; fCalcPedi; DBEdit12.SetFocus; Abort;
         end;
         if fTra(1,['Select * From CadMerca Where Codigo=0'+Table2.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
            Table2.FieldByName('Lancit').asInteger:=frGenerator('NFCOMPCO','LANCIT',1);
            Table2.FieldByName('Data').Value      :=Table1.FieldByName('Data').Value;
            Table2.FieldByName('Descricao').Text  :=dm.qrSqlTra.FieldByName('Descricao').Text;
            Table2.FieldByName('Unidade').Text    :=dm.qrSqlTra.FieldByName('Unidade').Text;
            Table2.FieldByName('GrupoCod').Value  :=dm.qrSqlTra.FieldByName('GrupoCod').Value;
            Table2.FieldByName('Unit').AsFloat   :=dm.qrSqlTra.FieldByName('Compra').AsFloat;
            DBGrid1.SelectedIndex:=3;
         end else begin fPQMercadoria; xpqpesq:=3; TPesq.Enabled:=True; end;
       end;
    4: begin
         if Table2.FieldByName('Unit').AsFloat>0 then
             Table2.FieldByName('Valor').AsFloat:=Table2.FieldByName('Qtde').AsFloat*
                                                  Table2.FieldByName('Unit').AsFloat;
         if Table2.FieldByName('Codigo').asInteger=100 then
             Table2.FieldByName('Valor').AsFloat:=Table2.FieldByName('Qtde').AsFloat*
                                                  Table2.FieldByName('Unit').AsFloat*-1;

       end;
    6: begin
         Table2.FieldByName('VlrIcms').AsFloat:=Table2.FieldByName('ICMSP').AsFloat*
                                                Table2.FieldByName('Valor').AsFloat/100;
         fCalcPedi; Table2.Next;
         if Table2.Eof then Table2.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFPSPCompra.fCalcPedi;
begin
  if not SB4.Enabled then Exit;
  Table2.Edit; Table2.Post;
  fSql(1,1,['Select Sum(Valor), Sum(VlrIcms) From nfCompCo',
            'Where Lanc='+Table1.Fields[0].Text+' and '+xFiltro1],2);
  Table1.Edit;
  Table1.FieldByName('VlrProduto').asFloat:=dm.qrSql1.Fields[0].asFloat;
  Table1.FieldByName('VlrIcms').asFloat:=dm.qrSql1.Fields[1].asFloat;
  Table1.FieldByName('VlrNota').asFloat:=Table1.FieldByName('VlrProduto').asFloat-
                                         Table1.FieldByName('VlrDesc').asFloat+
                                         Table1.FieldByName('VlrFrete').asFloat;
end;

procedure TFPSPCompra.DBEdit5Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    Table1.FieldByName('VlrDesc').Value:=0;
    if Table1.FieldByName('Descp').Value<>0 then
      Table1.FieldByName('VlrDesc').Value:=Table1.FieldByName('Valor').Value*
                                           Table1.FieldByName('Descp').Value/100;
    Table1.FieldByName('Total').Value:=Table1.FieldByName('Valor').Value-
                                       Table1.FieldByName('VlrDesc').Value+
                                       Table1.FieldByName('VlrFrete').Value;
  end;
end;

procedure TFPSPCompra.DBEdit12Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    Table1.FieldByName('VlrDesc').Value:=(Table1.FieldByName('VlrProduto').Value*
                                          Table1.FieldByName('Descp').Value/100);
  end;
end;

//Banco
procedure TFPSPCompra.DBGrid2Enter(Sender: TObject);
begin
  Table3.Edit;
  DBGrid2.SelectedIndex:=0;
end;

procedure TFPSPCompra.DBGrid2ColExit(Sender: TObject);
begin
  Table3.Edit;
  Table3.FieldByName('EmpreCod').asInteger:=xEmp;
  Table3.FieldByName('AcesoCod').asInteger:=xAce;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(Table3.FieldByName('Parc').Text,1,3)='999' then begin
            Table3.Delete; DBEdit11.SetFocus; Abort;
         end;
       end;
    3: if not fTra(1,['Select Descricao From CadBanco Where Codigo=0'+Table3.FieldByName('BanCod').Text+' and '+xFiltro1],1) then begin
          fPqBanco; xpqpesq:=4; TPesq.Enabled:=True;
       end;
    5: begin
         Table3.Fields[5].Value:=Table3.Fields[3].Value;
         Table3.Post; Table3.Next;
         if Table3.Eof then begin
            Table3.Append;
            Table3.FieldByName('BanCod').Value:=0;
            DBGrid2.SelectedIndex:=0;
         end;
       end;
  end;
end;

procedure TFPSPCompra.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>5 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFPSPCompra.DBGrid2Exit(Sender: TObject);
var vpar:Integer;
begin
  vpar:=0;
  Table3.First;
  while not Table3.Eof do begin
     vpar:=vpar+1;
     Table3.Edit;
     Table3.FieldByName('Parc').asInteger:=vpar;
     Table3.Post;
     Table3.Next;
  end;
end;

procedure TFPSPCompra.Excluir1Click(Sender: TObject);
begin
  if frExcl then Table2.Delete;
end;

procedure TFPSPCompra.Excluir2Click(Sender: TObject);
begin
  if frExcl then Table3.Delete;
end;

procedure TFPSPCompra.DBEdit11Exit(Sender: TObject);
begin
  if vKey=13 then begin vKey:=0; if frSalv then Novo1Click(SB4); end;
end;

//Integração
procedure TFPSPCompra.fSSalvar(vTipo:Boolean);
var vLanc:Integer;
begin
  if vTipo then begin
    fSql(1,1,['Delete From FiBaiPag Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
    fSql(1,1,['Delete From CxBanco Where LancCom='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
    Table1.Edit;
    Table1.FieldByName('EmpreCod').asInteger:=xEmp;
    Table1.FieldByName('AcesoCod').asInteger:=xAce;
    Table1.Post;
    Table3.First;
    while not Table3.Eof do begin
      if Table3.FieldByName('BanCod').Value=0 then begin
         if Table1.FieldByName('VlrNota').asFloat<0 then
            fIntPago('FiBaiPag',Table1.FieldByName('Lanc').Text,
                        'Adian.'+Trim(Table1.FieldByName('Nota').Text),
                        Table1.FieldByName('Codigo').Text,
                        Table1.FieldByName('Descricao').Text,
                        frInvD(Table1.FieldByName('Data').Value),
                        frInvV(Table3.FieldByName('Valor').Value*-1),
                        frInvD(Table3.FieldByName('Vencto').Value),
                        Table3.FieldByName('Parc').Text)
         else
            fIntContas('FiBaiPag',Table1.FieldByName('Lanc').Text,
                        Trim(Table1.FieldByName('Nota').Text),
                        Table1.FieldByName('Codigo').Text,
                        Table1.FieldByName('Descricao').Text,
                        frInvD(Table1.FieldByName('Data').Value),
                        frInvV(Table3.FieldByName('Valor').Value),
                        frInvD(Table3.FieldByName('Vencto').Value),
                        Table3.FieldByName('Parc').Text);
      end else begin
         vLanc:=fBus(1,['Select Max(Lanc) From CxBanco'+' Where '+xFiltro1],1)+1;
         fTra(1,['Select Descricao From CadBanco Where Codigo=0'+Table3.FieldByName('BanCod').Text+' and '+xFiltro1],1);
         fIntCaixa('0',Table1.FieldByName('Lanc').Text,IntToStr(vLanc),
                   frInvD(Table1.FieldByName('Data').Value),'S',
                   Table3.FieldByName('BanCod').Text,
                   dm.qrSqlTra.Fields[0].Text,
                   frInvD(Table3.FieldByName('Vencto').Value),
                   frInvV(Table3.FieldByName('Valor').Value),
                   frInvV(Table3.FieldByName('Valor').Value*-1),
                   Table1.FieldByName('Descricao').Text,'0','A',
                   'N.F.Compra nº '+frPree(Table1.FieldByName('Nota').Value,6,'0',0)+' '+
                   Table3.FieldByName('BanEmi').Text,
                   Table3.FieldByName('BanDoc').Text,'S',
                   frInvD(Table1.FieldByName('Data').Value),
                   Table1.FieldByName('Codigo').Text,'0');
      end;
      Table3.Next;
    end;
  end else begin
     fSql(1,1,['Delete From FiPaCo Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
     fSql(1,1,['Delete From nfCompCo Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
     Table1.Delete;
  end;
end;

procedure TFPSPCompra.FormActivate(Sender: TObject);
begin
  if not Table1.Active then begin
     Table1.Open; Table1.Last;
     Table2.Open; Table3.Open;
  end;
  if Table1.Filter<>xFiltro1 then begin
     Table1.Filter:=xFiltro1;
//     Table2.Filter:=xFiltro1;
//     Table3.Filter:=xFiltro1;
  end;
end;

procedure TFPSPCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FPSPCompra);
end;

procedure TFPSPCompra.DBEdit7Exit(Sender: TObject);
var vok:String;
begin
  if vkey=13 then begin vkey:=0;
     Table1.FieldByName('VlrNota').Value:=Table1.FieldByName('VlrProduto').Value-
                                          Table1.FieldByName('VlrDesc').Value+
                                          Table1.FieldByName('VlrFrete').Value;
     vok:='N';
     if Table1.FieldByName('Codigo').Value<>1001 then begin
       if vtag=2 then begin
         if frPerg('Altera Financeiro?') then begin
            Table3.First;
            while not Table3.Eof do Table3.Delete;
            vok:='S';
         end;
       end else vok:='S';
       if vok='S' then begin
         Table3.Append;
         if Table1.FieldByName('VlrNota').asFloat<0 then Table3.FieldByName('Vencto').Value:=Table1.FieldByName('Data').Value
         else Table3.FieldByName('Vencto').Value:=IncMonth(Table1.FieldByName('Data').Value,1);
         Table3.FieldByName('Parc').Value:=1;
         Table3.FieldByName('BanCod').Value:=0;
         Table3.FieldByName('Valor').asFloat:=Table1.FieldByName('VlrNota').asFloat;
         Table3.FieldByName('EmpreCod').asInteger:=xEmp;
         Table3.FieldByName('AcesoCod').asInteger:=xAce;
         Table3.Post;
       end;
     end;
     DBGrid2.SetFocus;
  end;
end;

end.
