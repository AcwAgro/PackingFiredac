unit PSPVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, IBTable, IBCustomDataSet, IBQuery;

type
  TFPSPVenda = class(TForm)
    TPesq: TTimer;
    PDados: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    SBP1: TSpeedButton;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
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
    Table1: TTable;
    DataSource1: TDataSource;
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
    DataSource2: TDataSource;
    Table2: TTable;
    Table1LANC: TIntegerField;
    Table1REGISTRO: TIntegerField;
    Table1DATA: TDateTimeField;
    Table1VENDECOD: TIntegerField;
    Table1CODIGO: TIntegerField;
    Table1DESCRICAO: TStringField;
    Table1COMPRADOR: TStringField;
    Table1FORMA: TStringField;
    Table1TOTAL: TFloatField;
    Table1VALOR: TFloatField;
    Table1VLRDESC: TFloatField;
    Table1EXPORT: TStringField;
    Table2LANC: TIntegerField;
    Table2CODIGO: TIntegerField;
    Table2DESCRICAO: TStringField;
    Table2UNIDADE: TStringField;
    Table2QTDE: TFloatField;
    Table2UNIT: TFloatField;
    Table2VALOR: TFloatField;
    Table2PERDESC: TFloatField;
    Table2VLRDESC: TFloatField;
    Table2LANCIT: TIntegerField;
    Table2RUNIT: TFloatField;
    SB7: TSpeedButton;
    Table1EMPRECOD: TIntegerField;
    Table1ACESOCOD: TIntegerField;
    Table2EMPRECOD: TIntegerField;
    Table2ACESOCOD: TIntegerField;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    SBP6: TSpeedButton;
    DBEdit17: TDBEdit;
    Label8: TLabel;
    DBEdit23: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    Table1TRCOD: TIntegerField;
    Table1TRDES: TStringField;
    Table1TRPLACA: TStringField;
    Table1TRCIDADE: TStringField;
    Table1TRESTADO: TStringField;
    Button2: TButton;
    Table2PESOLIQ: TFloatField;
    procedure Novo1Click(Sender: TObject);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure SBP6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    vTag,vKey:Integer;
    procedure fRestaura;
    procedure fCalcPedi;
    procedure fMostra;
    procedure fImpressao;
  public
    { Public declarations }
  end;

var
  FPSPVenda: TFPSPVenda;

implementation

uses Menu, Rotina, Data, Pesq, rlPSPVenda;

{$R *.DFM}

procedure TFPSPVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FPSPVenda);
end;

procedure TFPSPVenda.FormCreate(Sender: TObject);
begin
  Table1.Open; Table2.Open; Table1.Last;
     if xsenha=xsenhager then button2.Visible:=true
     else button2.Visible:=false;
end;

procedure TFPSPVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFPSPVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13; Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFPSPVenda.fRestaura;
begin
  SB1.Enabled := not SB1.Enabled;
  SB2.Enabled := not SB2.Enabled;
  SB3.Enabled := not SB3.Enabled;
  SB4.Enabled := not SB4.Enabled;
  SB5.Enabled := not SB5.Enabled;
  SB6.Enabled := not SB6.Enabled;
  SB7.Enabled := not SB7.Enabled;
  SB8.Enabled := not SB8.Enabled;
  SB9.Enabled := not SB9.Enabled;
  SB10.Enabled := not SB10.Enabled;
  SB11.Enabled := not SB11.Enabled;
  PDados.Enabled := not PDados.Enabled;
end;

