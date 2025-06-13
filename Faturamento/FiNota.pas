unit FINota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, IBQuery, IBCustomDataSet, IBTable;

type
  TFFiNota = class(TForm)
    TPesq: TTimer;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    PDados: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
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
    DataSource3: TDataSource;
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
    DBEdit20: TDBEdit;
    DBEdit26: TDBEdit;
    Label16: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    DBEdit27: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit24: TDBEdit;
    SBP1: TSpeedButton;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit10: TDBEdit;
    SBP2: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    Label28: TLabel;
    Label15: TLabel;
    Memo1: TMemo;
    DBEdit23: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    Label4: TLabel;
    DBEdit22: TDBEdit;
    SBP6: TSpeedButton;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    DBLCBox1: TDBLookupComboBox;
    Label12: TLabel;
    Table1LANC: TIntegerField;
    Table1DIF: TStringField;
    Table1NOTA: TIntegerField;
    Table1SERIE: TStringField;
    Table1VENDECOD: TIntegerField;
    Table1CODIGO: TIntegerField;
    Table1DESCRICAO: TStringField;
    Table1DATA: TDateTimeField;
    Table1ENTREGA: TDateTimeField;
    Table1NATURCOD: TFloatField;
    Table1DADOSCOD: TIntegerField;
    Table1TRTIPO: TStringField;
    Table1TRCOD: TIntegerField;
    Table1TRDES: TStringField;
    Table1VLRDESC: TFloatField;
    Table1VLRBASE: TFloatField;
    Table1VLRICMS: TFloatField;
    Table1VLRFRETE: TFloatField;
    Table1VLRPRODUTO: TFloatField;
    Table1VLRIPI: TFloatField;
    Table1VLRNOTA: TFloatField;
    Table1PESOBRU: TFloatField;
    Table1PESOLIQ: TFloatField;
    Table1QTDESP: TStringField;
    Table1PSP: TIntegerField;
    Table1FRETECOD: TIntegerField;
    Table1FRETEDES: TStringField;
    Table1TRPLACA: TStringField;
    Table1TRCIDADE: TStringField;
    Table1TRESTADO: TStringField;
    Table1ESTADO: TStringField;
    Table1VLRSEGURO: TFloatField;
    Table1VLRICMSFRE: TFloatField;
    Table1FORPAG: TIntegerField;
    Table1SEGTIP: TStringField;
    Table1OBS2: TStringField;
    Table1OBS3: TStringField;
    Table1OBS4: TStringField;
    Table1OBS5: TStringField;
    Table1OBS6: TStringField;
    Table1RECEITA: TIntegerField;
    Table1OBS1: TStringField;
    Table1DIFCOD: TIntegerField;
    Table1DIFDES: TStringField;
    Table2LANC: TIntegerField;
    Table2DATA: TDateTimeField;
    Table2CLIENTE: TIntegerField;
    Table2CODIGO: TIntegerField;
    Table2DESCRICAO: TStringField;
    Table2UNIDADE: TStringField;
    Table2PESOLIQ: TFloatField;
    Table2PESOBRU: TFloatField;
    Table2QTDE: TFloatField;
    Table2UNIT: TFloatField;
    Table2VALOR: TFloatField;
    Table2LANCIT: TIntegerField;
    Table2GRUPOCOD: TIntegerField;
    Table2PERDESC: TFloatField;
    Table2VLRDESC: TFloatField;
    Table2VENCTO: TDateTimeField;
    Table2RUNIT: TFloatField;
    Table2RVALOR: TFloatField;
    Table4: TTable;
    DataSource4: TDataSource;
    DBEdit6: TDBEdit;
    SBP4: TSpeedButton;
    Table1EMPRECOD: TIntegerField;
    Table1ACESOCOD: TIntegerField;
    Table2EMPRECOD: TIntegerField;
    Table2ACESOCOD: TIntegerField;
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
    Table3EMPRECOD: TIntegerField;
    Table3ACESOCOD: TIntegerField;
    PopupMenu4: TPopupMenu;
    NotaFiscal1: TMenuItem;
    Boleto1: TMenuItem;
    Permisso1: TMenuItem;
    Promissria1: TMenuItem;
    Receiturio1: TMenuItem;
    SBB1: TSpeedButton;
    Button2: TButton;
    Table1ESTOQUE: TStringField;
    Table1NSUNUM: TIntegerField;
    Table1NSUDAT: TDateTimeField;
    Table1NSUHOR: TStringField;
    procedure Novo1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBP6Click(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure SBP2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SBP1Click(Sender: TObject);
    procedure DBLCBox1Exit(Sender: TObject);
    procedure SBP4Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    vTag,vKey:Integer;
    vicms:Real;
    vforma:String;
    procedure fRestaura;
    procedure fMostra;
    procedure fSSalvar(vTipo:Boolean);
    procedure fCalcPedi;
  public
  end;
var
  FFiNota: TFFiNota;

implementation

uses Menu, Rotina, Data, Pesq, rlNota, rlBoleto, rlPermisao, rlPromis, rlReceita;

{$R *.DFM}

procedure TFFiNota.FormActivate(Sender: TObject);
begin
  if not Table1.Active then begin
     Table2.Open; Table3.Open; Table4.Open;
     Table1.Open; Table1.Last;
     if xsenha=xsenhager then button2.Visible:=true
     else button2.Visible:=false;
  end;
  if Table1.Filter<>xFiltro1 then begin
     Table1.Filter:=xFiltro1;
     Table1.Last;
     Table2.Filter:='Lanc='+Table1.FieldByName('Lanc').Text;
     Table4.Filter:=xFiltro1;
     fMostra;
  end;
end;

procedure TFFiNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FFiNota);
end;

procedure TFFiNota.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFFiNota.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13; Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFFiNota.fRestaura;
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

procedure TFFiNota.Novo1Click(Sender: TObject);
begin
  if (TComponent(Sender).Tag=4) or (TComponent(Sender).Tag=5) then begin
     if SB1.Enabled then Exit; end
  else if SB4.Enabled then Exit;
  if (TComponent(Sender).Tag<6) and (TComponent(Sender).Tag<>3) then fRestaura;
  Case TComponent(Sender).Tag of
     1: begin
          Table1.Append;
          Table1.FieldByName('Lanc').Value:=frGenerator('NFVENDA','LANC',1);
          Table1.FieldByName('DifCod').Value:=1;
          Table1.FieldByName('Serie').Text:='03';
          Table1.FieldByName('Data').Value:=Date;
          Table1.FieldByName('Entrega').Value:=Date;
          Table1.FieldByName('VlrSeguro').asFloat:=0;
          Table1.FieldByName('VlrFrete').asFloat:=0;
          Table1.FieldByName('VlrDesc').asFloat:=0;
          Table1.FieldByName('TrTipo').Text:='2';
          Table1.FieldByName('TrCod').Value:=1;
          Table1.FieldByName('DadosCod').Value:=1;
          Table1.FieldByName('SegTip').Text:='0 -Nenhum';
          Table1.FieldByName('Receita').Value:=0;
          Table1.FieldByName('Obs1').Text:=fBus(1,['Select Obs1 From nfVenda Order By Lanc Desc'],1);
          DBLCBox1.SetFocus;
        end;
     2: begin Table1.Edit; DBLCBox1.SetFocus; end;
     3: if frExcl then fSSalvar(False);
     4: fSSalvar(True);
     5: fSSalvar(False);
     6: begin fpqNotaFiscal; xpqpesq:=-1; TPesq.Enabled:=True; end;
     7: PopupMenu4.Popup(SB7.Left+100,Top+60);
    11: Table1.First;
    12: Table1.Prior;
    13: Table1.Next;
    14: Table1.Last;
  end;
  vTag:=TComponent(Sender).Tag;
  if vtag>10 then Table1.Refresh;
  fMostra;