procedure TFPSPVenda.Novo1Click(Sender: TObject);
begin
  if (TComponent(Sender).Tag=4) or (TComponent(Sender).Tag=5) then begin
     if SB1.Enabled then Exit; end
  else if SB4.Enabled then Exit;
  if (TComponent(Sender).Tag<6) and (TComponent(Sender).Tag<>3) then fRestaura;
  Case TComponent(Sender).Tag of
     1: begin
          Table1.Append;
          Table1.Fields[0].Value:=frGenerator('ESVENDA','LANC',1);
          Table1.FieldByName('VendeCod').Value:=xAce;
          Table1.FieldByName('Data').Value:=Date;
          Table1.FieldByName('Total').asFloat:=0;
          Table1.FieldByName('Valor').asFloat:=0;
          Table1.FieldByName('Forma').Value:='000';
          Table1.FieldByName('Export').Value:='N';
          DBEdit2.SetFocus;
        end;
     2: begin Table1.Edit; DBEdit2.SetFocus; end;
     3: if frExcl then begin
           Table2.First;
           if not Table2.Eof then Table2.Delete;
           Table1.Delete;
        end;
     4: begin Table1.Edit;
         if Table1.FieldByName('Registro').asInteger<1 then
            Table1.FieldByName('Registro').asInteger:=fBus(2,['Select Max(Registro) From EsVenda'],1)+1;
          Table1.FieldByName('EmpreCod').asInteger:=xEmp;
          Table1.FieldByName('AcesoCod').asInteger:=xAce;
          Table1.Post;
        end;
     5: begin
          if vtag=1 then begin
             Table2.First;
             if not Table2.Eof then Table2.Delete;
          end;
          Table1.Cancel;
        end;
     6: begin fPQVenda; xPQPesq:=-1; TPesq.Enabled:=True; end;
     7: begin fImpressao; end;
    11: Table1.First;
    12: Table1.Prior;
    13: Table1.Next;
    14: Table1.Last;
  end;
  vTag:=TComponent(Sender).Tag;
  Table2.Filter:='Lanc='+Table1.Fields[0].Text;
  fMostra;
end;

procedure TFPSPVenda.fMostra;
begin
  fSql(2,3,['Select Sum(Qtde) From EsVendCo Where Lanc='+Table1.Fields[0].Text],1);
  Edit1.Text:=frPree(FloatToStrF(dm.qrSql3.Fields[0].asFloat,ffNumber,10,0),15,' ',0);
end;

procedure TFPSPVenda.DBEdit9Exit(Sender: TObject);
var vesens,veseng:String; vaberto:Real;
begin
//  if vkey=13 then begin vkey:=0;
    if fTra(1,['Select Descricao,Forma,Mensagem,Limite From CadClien Where Codigo=0'+Table1.FieldByName('Codigo').Text],1) then begin
       Table1.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[0].Text;
       Table1.FieldByName('Forma').Text:=dm.qrSqlTra.Fields[1].Text;
//procura parcelas em atraso
       if (vTag=1) then begin
         if (Trim(dm.qrSqlTra.Fields[2].Text)<>'') then
            ShowMessage('Mensagem: '+Trim(dm.qrSqlTra.Fields[2].Text));
         fSql(1,1,['Select Sum(Valor) From FiBaiRec',
                   'Where Valor>0 and Pago='+QuotedStr('N')+
                   ' and Codigo='+Table1.FieldByName('Codigo').Text],2);
         vaberto:=dm.qrSql1.Fields[0].asFloat;
         fSql(1,1,['Select Count(Vencto), Sum(Valor) From FiBaiRec',
                   'Where Valor>0 and Pago='+QuotedStr('N')+
                   ' and Codigo='+Table1.FieldByName('Codigo').Text+
                   ' and Vencto<'+frInvD(Table1.FieldByName('Data').Value)],2);
         ShowMessage('Pac.Aberto: '+FloatToStrF(vaberto,ffCurrency,10,2)+#13+
                     'Nº de parcelas Vencidas '+dm.qrSql1.Fields[0].Text+#13+
                     'Valor: '+FloatToStrF(dm.qrSql1.Fields[1].asFloat,ffCurrency,10,2)+#13+
                     'Limite Crédito: '+FloatToStrF(dm.qrSqlTra.Fields[3].asFloat,ffCurrency,10,2));
{         if vaberto>dm.qrSqlTra.Fields[3].asFloat then begin
           veseng:=Copy(DateToStr(Date),7,4)+Copy(DateToStr(Date),1,2);
           vesens:=frImpu(1,'Senha para Inserção?','');
           if veseng<>vesens then begin
              ShowMessage('Senha Inválida!');
              SB5.OnClick(SB5);
              Abort;
           end;
         end;}
       end;
       DBGrid1.SetFocus;
    end else SBP1.OnClick(Sender);
//  end;
end;

procedure TFPSPVenda.SBP1Click(Sender: TObject);
begin
  fPQCliente; xpqpesq:=0; TPesq.Enabled:=True;
end;

procedure TFPSPVenda.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     vkey:=0;
     TPesq.Enabled:=False;
//     Table1.Edit; Table2.Edit;
     if xpqpesq=0 then begin
       Table1.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit9.SetFocus;
     end
     else if xpqpesq=3 then begin
       Table2.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBGrid1.SetFocus; DBGrid1.SelectedIndex:=0;
     end
     else if xpqpesq=-1 then begin
       Table1.Locate('Registro',FPesq.qrPesq.Fields[0].asInteger,[]);
       Table2.Filter:='Lanc='+Table1.Fields[0].Text;
       fMostra;
     end
     else if xpqpesq=6 then begin
       Table1.FieldByName('TrCod').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit22.SetFocus;
     end;
  end;
end;

//Produtos
procedure TFPSPVenda.DBGrid1Enter(Sender: TObject);
begin
  Table2.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFPSPVenda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin vkey:=13;
     if DBGrid1.SelectedIndex<>8 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex + 1
     else DBGrid1.SelectedIndex:=0;
  end else vkey:=0;
end;

procedure TFPSPVenda.DBGrid1ColExit(Sender: TObject);
begin
  if vkey<>13 then Exit else vkey:=0;
  Table2.Edit;
  Table2.FieldByName('EmpreCod').asInteger:=xEmp;
  Table2.FieldByName('AcesoCod').asInteger:=xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(Table2.FieldByName('Codigo').Text,1,3)='999' then begin
            Table2.Delete; fCalcPedi; DBEdit12.SetFocus; Abort;
         end;
         Table2.FieldByName('Lanc').asInteger:=Table1.FieldByName('Lanc').asInteger;
         if fTra(1,['Select Descricao,Unidade,Venda1,PesoLiq From CadProdu Where Codigo=0'+Table2.FieldByName('Codigo').Text],1) then begin
            Table2.FieldByName('Lancit').asInteger:=frGenerator('ESVENDCO','LANCIT',1);
            Table2.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[0].Text;
            Table2.FieldByName('Unidade').Text:=dm.qrSqlTra.Fields[1].Text;
            Table2.FieldByName('Unit').AsFloat:=dm.qrSqlTra.Fields[2].asFloat;
            Table2.FieldByName('PesoLiq').AsFloat:=dm.qrSqlTra.Fields[3].asFloat;
            DBGrid1.SelectedIndex:=3;
         end else begin fPQProduto; xpqpesq:=3; TPesq.Enabled:=True; end;
       end;
    4: if Table2.FieldByName('Unit').AsFloat>0 then
          Table2.FieldByName('Valor').AsFloat:=Table2.FieldByName('Qtde').AsFloat*
                                               Table2.FieldByName('Unit').AsFloat;
    5: begin
         if Table2.FieldByName('PerDesc').AsFloat>0 then begin
            Table2.FieldByName('VlrDesc').AsFloat:=Table2.FieldByName('PerDesc').AsFloat*
                                                   Table2.FieldByName('Unit').AsFloat/100;
         end;
       end;
    6: begin
         if Table2.FieldByName('VlrDesc').AsFloat>0 then begin
            if Table2.FieldByName('Unit').AsFloat>0 then
               Table2.FieldByName('PerDesc').AsFloat:=Table2.FieldByName('VlrDesc').AsFloat/
                                                      Table2.FieldByName('Unit').AsFloat*100;
         end;
         Table2.FieldByName('RUnit').asFloat:=Table2.FieldByName('Unit').asFloat
                                            - Table2.FieldByName('VlrDesc').asFloat;
         Table2.FieldByName('Valor').asFloat:=Table2.FieldByName('RUnit').asFloat
                                            * Table2.FieldByName('Qtde').asFloat;
       end;
    8: begin
         Table2.Post; fCalcPedi; Table2.Next;
         if Table2.Eof then Table2.Append;
         DBGrid1.SelectedIndex:=0;
       end;
  end;
end;

procedure TFPSPVenda.fCalcPedi;
var vval,vrva:Real;vMar:Integer;
begin
  if not SB4.Enabled then Exit;
  fSql(2,1,['Select Sum(Valor), Sum(VlrDesc*Qtde), Sum(Qtde) From EsVendCo',
            'Where Lanc='+Table1.Fields[0].Text],2);
  Table1.Edit;
  Table1.FieldByName('Total').asFloat:=dm.qrSql1.Fields[0].asFloat;
  Table1.FieldByName('Valor').asFloat:=dm.qrSql1.Fields[0].asFloat+dm.qrSql1.Fields[1].asFloat;
  Table1.FieldByName('VlrDesc').asFloat:=dm.qrSql1.Fields[1].asFloat;
  Edit1.Text:=frPree(FloatToStrF(dm.qrSql1.Fields[2].asFloat,ffNumber,10,0),20,' ',0);