end;

procedure TFFiNota.fMostra;
begin
  Table2.Filter:='Lanc='+Table1.FieldByName('Lanc').Text;
  fSql(3,3,['Select * From CadNota Where Codigo=0'+Table1.FieldByName('DifCod').Text+' and '+xFiltro1],1);
  if Table1.FieldByName('TrTipo').Text='1' then Label20.Caption:='Emitente'
  else if Table1.FieldByName('TrTipo').Text='2' then Label20.Caption:='Destinatário';
  Memo1.Lines.Clear;
  Memo1.Lines.Add(Table1.FieldByName('Obs2').Text+
                  Table1.FieldByName('Obs3').Text+
                  Table1.FieldByName('Obs4').Text+
                  Table1.FieldByName('Obs5').Text+
                  Table1.FieldByName('Obs6').Text);
end;

procedure TFFiNota.DBLCBox1Exit(Sender: TObject);
begin
  Table1.FieldByName('DifCod').asInteger:=Table4.FieldByName('Codigo').asInteger;
  fSql(3,3,['Select * From CadNota Where Codigo=0'+Table1.FieldByName('DifCod').Text+' and '+xFiltro1],1);
end;

procedure TFFiNota.DBEdit3Exit(Sender: TObject);
var vval:Real; vtab,vtab2:String;
begin
  if vkey=13 then begin vkey:=0; vval:=0;
     DBGrid1.ReadOnly:=False; vforma:='000';
     Table1.FieldByName('Dif').Text:=dm.qrSql3.FieldByName('Item').Text;
     Table1.FieldByName('Estoque').Text:=dm.qrSql3.FieldByName('Estoque').Text;
     if dm.qrSql3.FieldByName('Item').Text='P' then begin vtab:='es'; vtab2:='CadProdu'; end
     else begin vtab:='ar'; vtab2:='CadMerca'; end;
     if Table1.FieldByName('PSP').asInteger>0 then begin
        if not fTra(2,['Select * From '+vtab+'Venda Where Registro=0'+Table1.FieldByName('PSP').Text+' and '+xFiltro1],1) then begin
           ShowMessage('P.S.P. não encontrado...');
           DBEdit3.SetFocus; Abort;
        end;
        if frPerg('Importa dados?') then begin
           vForma:=Trim(dm.qrSqlTra.FieldByName('Forma').Text)+'0';
           Table1.FieldByName('Codigo').Value:=dm.qrSqlTra.FieldByName('Codigo').Value;
           Table1.FieldByName('Descricao').Text:=dm.qrSqlTra.FieldByName('Descricao').Text;
           if vtab<>'ar' then begin
              Table1.FieldByName('TRCod').Value:=dm.qrSqlTra.FieldByName('TRCod').Value;
              Table1.FieldByName('TRDes').Text:=dm.qrSqlTra.FieldByName('TRDes').Text;
              Table1.FieldByName('TRPlaca').Text:=dm.qrSqlTra.FieldByName('TRPlaca').Text;
              Table1.FieldByName('TRCidade').Text:=dm.qrSqlTra.FieldByName('TRCidade').Text;
              Table1.FieldByName('TREstado').Text:=dm.qrSqlTra.FieldByName('TREstado').Text;
           end;
           Table2.First;
           while not Table2.Eof do Table2.Delete;
           fSql(2,1,['Select * From '+vtab+'VendCo Where Lanc=0'+dm.qrSqlTra.FieldByName('Lanc').Text+' and '+xFiltro1],1);
           while not dm.qrSql1.Eof do begin
              Table2.Append;
              Table2.FieldByName('Lanc').Value:=Table1.FieldByName('Lanc').Value;
              Table2.FieldByName('Data').Value:=Table1.FieldByName('Data').Value;
              Table2.FieldByName('Cliente').Value:=Table1.FieldByName('Codigo').Value;
              Table2.FieldByName('Lancit').Value:=dm.qrSql1.FieldByName('Lancit').Value;
              Table2.FieldByName('Codigo').Value:=dm.qrSql1.FieldByName('Codigo').Value;
              Table2.FieldByName('Descricao').Text:=dm.qrSql1.FieldByName('Descricao').Text;
              Table2.FieldByName('Unidade').Text:=dm.qrSql1.FieldByName('Unidade').Text;
              if fTra(1,['Select * From '+vtab2+' Where Codigo=0'+dm.qrSql1.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
                 if vtab='ar' then begin
                    Table2.FieldByName('Vencto').Value:=dm.qrSqlTra.FieldByName('Vencto').Value;
                    Table2.FieldByName('GrupoCod').asInteger:=dm.qrSqlTra.FieldByName('GrupoCod').asInteger;
                 end else Table2.FieldByName('GrupoCod').asInteger:=dm.qrSqlTra.FieldByName('VarieCod').asInteger;
                 Table2.FieldByName('PesoLiq').AsFloat:=dm.qrSqlTra.FieldByName('PesoLiq').AsFloat;
                 Table2.FieldByName('PesoBru').AsFloat:=dm.qrSqlTra.FieldByName('PesoBru').AsFloat;
              end;
              Table2.FieldByName('Qtde').AsFloat:=dm.qrSql1.FieldByName('Qtde').AsFloat;
              Table2.FieldByName('Unit').AsFloat:=dm.qrSql1.FieldByName('RUnit').AsFloat;
              Table2.FieldByName('Valor').AsFloat:=dm.qrSql1.FieldByName('Valor').AsFloat;
              Table2.FieldByName('RUnit').AsFloat:=Table2.FieldByName('Unit').AsFloat;
              Table2.FieldByName('RValor').AsFloat:=Table2.FieldByName('Valor').AsFloat;
              Table2.FieldByName('EmpreCod').asInteger:=dm.qrSql1.FieldByName('EmpreCod').asInteger;
              Table2.FieldByName('AcesoCod').asInteger:=dm.qrSql1.FieldByName('AcesoCod').asInteger;
              vval:=vval+Table2.FieldByName('Valor').AsFloat;
              Table2.Post;
              dm.qrSql1.Next;
           end;
           dm.qrSql1.Close;
           Table1.FieldByName('VlrProduto').AsFloat:=vval;
        end;
        DBGrid1.ReadOnly:=True;
        DBGrid1.SetFocus;
        DBEdit4.SetFocus;
     end;
  end;
end;

procedure TFFiNota.DBEdit4Exit(Sender: TObject);
begin
  DBEdit2.SetFocus;
end;
procedure TFFiNota.DBEdit2Exit(Sender: TObject);
var vtab:String;
begin
  if vkey=13 then begin vkey:=0;
    if dm.qrSql3.FieldByName('Razao').Text='C' then vtab:='CadClien Where '
    else if dm.qrSql3.FieldByName('Razao').Text='P' then begin
      if dm.qrSql3.FieldByName('Tipo').Text='E' then vtab:='CadForne Where Cooper<>'+QuotedStr('N')+' and '
      else vtab:='CadClien Where Cooper<>'+QuotedStr('N')+' and '
    end else if dm.qrSql3.FieldByName('Razao').Text='F' then vtab:='CadForne Where ';
    if fTra(1,['Select Descricao,Estado From '+vtab+' Codigo=0'+Table1.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
       Table1.FieldByName('Descricao').Text:=dm.qrSqlTra.Fields[0].Text;
       Table1.FieldByName('Estado').Text:=dm.qrSqlTra.Fields[1].Text;
       if dm.qrSql3.FieldByName('IcmsTipo').Text='Calculado' then begin
          if fTra(1,['Select Icms From CadEstad Where UF='+QuotedStr(Table1.FieldByName('Estado').Text)+' and '+xFiltro1],1) then
             vicms:=dm.qrSqlTra.Fields[0].asFloat;
       end else vicms:=0;
       if Table1.FieldByName('Estado').Text='SC' then
          Table1.FieldByName('NaturCod').asFloat:=dm.qrSql3.FieldByName('NaturDen').asFloat
       else Table1.FieldByName('NaturCod').asFloat:=dm.qrSql3.FieldByName('NaturFor').asFloat;
       if Table1.FieldByName('PSP').asInteger=0 then DBGrid1.SetFocus
       else DBEdit1.SetFocus;
    end else SBP1.OnClick(Sender);
  end;
end;

procedure TFFiNota.SBP1Click(Sender: TObject);
begin
  if dm.qrSql3.FieldByName('Razao').Text='C' then fPqCliente
  else if dm.qrSql3.FieldByName('Razao').Text='P' then begin
    if dm.qrSql3.FieldByName('Tipo').Text='E' then fpqForneCooper
    else fpqClienCooper;
  end else if dm.qrSql3.FieldByName('Razao').Text='F' then fPqFornecedor;
  xpqpesq:=0; TPesq.Enabled:=True;
end;

procedure TFFiNota.DBComboBox1Exit(Sender: TObject);
var vper,vtru,vcar:Real;
begin
  if vkey=13 then begin vkey:=0;
     if fTra(1,['Select * From CadEstad Where UF='+QuotedStr(Table1.FieldByName('Estado').Text)+' and '+xFiltro1],1) then begin
        vper:=dm.qrSqlTra.FieldByName('SEGURO').asFloat;
        vtru:=dm.qrSqlTra.FieldByName('SEGTRU').asFloat;
        vcar:=dm.qrSqlTra.FieldByName('SEGCAR').asFloat;
        Table1.FieldByName('VlrSeguro').AsFloat:=vper*Table1.FieldByName('VlrProduto').AsFloat/100;
        if Copy(Table1.FieldByName('SegTip').Text,1,1)='1' then begin
           if Table1.FieldByName('VlrSeguro').AsFloat<vtru then
              Table1.FieldByName('VlrSeguro').AsFloat:=vtru;
        end else if Copy(Table1.FieldByName('SegTip').Text,1,1)='2' then begin
           if Table1.FieldByName('VlrSeguro').AsFloat<vcar then
              Table1.FieldByName('VlrSeguro').AsFloat:=vcar;
        end else Table1.FieldByName('VlrSeguro').AsFloat:=0;
     end;
  end;
end;

procedure TFFiNota.DBEdit7Exit(Sender: TObject);
var vred,vvlricms,vvlrbase:Real; vtab:String; vfin,vpar:Integer; vtrue:Boolean;
begin
  if vkey=13 then begin vkey:=0;
     Table2.First;
     Table2.DisableControls;
     vvlricms:=0; vvlrbase:=0; vred:=0;
     if vicms>0 then begin
       while not Table2.Eof do begin
         if Table1.FieldByName('Estado').Text='SC' then vred:=dm.qrSql3.FieldByName('IcmsDen').asFloat
         else vred:=dm.qrSql3.FieldByName('IcmsFor').asFloat;
         vvlrbase:=vvlrbase+(Table2.FieldByName('RValor').AsFloat-(Table2.FieldByName('RValor').AsFloat*vred/100));
         vvlricms:=vvlricms+((Table2.FieldByName('RValor').AsFloat-(Table2.FieldByName('RValor').AsFloat*vred/100))*vicms/100);
         Table2.Next;
       end;
     end;
     Table2.EnableControls;
     Table1.FieldByName('VlrBase').AsFloat:=vvlrbase;
     Table1.FieldByName('VlrIcms').AsFloat:=vvlricms;
     Table1.FieldByName('VlrIcmsFre').AsFloat:=0;
     vvlrbase:=0; vvlricms:=0;
//icmsfrete +seguro
     if fTra(1,['Select * From CadEstad Where UF='+QuotedStr(Table1.FieldByName('Estado').Text)+' and '+xFiltro1],1) then begin
       vred:=dm.qrSqlTra.FieldByName('IcmsFre').asFloat;
       if Table1.FieldByName('VlrSeguro').AsFloat>0 then begin
          vvlrbase:=Table1.FieldByName('VlrSeguro').AsFloat;
          vvlricms:=vvlrbase*vred/100;
       end;
       Table1.FieldByName('VlrBase').AsFloat:=Table1.FieldByName('VlrBase').AsFloat+vvlrbase;
       Table1.FieldByName('VlrIcms').AsFloat:=Table1.FieldByName('VlrIcms').AsFloat+vvlricms;
       if Table1.FieldByName('VlrFrete').AsFloat>0 then begin
          vvlrbase:=Table1.FieldByName('VlrFrete').AsFloat*0.80;
          vvlricms:=vvlrbase*vred/100;
          Table1.FieldByName('VlrIcmsFre').AsFloat:=vvlricms;
       end;
     end;
     Table1.FieldByName('VlrNota').AsFloat:=Table1.FieldByName('VlrProduto').AsFloat+
                                            Table1.FieldByName('VlrSeguro').AsFloat+
                                            Table1.FieldByName('VlrIcmsFre').AsFloat-
                                            Table1.FieldByName('VlrDesc').AsFloat;
//Parcelas
     if dm.qrSql3.FieldByName('Item').Text='P' then begin
       vfin:=-3; vpar:=0;
       Table3.First;
       while not Table3.Eof do Table3.Delete;
       vtrue:=false;
       while not vtrue do begin
         vfin:=vfin+4; vpar:=vpar+1;
         if Trim(Copy(vforma,vfin,3))<>'' then begin
           Table3.Append;
           Table3.FieldByName('Lanc').Value:=Table1.FieldByName('Lanc').Value;
           Table3.FieldByName('Lancit').Value:=vpar;
           Table3.FieldByName('Parc').Value:=vpar;
           Table3.FieldByName('Vencto').Value:=Table1.FieldByName('Data').Value+
                                               StrToInt(Trim(Copy(vforma,vfin,3)));
           Table3.FieldByName('Valor').Value:=Table1.FieldByName('VlrNota').asFloat;
           Table3.FieldByName('Vlr').Value:=0;
           Table3.FieldByName('BanCod').Value:=0;
           Table3.FieldByName('EmpreCod').asInteger:=xEmp;
           Table3.FieldByName('AcesoCod').asInteger:=xAce;
           Table3.Post;
         end;
         if vpar>10 then vtrue:=True;
       end;
       Table3.First; vpar:=0;
       while not Table3.Eof do begin
         Table3.Edit;
         Table3.FieldByName('Valor').asFloat:=Table1.FieldByName('VlrNota').asFloat/Table3.RecordCount;
         Table3.FieldByName('Vlr').asFloat:=Table3.FieldByName('Valor').asFloat;
         Table3.FieldByName('EmpreCod').asInteger:=xEmp;
         Table3.FieldByName('AcesoCod').asInteger:=xAce;
         Table3.Post;
         Table3.Next;
         if vpar>10 then Exit else vpar:=vpar+1;
       end;
     end else begin
       Table3.First;
       while not Table3.Eof do Table3.Delete;
       fSql(1,2,['Select Vencto, Sum(Valor), Sum(Qtde*VlrDesc) From nfVendco',
                 'Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1,
                 'Group By Vencto'],3);
       vpar:=0;
       while not dm.qrSql2.eof do begin
         vpar:=vpar+1;
         Table3.Append;
         Table3.FieldByName('Lanc').Value:=Table1.FieldByName('Lanc').Value;
         Table3.FieldByName('Lancit').Value:=frGenerator('FIPAVE','LANCIT',1);
         Table3.FieldByName('Parc').Value:=vpar;
         Table3.FieldByName('Vencto').Value:=dm.qrSql2.Fields[0].Value;
         Table3.FieldByName('Valor').asFloat:=dm.qrSql2.Fields[1].asFloat-dm.qrSql2.Fields[2].asFloat;
         Table3.FieldByName('Vlr').asFloat:=dm.qrSql2.Fields[1].asFloat-dm.qrSql2.Fields[2].asFloat;
         Table3.FieldByName('BanCod').Value:=0;
         Table3.FieldByName('EmpreCod').asInteger:=xEmp;
         Table3.FieldByName('AcesoCod').asInteger:=xAce;
         Table3.Post;
         dm.qrSql2.Next;
       end;
     end;
//Atualiza Peso
     fSql(1,2,['Select Sum(PesoLiq*Qtde), Sum(PesoBru*Qtde) From nfVendCo',
               'Where Lanc='+Table1.Fields[0].Text+' and '+xFiltro1],2);
     Table1.FieldByName('PesoLiq').asFloat:=dm.qrSql2.Fields[0].asFloat;
     Table1.FieldByName('PesoBru').asFloat:=dm.qrSql2.Fields[1].asFloat;
//volumes
      vtab:=''; vred:=0;
      fSql(1,1,['Select Unidade, Sum(Qtde) as vqtde From nfVendCo',
                'Where Lanc='+Table1.Fields[0].AsString+' and '+xFiltro1,
                'Group by Unidade'],3);
      if dm.qrSql1.RecordCount>0 then begin
        dm.qrSql1.First;
        while not dm.qrSql1.Eof do begin
          vtab:=vtab+Trim(dm.qrSql1.Fields[0].Text);
          vred:=vred+dm.qrSql1.Fields[1].Value;
          dm.qrSql1.Next;
          if not dm.qrSql1.Eof then vtab:=vtab+'/';
        end;
      end;
      Table1.FieldByName('QtdEsp').Text:=frPree(vred,10,' ',0)+'      '+vtab;
  end;
end;

procedure TFFiNota.DBEdit10Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if fTra(3,['Select Descricao From CadFrete Where Codigo=0'+Table1.FieldByName('FreteCod').Text+' and '+xFiltro1],1) then begin
       Table1.FieldByName('FreteDes').Text:=dm.qrSqlTra.Fields[0].Text;
       DBGrid2.SetFocus;
    end else SBP2.OnClick(Sender);
  end;
end;

procedure TFFiNota.SBP2Click(Sender: TObject);
begin
  fPqFrete; xpqpesq:=4; TPesq.Enabled:=True;
end;

procedure TFFiNota.DBEdit21Exit(Sender: TObject);
begin
  if Table1.FieldByName('TrTipo').Text='1' then Label20.Caption:='Emitente'
  else if Table1.FieldByName('TrTipo').Text='2' then Label20.Caption:='Destinatário'
  else begin
     ShowMessage('Opção Inválida!'+#13+'1 - Emitente, 2 - Destinatário');
     DBEdit21.SetFocus;
  end;
end;

procedure TFFiNota.DBEdit22Exit(Sender: TObject);
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

procedure TFFiNota.SBP6Click(Sender: TObject);
begin
  fPqCarreto; xpqpesq:=6; TPesq.Enabled:=True;
end;

procedure TFFiNota.DBEdit6Exit(Sender: TObject);
begin
  if vkey=13 then begin vkey:=0;
    if fTra(3,['Select Obs1,Obs2 From CadDados Where Codigo=0'+Table1.FieldByName('DadosCod').Text+' and '+xFiltro1],1) then begin
       Memo1.Lines.Clear;
       Memo1.Lines.Add(dm.qrSqlTra.Fields[0].Text+dm.qrSqlTra.Fields[1].Text);
       Memo1.SetFocus;
    end else SBP4.OnClick(Sender);
  end;
end;

procedure TFFiNota.SBP4Click(Sender: TObject);
begin
  fPqAdicionais; xpqpesq:=8; TPesq.Enabled:=True;
end;

procedure TFFiNota.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     vkey:=0;
     TPesq.Enabled:=False;
     if xpqpesq=0 then begin
       Table1.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit2.SetFocus;
     end
     else if xpqpesq=3 then begin
       Table2.FieldByName('Codigo').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBGrid1.SetFocus; DBGrid1.SelectedIndex:=0;
     end
     else if xpqpesq=4 then begin
       Table1.FieldByName('FreteCod').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit10.SetFocus;
     end
     else if xpqpesq=6 then begin
       Table1.FieldByName('TrCod').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit22.SetFocus;
     end
     else if xpqpesq=7 then begin
       Table3.FieldByName('BanCod').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBGrid2.SetFocus; DBGrid2.SelectedIndex:=2;
     end
     else if xpqpesq=8 then begin
       Table1.FieldByName('DadosCod').asInteger:=FPesq.qrPesq.Fields[0].asInteger;
       DBEdit6.SetFocus;
     end
     else if xpqpesq=-1 then begin
        Table1.Locate('Lanc',FPesq.qrPesq.Fields[5].asInteger,[]);
        fMostra;
     end;
  end;
end;

//Produto
procedure TFFiNota.DBGrid1Enter(Sender: TObject);
begin
  Table2.Edit;
  DBGrid1.SelectedIndex:=0;
end;

procedure TFFiNota.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if DBGrid1.SelectedIndex<>7 then DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1
    else DBGrid1.SelectedIndex:=0;
  end;
end;

procedure TFFiNota.DBGrid1ColExit(Sender: TObject);
var vtab2:String;
begin
  Table2.Edit;
  Table2.FieldByName('EmpreCod').asInteger:=xEmp;
  Table2.FieldByName('AcesoCod').asInteger:=xAce;
  Case DBGrid1.SelectedIndex of
    0: begin
         if Copy(Table2.FieldByName('Codigo').Text,1,3)='999' then begin
            Table2.Delete; fCalcPedi; DBComboBox1.SetFocus; Abort;
         end;
         if dm.qrSql3.FieldByName('Item').Text='P' then vtab2:='CadProdu'
         else vtab2:='CadMerca';
         if fTra(1,['Select * From '+vtab2+' Where Codigo=0'+Table2.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
            Table2.FieldByName('Lancit').Value:=frGenerator('NFVENDCO','LANCIT',1);
            Table2.FieldByName('Lanc').Value:=Table1.FieldByName('Lanc').Value;
            Table2.FieldByName('Data').Value:=Table1.FieldByName('Data').Value;
            Table2.FieldByName('Cliente').Value:=Table1.FieldByName('Codigo').Value;
            Table2.FieldByName('Codigo').Value:=dm.qrSqlTra.FieldByName('Codigo').Value;
            Table2.FieldByName('Descricao').Text:=dm.qrSqlTra.FieldByName('Descricao').Text;
            Table2.FieldByName('Unidade').Text:=dm.qrSqlTra.FieldByName('Unidade').Text;
            Table2.FieldByName('PesoLiq').AsFloat:=dm.qrSqlTra.FieldByName('PesoLiq').AsFloat;
            Table2.FieldByName('PesoBru').AsFloat:=dm.qrSqlTra.FieldByName('PesoBru').AsFloat;
            if vtab2='CadMerca' then begin
               Table2.FieldByName('Vencto').Value:=dm.qrSqlTra.FieldByName('Vencto').Value;
               Table2.FieldByName('GrupoCod').asInteger:=dm.qrSqlTra.FieldByName('GrupoCod').asInteger;
               Table2.FieldByName('VlrDesc').AsFloat:=dm.qrSqlTra.FieldByName('Desc1').AsFloat;
            end else Table2.FieldByName('GrupoCod').asInteger:=dm.qrSqlTra.FieldByName('VarieCod').asInteger;
            Table2.FieldByName('Unit').AsFloat:=dm.qrSqlTra.FieldByName('Venda1').AsFloat;
            if dm.qrSql3.FieldByName('Tipo').Text='E' then begin
               Table2.FieldByName('Unit').AsFloat:=dm.qrSqlTra.FieldByName('Percus').AsFloat;
               Table2.FieldByName('Vencto').Value:=Table1.FieldByName('Data').Value;
               Table2.FieldByName('VlrDesc').AsFloat:=0;
            end;
            DBGrid1.SelectedIndex := 3;
         end else begin
            if dm.qrSql3.FieldByName('Item').Text='P' then fpqProduto
            else fpqMercadoria;
            xpqpesq:=3;
            TPesq.Enabled:=True;
         end;
       end;
    5: begin
         if Table2.FieldByName('Unit').AsFloat>0 then begin
           Table2.FieldByName('Valor').AsFloat:=Table2.FieldByName('Qtde').AsFloat*
                                                Table2.FieldByName('Unit').AsFloat;
           Table2.FieldByName('RUnit').AsFloat:=Table2.FieldByName('Unit').AsFloat-
                                                Table2.FieldByName('VlrDesc').AsFloat;
          Table2.FieldByName('RValor').AsFloat:=Table2.FieldByName('Qtde').AsFloat*
                                                Table2.FieldByName('RUnit').AsFloat;
         end;
       end;
    7: begin
         fCalcPedi; Table2.Next;
         if Table2.Eof then Table2.Append;
         DBGrid1.SelectedIndex := 0;
       end;
  end;
end;

procedure TFFiNota.Excluir1Click(Sender: TObject);
begin
  if frExcl then Table2.Delete;
end;

procedure TFFiNota.fCalcPedi;
begin
  if not SB4.Enabled then Exit;
  Table2.Edit; Table2.Post;
  fSql(1,1,['Select Sum(Valor), Sum(VlrDesc*Qtde) From nfVendCo',
            'Where Lanc='+Table1.Fields[0].Text+' and '+xFiltro1],2);
  Table1.Edit;
  Table1.FieldByName('VlrProduto').Value:=dm.qrSql1.Fields[0].asFloat;
  Table1.FieldByName('VlrDesc').Value:=dm.qrSql1.Fields[1].asFloat;
end;

//forma de pagto.
procedure TFFiNota.DBGrid2Enter(Sender: TObject);
begin
  Table3.Edit;
  DBGrid2.SelectedIndex:=1;
end;

procedure TFFiNota.DBGrid2ColExit(Sender: TObject);
begin
  Table3.Edit;
  Table3.FieldByName('EmpreCod').asInteger:=xEmp;
  Table3.FieldByName('AcesoCod').asInteger:=xAce;
  Case DBGrid2.SelectedIndex of
    0: begin
         if Copy(Table3.FieldByName('Parc').Text,1,3)='999' then begin
            Table3.Delete; DBEdit21.SetFocus; Abort;
         end;
         Table3.FieldByName('Lanc').Value:=Table1.FieldByName('Lanc').Value;
         Table3.FieldByName('Lancit').Value:=frGenerator('FIPAVE','LANCIT',1);
       end;
    3: begin
         if Table3.FieldByName('BanCod').Value>2 then begin
            ShowMessage('Lançamento não aceito...');
            DBGrid2.SelectedIndex:=2; exit;
         end;
         if not fTra(1,['Select Descricao From CadBanco Where Codigo=0'+Table3.FieldByName('BanCod').Text+' and '+xFiltro1],1) then begin
            fPqBanco; xpqpesq:=7; TPesq.Enabled:=True;
         end;
       end;
    5: begin
         Table3.Fields[5].Value:=Table3.Fields[3].Value;
         Table3.Post; Table3.Next;
         if Table3.Eof then begin
           Table3.Append;
           DBGrid2.SelectedIndex := 0;
         end;
       end;
  end;
end;

procedure TFFiNota.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
     if DBGrid2.SelectedIndex<>5 then DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1
     else DBGrid2.SelectedIndex:=0;
  end;
end;

procedure TFFiNota.DBGrid2Exit(Sender: TObject);
var vpar:Integer;
begin
  Table3.Refresh;
  vpar:=0; Table3.First;
  while not Table3.Eof do begin
     vpar:=vpar+1;
     Table3.Edit;
     Table3.FieldByName('Parc').asInteger:=vpar;
     Table3.Post;
     Table3.Next;
     if vpar>10 then exit;
  end;
end;

procedure TFFiNota.Excluir2Click(Sender: TObject);
begin
  if frExcl then Table3.Delete;
end;

procedure TFFiNota.Memo1Exit(Sender: TObject);
begin
  if vKey=13 then begin vKey:=0; if frSalv then Novo1Click(SB4); end;
end;

//Integração
procedure TFFiNota.fSSalvar(vTipo:Boolean);
var vLanc:Integer; vreduz,vban,vdoc,vbb,vdd:String;
begin
  if vTipo then begin
     fSql(1,1,['Delete From FiBaiRec Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
     fSql(1,1,['Delete From CxBanco Where LancVen='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
     vban:=Memo1.Lines.Text;
     Table1.Edit;
     Table1.FieldByName('EmpreCod').asInteger:=xEmp;
     Table1.FieldByName('AcesoCod').asInteger:=xAce;
     Table1.FieldByName('Obs2').Text:=Copy(vban,1,100);
     Table1.FieldByName('Obs3').Text:=Copy(vban,101,100);
     Table1.FieldByName('Obs4').Text:=Copy(vban,201,100);
     Table1.FieldByName('Obs5').Text:=Copy(vban,301,100);
     if Table1.FieldByName('Nota').asInteger<1 then begin
        Table1.FieldByName('Nota').asInteger:=fBus(1,['Select Max(Nota) From nfVenda'+' Where '+xFiltro1],1)+1;
        Table1.FieldByName('NSUNUM').asInteger:=ffLancNSU;
        Table1.FieldByName('NSUDAT').Value:=Date;
        Table1.FieldByName('NSUHOR').Text:=TimeToStr(Time);
     end;
     Table1.Post;
     Table1.Refresh;
     if dm.qrSql3.FieldByName('Financeiro').Text='S' then begin
        Table3.DisableControls;
        Table3.First;
        while not Table3.Eof do begin
          if Table3.FieldByName('BanCod').Value=0 then begin
             fIntContas('FiBaiRec',Table1.FieldByName('Lanc').Text,
                      frPree(Table1.FieldByName('Nota').Value,6,'0',0),
                      Table1.FieldByName('Codigo').Text,
                      Table1.FieldByName('Descricao').Text,
                      frInvD(Table1.FieldByName('Data').Value),
                      frInvV(Table3.FieldByName('Valor').Value),
                      frInvD(Table3.FieldByName('Vencto').Value),
                      Table3.FieldByName('Parc').Text);
           end else begin
              vban:=fBus(1,['Select Descricao From CadBanco Where Codigo=0'+Table3.FieldByName('BanCod').Text+' and '+xFiltro1],1);
              vLanc:=fBus(1,['Select Max(Lanc) From CxBanco'+' Where '+xFiltro1],1)+1;
              vreduz:=Table1.FieldByName('Codigo').Text;
              if Table3.FieldByName('BanCod').asInteger=1 then begin
                 vdoc:='N.F. '+frPree(Table1.FieldByName('Nota').Value,6,'0',0);
                 vbb:='S'; vdd:=frInvD(Table1.FieldByName('Data').Value);
                 vreduz:='0';
              end else if Table3.FieldByName('BanCod').Value=2 then begin
                 vdoc:='CH '+Table3.FieldByName('BanDoc').Text;
                 vbb:='N'; vdd:='Null'; vreduz:='0';
              end else begin
                 vdoc:='N.F. '+frPree(Table1.FieldByName('Nota').Value,6,'0',0);
                 vbb:='S'; vdd:=frInvD(Table1.FieldByName('Data').Value);
              end;
              fIntCaixa(Table1.FieldByName('Lanc').Text,'0',IntToStr(vLanc),
                        frInvD(Table1.FieldByName('Data').Value),'E',
                        Table3.FieldByName('BanCod').Text,vban,
                        frInvD(Table3.FieldByName('Vencto').Value),
                        frInvV(Table3.FieldByName('Valor').Value),
                        frInvV(Table3.FieldByName('Valor').Value),
                        Table1.FieldByName('Descricao').Text,'0',' ',
                        'N.F.Venda nº '+frPree(Table1.FieldByName('Nota').Value,6,'0',0)+' '+
                        Table3.FieldByName('BanEmi').Text,vdoc,
                        vbb,vdd,Table1.FieldByName('Codigo').Text,vreduz);
           end;
           Table3.Next;
        end;
        Table3.EnableControls;
     end;
  end
  else begin
     if vtag<>2 then begin
       fSql(1,1,['Delete From FiPave Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
       fSql(1,1,['Delete From nfVendCo Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
       fSql(1,1,['Delete From FiBaiRec Where Lanc='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
       fSql(1,1,['Delete From CxBanco Where LancVen='+Table1.FieldByName('Lanc').Text+' and '+xFiltro1],1);
       Table1.Delete;
     end;
  end;
end;

procedure TFFiNota.NotaFiscal1Click(Sender: TObject);
var vfor,vdes,vnot,vtab:String; vCC:Integer;
begin
  vfor:=IntToStr(TComponent(Sender).Tag);
  if vfor='1' then begin
    if qrNota<>Nil then qrNota.Destroy; Application.CreateForm(TqrNota, qrNota);
    with rlNota.qrNota do begin //Faturas
      QRLabel7.Caption:='000'; QRLabel8.Caption:=''; QRLabel17.Caption:='';
      if dm.qrSql3.FieldByName('Tipo').Text='S' then QRLabel8.Caption:='X'
      else QRLabel17.Caption:='X';
      if dm.qrSql3.FieldByName('IcmsTipo').Text='Calculado' then begin
        if fTra(1,['Select Icms,IcmsFre From CadEstad Where UF='+QuotedStr(Table1.FieldByName('Estado').Text)+' and '+xFiltro1],1) then begin
          QRLabel5.Caption:=FloatToStrF(dm.qrSqlTra.Fields[0].asFloat,ffFixed,10,0)+'%';
          QRLabel2.Caption:=FloatToStrF(dm.qrSqlTra.Fields[1].asFloat,ffFixed,10,0)+'%';
        end;
      end else QRLabel5.Caption:=Copy(dm.qrSql3.FieldByName('IcmsTipo').Text,1,5);
      if Table1.FieldByName('VlrFrete').Value>0 then begin
        QRLabel2.Caption:='Frete: '+FloatToStrF(Table1.FieldByName('VlrFrete').asFloat,ffCurrency,10,2)+
                          '   B.Cálculo: '+FloatToStrF(Table1.FieldByName('VlrFrete').asFloat-
                                          (Table1.FieldByName('VlrFrete').asFloat*20/100),ffCurrency,10,2)+
                          '   Aliq.:  '+QRLabel2.Caption+
                          '   ICMS: '+FloatToStrF(Table1.FieldByName('VlrIcmsFre').asFloat,ffCurrency,10,2);
      end else QRLabel2.Caption := '';
      QRLabel9.Caption:=Table1.FieldByName('FRETEDES').Text;
//Parcelas
      vNot:=frPree(Table1.Fields[2].Value,6,'0',0); vdes:='  ';
      Table3.First;
      while not Table3.Eof do begin
          if Trim(Table3.Fields[1].Text)='4' then vdes:=vdes+'. ';
          if Trim(Table3.Fields[1].Text)='7' then vdes:=vdes+'. ';
          if Trim(Table3.Fields[1].Text)='10' then vdes:=vdes+'. ';
          if Table3.FieldByName('Bancod').Value=1 then
             vdes:=vNot+'/0       '+frPree(FloatToStrF(Table3.FieldByName('Valor').AsFloat,ffCurrency,14,2),14,' ',0)+
                   '        À  VISTA         '
          else vdes:=vdes+frPree(vNot+'/'+Trim(Table3.Fields[1].Text)+
                     '          '+frPree(FloatToStrF(Table3.FieldByName('Valor').AsFloat,ffCurrency,17,2),17,' ',1)+
                     '  '+DateToStr(Table3.FieldByName('Vencto').Value),62,' ',1);
          Table3.Next;
      end;
      QRRichText1.Lines.Clear;
      QRRichText1.Lines.Add(vdes);
      if Table3.RecordCount>3 then QRRichText1.Top:=158
      else QRRichText1.Top:=170;
//Desconto
      if Table1.FieldByName('VlrDesc').AsFloat>0 then
         QRLabel13.Caption:='Desconto:    '+FloatToStrF(Table1.FieldByName('VlrDesc').AsFloat,ffCurrency,14,2)
      else QRLabel13.Caption:='';
//volumes
      QRLabel18.Caption:=Table1.FieldByName('QtdEsp').Text;
//cabecalho
      if dm.qrSql3.FieldByName('Razao').Text='C' then vtab:='CadClien Where '
      else if dm.qrSql3.FieldByName('Razao').Text='P' then begin
        if dm.qrSql3.FieldByName('Tipo').Text='E' then vtab:='CadForne Where Cooper='+QuotedStr('S')+' and '
        else vtab:='CadClien Where Cooper='+QuotedStr('S')+' and '
      end else if dm.qrSql3.FieldByName('Razao').Text='F' then vtab:='CadForne Where ';
      if fTra(1,['Select * From '+vtab+' Codigo=0'+Table1.FieldByName('Codigo').Text+' and '+xFiltro1],1) then begin
         QRLabel19.Caption:=dm.qrSqlTra.FieldByName('Endereco').Text;
         QRLabel20.Caption:=dm.qrSqlTra.FieldByName('CidadeDes').Text;
         QRLabel21.Caption:=dm.qrSqlTra.FieldByName('Bairro').Text;
         QRLabel22.Caption:=dm.qrSqlTra.FieldByName('Cpf').Text;
         QRLabel23.Caption:=dm.qrSqlTra.FieldByName('Fone').Text;
         QRLabel24.Caption:=dm.qrSqlTra.FieldByName('Cep').Text;
         QRLabel25.Caption:=dm.qrSqlTra.FieldByName('Estado').Text;
         QRLabel26.Caption:=dm.qrSqlTra.FieldByName('Doc').Text;
      end;
      qrLabel6.Caption:=fBus(3,['Select Descricao From CadNatur Where Codigo=0'+frInvS(Table1.FieldByName('Naturcod').Text)+' and '+xFiltro1],1);
      if fTra(1,['Select Estado,CPF From CadTrans Where Codigo=0'+Table1.FieldByName('TRCod').Text+' and '+xFiltro1],1) then begin
         QRLabel27.Caption:=dm.qrSqlTra.Fields[0].Text;
         QRLabel28.Caption:=dm.qrSqlTra.Fields[1].Text;
      end;
//Imprimir
      qrEstoqCom.Close; qrEstoque.Close;
      qrEstoque.Sql.Strings[1]:='From nfVenda';
      qrEstoque.Sql.Strings[2]:='Where Lanc='+Table1.Fields[0].AsString+' and '+xFiltro1;
      qrEstoque.Open;
      qrEstoqCom.Sql.Strings[0]:='Select Codigo,Descricao as vDes,Unidade,Qtde,Unit as vunit,Valor';
      qrEstoqCom.Sql.Strings[1]:='From nfVendCo';
      qrEstoqCom.Sql.Strings[2]:='Where Lanc='+qrEstoque.Fields[0].AsString+' and '+xFiltro1;
      qrEstoqCom.Open;
      PrinterSettings.PrinterIndex := fImpr('Imp1');
      Preview;
    end
  end else if vfor='2' then begin
    if qrBoleto<>Nil then qrBoleto.Destroy; Application.CreateForm(TqrBoleto, qrBoleto);
    vfor:=frImpu(0,'Qual Banco...','0');
    if vfor='0' then exit;
    if not fTra(1,['Select * From CadBanco Where Codigo=0'+vfor+' and '+xFiltro1],1) then Exit;
    with rlBoleto.qrBoleto do begin //Faturas
      qrConta.Close;
      qrConta.Sql.Strings[2]:='Where (ff.Lanc=nn.Lanc) and nn.Lanc='+Table1.Fieldbyname('Lanc').Text;
      qrConta.Open;
      if qrConta.RecordCount=0 then begin
         Showmessage('Boleto não Encontrado!');
         Exit;
      end;
      if fTra(1,['Select * From CadBolet Where Lanc=0'+vfor],1) then begin
        QRBand1.Height:=dm.qrSqlTra.FieldByName('L7').asInteger;
        QRDBText1.Top:=dm.qrSqlTra.FieldByName('L1').asInteger;
        QRDBText1.Left:=dm.qrSqlTra.FieldByName('C1').asInteger;
        QRDBText2.Top:=dm.qrSqlTra.FieldByName('L2').asInteger;
        QRDBText2.Left:=dm.qrSqlTra.FieldByName('C2').asInteger;
        QRDBText3.Top:=dm.qrSqlTra.FieldByName('L2').asInteger;
        QRDBText3.Left:=dm.qrSqlTra.FieldByName('C3').asInteger;
        QRLabel12.Top:=dm.qrSqlTra.FieldByName('L2').asInteger;
        QRLabel12.Left:=dm.qrSqlTra.FieldByName('C3').asInteger+40;
        QRDBText4.Top:=dm.qrSqlTra.FieldByName('L2').asInteger;
        QRDBText4.Left:=dm.qrSqlTra.FieldByName('C3').asInteger+44;
        QRLabel8.Top:=dm.qrSqlTra.FieldByName('L3').asInteger;
        QRLabel8.Left:=dm.qrSqlTra.FieldByName('C6').asInteger;
        QRLabel4.Top:=dm.qrSqlTra.FieldByName('L4').asInteger;
        QRLabel4.Left:=dm.qrSqlTra.FieldByName('C7').asInteger;
        QRLabel6.Top:=dm.qrSqlTra.FieldByName('L4').asInteger+17;
        QRLabel6.Left:=dm.qrSqlTra.FieldByName('C7').asInteger;
//        QRLabel10.Top:=dm.qrSqlTra.FieldByName('L4').asInteger+34;
//        QRLabel10.Left:=dm.qrSqlTra.FieldByName('C7').asInteger;
        QRLabel11.Top:=dm.qrSqlTra.FieldByName('L5').asInteger+17;
        QRLabel11.Left:=dm.qrSqlTra.FieldByName('C7').asInteger;
        QRLabel1.Top:=dm.qrSqlTra.FieldByName('L6').asInteger;
        QRLabel1.Left:=dm.qrSqlTra.FieldByName('C9').asInteger;
        QRLabel2.Top:=dm.qrSqlTra.FieldByName('L6').asInteger+17;
        QRLabel2.Left:=dm.qrSqlTra.FieldByName('C9').asInteger;
        QRLabel3.Top:=dm.qrSqlTra.FieldByName('L6').asInteger+34;
        QRLabel3.Left:=dm.qrSqlTra.FieldByName('C9').asInteger;
        QRLabel7.Top:=dm.qrSqlTra.FieldByName('L6').asInteger+17;
        QRLabel7.Left:=dm.qrSqlTra.FieldByName('C5').asInteger;
        QRLabel9.Top:=dm.qrSqlTra.FieldByName('L6').asInteger+34;
        QRLabel9.Left:=dm.qrSqlTra.FieldByName('C5').asInteger;
        QRLabel5.Top:=dm.qrSqlTra.FieldByName('L6').asInteger+34;
      end;
      fSql(1,1,['Select * From CadCobra'],1);
      vblper:=dm.qrSql1.FieldByName('Juro').asFloat;
      vblmul:=dm.qrSql1.FieldByName('Multa').asFloat;
      vblli1:=dm.qrSql1.FieldByName('Linha1').Text;
      vblli2:=dm.qrSql1.FieldByName('Linha2').Text;
//      QRLabel10.Caption:=dm.qrSql1.FieldByName('Linha3').Text;
      QRLabel11.Caption:=dm.qrSql1.FieldByName('Linha5').Text;
      PrinterSettings.PrinterIndex:=fImpr('Imp1');
      Preview;
    end;
  end else if vfor='3' then begin
    vfor:=frImpu(0,'Data-CFOC nº  ex.:( 01/01/2005-100001 )',Table1.FieldByName('Obs1').Text);
    Table1.Edit;
    Table1.FieldByName('Obs1').Text:=vfor;
    Table1.Post;
    if qrPermisao<>Nil then qrPermisao.Destroy; Application.CreateForm(TqrPermisao, qrPermisao);
    with rlPermisao.qrPermisao do begin //Faturas
      qrRec.Close;
      qrRec.Sql.Strings[2]:='Where nf.Codigo=cc.Codigo and Lanc='+Table1.Fieldbyname('Lanc').Text;
      qrRec.Open;
      PrinterSettings.PrinterIndex:=fImpr('Imp1');
      qrLabel6.Caption:=Copy(vfor,1,10);
      qrLabel8.Caption:=Trim(Copy(vfor,12,20));
      Preview;
    end;
  end else if vfor='4' then begin
    if qrPromissoria<>Nil then qrPromissoria.Destroy; Application.CreateForm(TqrPromissoria, qrPromissoria);
    with rlPromis.qrPromissoria do begin //Faturas
      Table3.Last;
      QRRichText1.Lines.Clear;
      QRLabel12.Caption:=frPree(Table1.FieldByName('Nota').asInteger,6,'0',0);
      QRLabel18.Caption:=Table3.FieldByName('Vencto').Text;
      QRLabel19.Caption:=FloatToStrF(Table1.FieldByName('VlrNota').asFloat,ffCurrency,10,2);
      QRLabel20.Caption:='Dias '+frMesExt(Table3.FieldByName('Vencto').Text);
      QRLabel21.Caption:=dm.TEmpresa.FieldByName('Descricao').Text;
      QRLabel22.Caption:=dm.TEmpresa.FieldByName('CPF').Text;
      QRRichText1.Lines.Add('('+frExte(Table1.FieldByName('VlrNota').asFloat)+').x. x. x. x. x. x. x. x. x. x. x. x. x. x. x. x.');
      QRLabel23.Caption:=Table1.FieldByName('Data').Text;
      fTra(1,['Select Descricao,Cpf,Endereco,Bairro,Cep,CidadeDes,Estado From CadClien Where Codigo=0'+Table1.FieldByName('Codigo').Text+' and '+xFiltro1],1);
      QRLabel24.Caption:=dm.qrSqlTra.Fields[0].Text;
      QRLabel25.Caption:=dm.qrSqlTra.Fields[1].Text;
      QRLabel26.Caption:=Trim(dm.qrSqlTra.Fields[2].Text)+' - '+Trim(dm.qrSqlTra.Fields[3].Text)
                         +' - '+Trim(dm.qrSqlTra.Fields[4].Text)+' - '+Trim(dm.qrSqlTra.Fields[5].Text)
                         +' - ('+dm.qrSqlTra.Fields[6].Text+')';
      Preview;
    end;
  end else if vfor='5' then begin
    if qrReceita<>Nil then qrReceita.Destroy; Application.CreateForm(TqrReceita, qrReceita);
    with rlReceita.qrReceita do begin //Faturas
      if Table1.FieldByName('Receita').asInteger=0 then begin
         fSql(1,1,['Select Max(Receita) From nfVenda'],1);
         Table1.Edit;
         Table1.FieldByName('Receita').Value:=dm.qrSql1.Fields[0].asInteger+1;
         Table1.Post;
      end;
      qrRec.Close;
      qrRec.Sql.Strings[2] := 'Where Lanc='+Table1.Fieldbyname('Lanc').Text;
      qrRec.Open;
      if qrRec.RecordCount = 0 then begin
         Showmessage('Receituário não Encontrado!');
         Exit;
      end;
      qrRecCom.Close;
      qrRecCom.Sql.Strings[2] := 'Where Lanc='+Table1.Fieldbyname('Lanc').Text;
      qrRecCom.Open;
      qrCliente.Close;
      qrCliente.Sql.Strings[2] := 'Where Codigo='+Table1.Fieldbyname('Codigo').Text;
      qrCliente.Open;
      qrTecni.Close; qrTecni.Open;
      qrProduto.Close; qrProduto.Open;
      PrinterSettings.PrinterIndex := fImpr('Imp2');
      Preview;
    end;
  end;
end;

end.