end;

procedure TFPSPVenda.Excluir1Click(Sender: TObject);
begin
  if frExcl then Table2.Delete;
end;

//Impressao
procedure TFPSPVenda.fImpressao;
begin
     if qrPSPVenda<>Nil then qrPSPVenda.Destroy; Application.CreateForm(TqrPSPVenda, qrPSPVenda);
     with rlPSPVenda.qrPSPVenda do begin
       qrLabel16.Caption:='P.S.P. Venda Fruta';
       qrPedi.Close;
       qrPediCom.Close;
       qrPedi.Sql.Strings[1] := 'From EsVenda';
       qrPediCom.Sql.Strings[1] := 'From EsVendCo EstoqCom';
       qrPedi.Sql.Strings[2] := 'Where Lanc = '+Table1.Fields[0].AsString;
       qrPediCom.Sql.Strings[2] := 'Where Lanc = '+Table1.Fields[0].AsString;
       qrPedi.Open;
       qrPediCom.Open;
       if qrPedi.RecordCount = 0 then begin
          Showmessage('P.S.P. não Encontrado!');
          Exit;
       end;
       PrinterSettings.PrinterIndex := fImpr('Imp2');
       Preview;
     end;
end;

procedure TFPSPVenda.DBEdit5Exit(Sender: TObject);
begin
  if vKey=13 then begin vKey:=0; if frSalv then Novo1Click(SB4); end;
end;

procedure TFPSPVenda.FormActivate(Sender: TObject);
begin
  if not Table1.Active then begin
     Table1.Open; Table2.Open;
  end;
  if Table1.Filter<>xFiltro1 then begin
     Table1.Filter:=xFiltro1;
     Table1.Last;
     Table2.Filter:='Lanc='+Table1.Fields[0].Text;
  end;
end;

procedure TFPSPVenda.DBEdit22Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if fTra(1,['Select Descricao,TrPlaca,TrEstado,CidadeDes From CadTrans Where Codigo=0'+Table1.FieldByName('TRCod').Text+' and '+xFiltro1],1) then begin
       Table1.FieldByName('TrDes').Text:=dm.qrSqlTra.Fields[0].Text;
       Table1.FieldByName('TrPlaca').Text:=dm.qrSqlTra.Fields[1].Text;
       Table1.FieldByName('TrEstado').Text:=dm.qrSqlTra.Fields[2].Text;
       Table1.FieldByName('TrCidade').Text:=dm.qrSqlTra.Fields[3].Text;
       DBEdit17.SetFocus;
    end else SBP6.OnClick(Sender);
  end;
end;

procedure TFPSPVenda.SBP6Click(Sender: TObject);
begin
  fPqCarreto; xpqpesq:=6; TPesq.Enabled:=True;
end;

procedure TFPSPVenda.Button2Click(Sender: TObject);
begin
  Table1.First;
  fbar(0,table1.recordcount,'');
  while not Table1.Eof do begin
     fbar(1,table1.recordcount,'');
       Table2.Filter:='Lanc='+Table1.Fields[0].Text;
       Table2.First;
       while not Table2.Eof do begin
         if fTra(1,['Select Unidade,Descricao,PesoLiq From CadProdu Where Codigo=0'+Table2.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
           Table2.Edit;
           Table2.FieldByName('Unidade').Text:=dm.qrSqlTra.Fields[0].Text;
           Table2.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[1].Text;
           Table2.FieldByName('PesoLiq').asFloat:=dm.qrSqlTra.Fields[2].asFloat;
           Table2.Post;
         end else begin
           fSql(1,1,['Insert Into CadProdu',
                     '(Emprecod, Codigo, Descricao, Unidade)',
                     'Values',
                     '(1,'+Table2.FieldByName('Codigo').Text+','+QuotedStr(Table2.FieldByName('Descricao').Text)+
                     ','+QuotedStr(Table2.FieldByName('Unidade').Text)+')'],4);
         end;
         Table2.Next;
       end;
     Table1.Next;
  end;
  fbar(2,table1.recordcount,'');
end;

end.
