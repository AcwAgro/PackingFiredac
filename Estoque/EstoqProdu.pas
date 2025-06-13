unit EstoqProdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, RzPanel;

type
  TFEstoqProdu = class(TForm)
    PopupMenu1: TPopupMenu;
    Salva1: TMenuItem;
    Cancela1: TMenuItem;
    Pesquisa1: TMenuItem;
    TPesq: TTimer;
    DataSource1: TDataSource;
    Table1: TTable;
    N1: TMenuItem;
    Primeiro1: TMenuItem;
    Anterior1: TMenuItem;
    Prximo1: TMenuItem;
    ltimo1: TMenuItem;
    DataSource2: TDataSource;
    qrMerca: TQuery;
    qrMercaLANC: TIntegerField;
    qrMercaDATA: TDateTimeField;
    qrMercaCODIGO: TIntegerField;
    qrMercaPRODUTO: TIntegerField;
    qrMercaGRUPOCOD: TIntegerField;
    qrMercaTIPO: TStringField;
    qrMercaDOC: TStringField;
    qrMercaQTDEENT: TFloatField;
    qrMercaPRECOENT: TFloatField;
    qrMercaVLRMEDENT: TFloatField;
    qrMercaVALORENT: TFloatField;
    qrMercaQTDESAI: TFloatField;
    qrMercaPRECOSAI: TFloatField;
    qrMercaVLRMEDSAI: TFloatField;
    qrMercaVALORSAI: TFloatField;
    qrMercaQTDESAL: TFloatField;
    qrMercaPRECOSAL: TFloatField;
    qrMercaVLRMEDSAL: TFloatField;
    qrMercaVALORSAL: TFloatField;
    qrMercaNOME: TStringField;
    qrMercaPRODDES: TStringField;
    qrMercaPROC: TStringField;
    qrMercaEMPRECOD: TIntegerField;
    qrMercaACESOCOD: TIntegerField;
    TEstoque: TTable;
    DSEstoque: TDataSource;
    TEstoqueLANC: TIntegerField;
    TEstoqueDATA: TDateTimeField;
    TEstoqueCODIGO: TIntegerField;
    TEstoquePRODUTO: TIntegerField;
    TEstoqueGRUPOCOD: TIntegerField;
    TEstoqueTIPO: TStringField;
    TEstoqueDOC: TStringField;
    TEstoqueQTDEENT: TFloatField;
    TEstoquePRECOENT: TFloatField;
    TEstoqueVLRMEDENT: TFloatField;
    TEstoqueVALORENT: TFloatField;
    TEstoqueQTDESAI: TFloatField;
    TEstoquePRECOSAI: TFloatField;
    TEstoqueVLRMEDSAI: TFloatField;
    TEstoqueVALORSAI: TFloatField;
    TEstoqueQTDESAL: TFloatField;
    TEstoquePRECOSAL: TFloatField;
    TEstoqueVLRMEDSAL: TFloatField;
    TEstoqueVALORSAL: TFloatField;
    TEstoqueNOME: TStringField;
    TEstoquePRODDES: TStringField;
    TEstoquePROC: TStringField;
    TEstoqueEMPRECOD: TIntegerField;
    TEstoqueACESOCOD: TIntegerField;
    RzPanel1: TRzPanel;
    PMenu: TPanel;
    SB6: TSpeedButton;
    sbImprime: TSpeedButton;
    Label1: TLabel;
    SB5: TSpeedButton;
    SB3: TSpeedButton;
    SB1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    PDados: TPanel;
    SBB1: TSpeedButton;
    SBB2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    POpcao: TPanel;
    SB7: TSpeedButton;
    lblCod: TLabel;
    Label4: TLabel;
    meCodigo: TMaskEdit;
    ED44: TDateTimePicker;
    ED4: TDateTimePicker;
    PAno: TPanel;
    SpeedButton3: TSpeedButton;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    MEAno: TMaskEdit;
    procedure Novo1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBB1Click(Sender: TObject);
    procedure SBB2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Table1AfterScroll(DataSet: TDataSet);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
  private
    procedure fMostra;
    procedure fImprimir;
    procedure fReprocessa;
    procedure FResumo;
    procedure FImportar;
  public
  end;

var
  FEstoqProdu: TFEstoqProdu;
  vkey,vtag:Integer;

implementation

uses Menu, Rotina, Data, Pesq, rlEstMerca, rlEstMercaRes, rlEstMercaQtde;

{$R *.DFM}

procedure TFEstoqProdu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FEstoqProdu);
end;

procedure TFEstoqProdu.FormCreate(Sender: TObject);
begin
  Ed4.DateTime  := StrToDate('01/01/'+xAno);
  Ed44.DateTime := StrToDate('31/12/'+xAno);
  MEAno.Text:=xAno;
end;

procedure TFEstoqProdu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFEstoqProdu.FormActivate(Sender: TObject);
begin
  if not Table1.Active then Table1.Open;
  if Table1.Filter<>'EmpreCod='+IntToStr(xEmp) then begin
     Table1.Filter:='EmpreCod='+IntToStr(xEmp);
     fMostra;
  end;
end;

procedure TFEstoqProdu.fMostra;
begin
  qrMerca.Close;
  qrMerca.Sql.Strings[1]:='From EstFruta';
  if Table1.RecordCount>0 then qrMerca.Sql.Strings[2]:='Where Produto=0'+Table1.FieldByName('Codigo').Text
  else qrMerca.Sql.Strings[2]:='Where Produto=0';
  qrMerca.Open;
//  DBGrid2.SetFocus;
end;

procedure TFEstoqProdu.Novo1Click(Sender: TObject);
var vlan:Integer;
begin
  Case TComponent(Sender).Tag of
     1: begin
          fSql(4,1,['Select Max(Lanc) From EstFruta'],1);
          vLan:=dm.qrSql1.Fields[0].asInteger+1;
          TEstoque.Close;
          TEstoque.TableName:='EstFruta';
          TEstoque.Filter:='Lanc='+IntToStr(vLan);
          TEstoque.Filtered:=True;
          TEstoque.Open;
          TEstoque.Append;
          TEstoque.FieldByName('Lanc').asInteger:=vLan;
          TEstoque.FieldByName('Produto').asInteger:=Table1.FieldByName('Codigo').asInteger;
          TEstoque.FieldByName('ProdDes').asString:=Table1.FieldByName('Descricao').asString;
          TEstoque.FieldByName('Proc').asString:='D';
          PDados.Visible:=True;
          DBEdit3.SetFocus;
        end;
     3: begin
          if frExcl then begin
             fSql(4,1,['Delete From EstFruta',
                       'Where Lanc='+qrMerca.FieldByName('Lanc').Text],2);
             fMostra;
        end; end;
     6: begin fPqProduto; xpqpesq:=-1; TPesq.Enabled:=True; end;
     7: begin POpcao.Visible:=True; PAno.Visible:=False; vtag:=1000; end;
     8: begin POpcao.Visible:=True; PAno.Visible:=False; vtag:=2000; end;
     9: begin POpcao.Visible:=True; PAno.Visible:=False; vtag:=3000; end;
    10: begin POpcao.Visible:=False; PAno.Visible:=True; vtag:=4000; end;
    11: Table1.First;
    12: Table1.Prior;
    13: Table1.Next;
    14: Table1.Last;
  end;
  meCodigo.Visible := False;
  lblCod.Visible   := False;
  Case TComponent(Sender).Tag of
    7,8,9: begin
            meCodigo.Visible := True;
            lblCod.Visible   := True;
            meCodigo.Text    := Table1.FieldByName('Codigo').Text;
          end;
  end;
  if TComponent(Sender).Tag>10 then fMostra;
end;

procedure TFEstoqProdu.Table1AfterScroll(DataSet: TDataSet);
begin
  if Table1.RecordCount>0 then
  begin
    if (qrMerca.Sql.Strings[2] <> ('Where Produto=0'+Table1.FieldByName('Codigo').Text)) then
    begin
      fMostra;
      dbGrid1.SetFocus;
    end;
  end;
end;

procedure TFEstoqProdu.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled:=False;
     if xpqpesq=-1 then begin
       Table1.Locate('Codigo',FPesq.qrPesq.Fields[0].asInteger,[]);
       fMostra;
     end;
  end;
end;

procedure TFEstoqProdu.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
    if DBGrid2.SelectedIndex>=DBGrid2.Columns.Count-1 then begin
       DBGrid2.SelectedIndex:=0;
       qrMerca.Next;
    end else DBGrid2.SelectedIndex:=DBGrid2.SelectedIndex+1;
  end;
end;

procedure TFEstoqProdu.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFEstoqProdu.ED4Change(Sender: TObject);
begin
  if not (ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFEstoqProdu.SB7Click(Sender: TObject);
begin
  if vtag=1000 then fImprimir;
  if vtag=2000 then fReprocessa;
  if vtag=3000 then fResumo;
  if vtag=4000 then fImportar;
end;

procedure TFEstoqProdu.fImprimir;
var vper,vpro,vdat:String;
begin
  vper := IntToStr(StrToIntDef(Trim(meCodigo.Text),0));
  if Copy(vper,1,1) <> '0' then begin
     vpro:='Produto=0'+vper;
  end else begin
     vPro:='(Produto>=0 and Produto<=9999999)';
  end;
  vDat :='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
  if qrEstMerca<>Nil then qrEstMerca.Destroy; Application.CreateForm(TqrEstMerca,qrEstMerca);
  with qrEstMerca do begin
    qrLabel16.Caption:='Relação Inventário do Estoque - Periodo '+DateToStr(Ed4.Date)+' a '+DateToStr(Ed44.Date);
    qrProduto.Close;
    qrProduto.Sql.Strings[1]:='From EstFruta';
    qrProduto.Sql.Strings[2]:='Where ('+vPro+') and '+vdat;
    qrProduto.Open;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    if qrProduto.RecordCount<1 then ShowMessage('Sem Dados...')
    else Preview;
  end;
  POpcao.Visible:=False;
end;

procedure TFEstoqProdu.fResumo;
var vper,vpro,vdat:String;
begin
  vper := IntToStr(StrToIntDef(Trim(meCodigo.Text),0));
  if Copy(vper,1,1) <> '0' then begin
     vpro:='Produto=0'+vper;
  end else begin
     vPro:='(Produto>=0 and Produto<=9999999)';
  end;
  vDat :='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
  if qrEstMercaQtde<>Nil then qrEstMercaQtde.Destroy; Application.CreateForm(TqrEstMercaQtde,qrEstMercaQtde);
  with qrEstMercaQtde do begin
    qrLabel16.Caption:='Relação Inventário do Estoque - Periodo '+DateToStr(Ed4.Date)+' a '+DateToStr(Ed44.Date);
    qrProduto.Close;
    qrProduto.Sql.Strings[1]:='From EstFruta';
    qrProduto.Sql.Strings[2]:='Where ('+vPro+') and '+vdat;
    qrProduto.Open;
    PrinterSettings.PrinterIndex := fImpr('Imp2');
    if qrProduto.RecordCount<1 then ShowMessage('Sem Dados...')
    else Preview;
  end;
  POpcao.Visible:=False;
end;

procedure TFEstoqProdu.fReprocessa;
var vqtd,vtqt,vind:Double;
    vtva,vval,vmed:Real;
    vCod,vLan:Integer; vper,vpro1,vPro,vdpro,vDat,vDat1:String;
begin
  vper := IntToStr(StrToIntDef(Trim(meCodigo.Text),0));
  if Copy(vper,1,1) = '0' then
    Table1.First;

  while not Table1.Eof do
  begin
    vcod := Table1.FieldByName('Codigo').asInteger;
    vpro1:='ee.Codigo=0'+inttostr(vcod);
    vpro:='cc.ProdCod=0'+inttostr(vcod);
    vdpro:='Produto=0'+inttostr(vcod);
  {  if Ed4.Date<StrToDate('01/01/'+xAno) then begin
       ShowMessage('Data Inicial Inválida');
       Ed4.SetFocus;
       Exit;
    end;
    if Ed44.Date>StrToDate('31/12/'+xAno) then begin
       ShowMessage('Data Final Inválida');
       Ed44.SetFocus;
       Exit;
    end;}
    vmed:=0;
    vDat :='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
    vDat1 :='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
    fBar(0,1,'Aguarde...');
    fSql(4,1,['Delete From EstFruta',
              'Where Proc<>'+QuotedStr('D')+' and '+vdat1+' and '+vdpro],2);
    fSql(4,1,['Select Max(Lanc) From EstFruta'],1);
    vLan:=dm.qrSql1.Fields[0].asInteger+1;
    fSql(2,1,['Select rr.Data, rr.Lote, ff.ProdCod as ProrCod, cc.ProdCod, cc.Qtde, ff.ProdDes as ProrDes, cc.ProdDes, 0 as Preco, rr.qtdebin as rqtd, ff.qtdebin as fqtd',
              '  From Roman rr, RomanPro ff, RomanMer cc',
              ' where (ff.Lanc = rr.Lanc) and (cc.Lanc = rr.Lanc) and '+vpro+' and '+vdat1],3);
    fBar(0,dm.qrSql1.RecordCount,'');
    while not dm.qrSql1.eof do begin
      vlan:=vlan+1;
      fBar(1,dm.qrSql1.RecordCount,dm.qrSql1.Fields[6].asString+'-'+dm.qrSql1.Fields[1].asString);
      if dm.qrSql1.Fields[4].asFloat>0.00 then begin
         if dm.qrSql1.Fields[8].asFloat>0.00 then
           vind := dm.qrSql1.Fields[9].asFloat / dm.qrSql1.Fields[8].asFloat
         else
           vind := 1;

         fSql(4,2,['Insert into EstFruta',
                   ' (Tipo,Lanc,Data,Doc,Codigo,Produto,QtdeEnt,PrecoEnt,ValorEnt,Nome,ProdDes,Proc)',
                   ' Values ('+QuotedStr('E')+','+IntToStr(vlan)+
                   ','+frInvD(dm.qrSql1.Fields[0].Value)+
                   ', '+QuotedStr('Lote '+dm.qrSql1.Fields[1].asString)+
                   ', '+dm.qrSql1.Fields[2].asString+
                   ', '+dm.qrSql1.Fields[3].asString+
                   ', '+frInvV(frDeci(dm.qrSql1.Fields[4].asFloat * vind,3),3)+
                   ', '+frInvV(frDeci(dm.qrSql1.Fields[7].asFloat,2))+
                   ', '+frInvV(frDeci(dm.qrSql1.Fields[4].asFloat*dm.qrSql1.Fields[7].asFloat * vind,2))+
                   ', '+QuotedStr(dm.qrSql1.Fields[5].asString)+
                   ', '+QuotedStr(dm.qrSql1.Fields[6].asString)+
                   ', '+QuotedStr('N')+')'],3);
      end;
      dm.qrSql1.Next;
    end;
    fSql(1,1,['Select cc.Lanc, cc.Data, cc.Nota, cc.Codigo as vcc, ee.Codigo, ee.Qtde, cc.Descricao as vde, ee.Descricao as vpr, ee.Unit',
              'From nfVenda cc, nfVendCo ee',
              'Where (cc.Lanc=ee.Lanc) and (DifCod=1 or DifCod=8) and '+vpro1+' and '+vdat],3);
    fBar(0,dm.qrSql1.RecordCount,'');
    While not dm.qrSql1.eof do begin
       fBar(1,dm.qrSql1.RecordCount,dm.qrSql1.Fields[6].asString+'-'+dm.qrSql1.Fields[2].asString);
       vlan:=vlan+1;
       fSql(4,2,['Insert into EstFruta',
                 ' (Tipo,Lanc,Data,Doc,Codigo,Produto,QtdeSai,PrecoSai,ValorSai,Nome,ProdDes,Proc)',
                 ' Values ('+QuotedStr('S')+','+IntToStr(vlan)+
                 ','+frInvD(dm.qrSql1.Fields[1].Value)+
                 ', '+QuotedStr('NF. '+dm.qrSql1.Fields[2].asString)+
                 ', '+dm.qrSql1.Fields[3].asString+
                 ', '+dm.qrSql1.Fields[4].asString+
                 ', '+frInvV(frDeci(dm.qrSql1.Fields[5].AsFloat,3))+
                 ', '+frInvV(frDeci(dm.qrSql1.Fields[8].asFloat,2))+
                 ', '+frInvV(frDeci(dm.qrSql1.Fields[5].AsFloat * dm.qrSql1.Fields[8].AsFloat,2))+
                 ', '+QuotedStr(dm.qrSql1.Fields[6].asString)+
                 ', '+QuotedStr(dm.qrSql1.Fields[7].asString)+
                 ', '+QuotedStr('N')+')'],3);
       dm.qrSql1.Next;
    end;
    fBar(2,1,'');
  //Recalcula saldo
    TEstoque.Close;
    TEstoque.TableName:='EstFruta';
    TEstoque.Filtered:=False;
    TEstoque.Filter:='Produto=0'+inttostr(vcod);
    TEstoque.Filtered:=True;
    TEstoque.Open;
    //Pega última data e preço valida antes da anterior
    fSql(4,1,['Select data, vlrmedsal, count(*) From EstFruta',
              'Where Data < '+frInvD(Ed4.Date)+' and '+vdpro,
              'Group by data, vlrmedsal ',
              'Order by data desc'],4);
    vmed := 0;
    if StrToIntDef(dm.qrSql1.Fields[2].asString,0) > 0 then
    begin
      vDat1 :='(Data>='+frInvD(dm.qrSql1.Fields[0].Value)+' and Data<'+frInvD(Ed44.Date+1)+')';
      vmed := dm.qrSql1.Fields[1].asFloat;
    end;
    fSql(4,1,['Select * From EstFruta',
              'Where '+vdat1+' and '+vdpro,
              'Order by produto,data,tipo,lanc'],3);
    fBar(0,dm.qrSql1.RecordCount,'Recalculando Saldo...');
    vqtd:=0; vval:=0; vtqt:=0; vtva:=0;
    vcod:=dm.qrSql1.FieldByName('Produto').asInteger;
    fSql(4,2,['Select Max(Lanc) From EstFruta',
              'Where Produto='+IntToStr(vcod)+' and Proc='+QuotedStr('S')],2);
    vlan:=dm.qrSql2.Fields[0].asInteger;
    if vlan>0 then begin
       dm.qrSql1.Locate('Lanc',vlan,[]);
       vqtd:=dm.qrSql1.FieldByName('QtdeSal').asFloat;
       vtqt:=dm.qrSql1.FieldByName('QtdeSal').asFloat;
       vval:=dm.qrSql1.FieldByName('ValorSal').asFloat;
       vtva:=dm.qrSql1.FieldByName('ValorSal').asFloat;
       vmed:=dm.qrSql1.FieldByName('VlrMedSal').asFloat;
       dm.qrSql1.Next;
    end;
    While not dm.qrSql1.eof do begin
       fBar(1,dm.qrSql1.RecordCount,dm.qrSql1.FieldByName('ProdDes').Text);
       if dm.qrSql1.FieldByName('Tipo').Text='E' then begin
          vqtd:=vqtd+dm.qrSql1.FieldByName('QtdeEnt').asFloat;
          if dm.qrSql1.FieldByName('ValorEnt').asFloat <> 0 then
            vval:=vval+dm.qrSql1.FieldByName('ValorEnt').asFloat
          else
            vval:=vqtd * vmed;
       end;
       TEstoque.Findkey([dm.qrSql1.FieldByName('Lanc').asInteger]);
       TEstoque.Edit;
       if TEstoque.FieldByName('Tipo').Text='E' then begin
          TEstoque.FieldByName('VlrMedEnt').asFloat:=TEstoque.FieldByName('PrecoEnt').asFloat;
          vtqt:=vtqt+TEstoque.FieldByName('QtdeEnt').asFloat;
          if TEstoque.FieldByName('ValorEnt').asFloat <> 0 then
            vtva:=vtva+TEstoque.FieldByName('ValorEnt').asFloat
          else
            vtva:=vtqt * vmed;
       end
       else begin
          //Calcula média
          if vmed = 0 then
            vmed := dm.qrSql1.FieldByName('PrecoSai').asFloat
          else begin
            if dm.qrSql1.FieldByName('PrecoSai').asFloat <> 0 then
              vmed := ((vmed + dm.qrSql1.FieldByName('PrecoSai').asFloat) / 2);
          end;
          TEstoque.FieldByName('VlrMedSai').asFloat:=dm.qrSql1.FieldByName('PrecoSai').asFloat;
          TEstoque.FieldByName('ValorSai').asFloat:= dm.qrSql1.FieldByName('ValorSai').asFloat;
          vtqt:=vtqt-TEstoque.FieldByName('QtdeSai').asFloat;
          vtva:=vtqt * vmed;
       end;
       if frDeci(vtqt,3)=0 then begin
          vqtd:=0; vval:=0;
       end;

       TEstoque.FieldByName('QtdeSal').asFloat  :=frDeci(vtqt,3);
       if vmed <> 0 then
         TEstoque.FieldByName('VlrMedSal').asFloat:=frDeci(vmed,2);
       TEstoque.FieldByName('ValorSal').asFloat :=frDeci(vtva,2);
       if TEstoque.FieldByName('Proc').Text<>'D' then TEstoque.FieldByName('Proc').Text:='S';
       TEstoque.Post;
       dm.qrSql1.Next;
       if vcod<>dm.qrSql1.FieldByName('Produto').asInteger then begin
          vcod:=dm.qrSql1.FieldByName('Produto').asInteger;
          vqtd:=0; vval:=0; vtqt:=0; vtva:=0;
          fSql(4,2,['Select Max(Lanc) From EstFruta',
                    'Where Produto='+IntToStr(vcod)+' and Proc='+QuotedStr('S')],2);
          vlan:=dm.qrSql2.Fields[0].asInteger;
          if vlan>0 then begin
             dm.qrSql1.Locate('Lanc',vlan,[]);
             vqtd:=dm.qrSql1.FieldByName('QtdeSal').asFloat;
             vtqt:=dm.qrSql1.FieldByName('QtdeSal').asFloat;
             vval:=dm.qrSql1.FieldByName('ValorSal').asFloat;
             vtva:=dm.qrSql1.FieldByName('ValorSal').asFloat;
             vmed:=dm.qrSql1.FieldByName('VlrMedSal').asFloat;
             dm.qrSql1.Next;
          end;
       end;
    end;
    fBar(2,1,'');

    if Copy(vper,1,1) <> '0' then
    begin
      POpcao.Visible:=False;
      fMostra;
      exit;
    end
    else
      Table1.Next;
  end;
  POpcao.Visible:=False;
  fMostra;
end;

procedure TFEstoqProdu.SBB1Click(Sender: TObject);
begin
  TEstoque.Post;
  PDados.Visible:=False;
  TEstoque.Close;
  TEstoque.Filter:='';
  TEstoque.Filtered:=False;
  fMostra;
end;

procedure TFEstoqProdu.SBB2Click(Sender: TObject);
begin
  TEstoque.Close;
  PDados.Visible:=False;
  TEstoque.Close;
  TEstoque.Filter:='';
  TEstoque.Filtered:=False;
  fMostra;
end;

procedure TFEstoqProdu.DBEdit4Exit(Sender: TObject);
begin
  if TEstoque.FieldByName('Tipo').Text='E' then begin
     GroupBox1.Caption:=' Entrada ';
     DBEdit6.DataField:='QtdeEnt';
     DBEdit7.DataField:='PrecoEnt';
     DBEdit8.DataField:='ValorEnt';
  end else if TEstoque.FieldByName('Tipo').Text='S' then begin
     GroupBox1.Caption:=' Saída ';
     DBEdit6.DataField:='QtdeSai';
     DBEdit7.DataField:='PrecoSai';
     DBEdit8.DataField:='ValorSai';
  end
  else begin
     ShowMessage('Opção Inválida');
     DBEdit4.SetFocus;
  end;
end;

procedure TFEstoqProdu.DBEdit7Exit(Sender: TObject);
begin
  if vKey=13 then begin vkey:=0;
    if TEstoque.FieldByName('Tipo').Text='E' then
      TEstoque.FieldByName('ValorEnt').asFloat:=
               TEstoque.FieldByName('QtdeEnt').asFloat*
               TEstoque.FieldByName('PrecoEnt').asFloat
    else TEstoque.FieldByName('ValorSai').asFloat:=
                  TEstoque.FieldByName('QtdeSai').asFloat*
                  TEstoque.FieldByName('PrecoSai').asFloat;
    TEstoque.FieldByName('ValorEnt').asFloat:=frDeci(TEstoque.FieldByName('ValorEnt').asFloat,2);
    TEstoque.FieldByName('ValorSai').asFloat:=frDeci(TEstoque.FieldByName('ValorSai').asFloat,2);
    TEstoque.FieldByName('QtdeEnt').asFloat:=frDeci(TEstoque.FieldByName('QtdeEnt').asFloat,3);
    TEstoque.FieldByName('QtdeSai').asFloat:=frDeci(TEstoque.FieldByName('QtdeSai').asFloat,3);
  end;
end;

procedure TFEstoqProdu.fImportar;
var vper,vdpro,vDat:String;
begin
  vper := IntToStr(StrToIntDef(Trim(meCodigo.Text),0));
  if Copy(vper,1,1) <> '0' then begin
     Table1.Filter:='Codigo=0'+vper;
     vdpro:='Produto=0'+vper;
  end else begin
     Table1.Filter:='';
     vdPro:='(Produto>=0 and Produto<=9999999)';
  end;
  if StrToInt(MEAno.Text)>=StrToInt(xAno) then begin
     ShowMessage('Ano Inválido');
     MEAno.SetFocus;
     Exit;
  end;
  vDat :=Copy(MEAno.Text,3,2);
  fBar(0,Table1.RecordCount,'');
  While not Table1.eof do begin
     fBar(1,Table1.RecordCount,Table1.FieldByName('Descricao').asString);
     fSql(4,1,['Select * From EstFruta',
               'Where Produto=0'+Table1.FieldByName('Codigo').Text,
               'Order By Data Desc, Tipo Desc, Lanc Desc'],3);
     if dm.qrSql1.FieldByName('QtdeSal').asFloat>0 then begin
        fSql(4,2,['Insert into EstFruta',
                  ' (Tipo,Lanc,Data,Doc,Codigo,Produto,QtdeEnt,PrecoEnt,ValorEnt,Nome,ProdDes,Proc)',
                  ' Values ('+QuotedStr('E')+',1'+
                  ','+frInvD(StrToDate('02/01/'+xAno))+
                  ', '+QuotedStr(MEAno.Text)+
                  ', '+'0'+
                  ', '+dm.qrSql1.FieldByName('Produto').asString+
                  ', '+frInvV(frDeci(dm.qrSql1.FieldByName('QtdeSal').AsFloat,3))+
                  ', '+frInvV(frDeci(dm.qrSql1.FieldByName('ValorSal').AsFloat/dm.qrSql1.FieldByName('QtdeSal').AsFloat,2))+
                  ', '+frInvV(frDeci(dm.qrSql1.FieldByName('ValorSal').AsFloat,2))+
                  ', '+QuotedStr('Saldo anterior ano '+MEAno.Text)+
                  ', '+QuotedStr(dm.qrSql1.FieldByName('ProdDes').asString)+
                  ', '+QuotedStr('D')+')'],3);
     end else if dm.qrSql1.FieldByName('QtdeSal').asFloat<0 then begin
        fSql(4,2,['Insert into EstFruta',
                  ' (Tipo,Lanc,Data,Doc,Codigo,Produto,QtdeSai,PrecoSai,ValorSai,Nome,ProdDes,Proc)',
                  ' Values ('+QuotedStr('E')+',1'+
                  ','+frInvD(StrToDate('02/01/'+xAno))+
                  ', '+QuotedStr(MEAno.Text)+
                  ', '+'0'+
                  ', '+dm.qrSql1.FieldByName('Produto').asString+
                  ', '+frInvV(frDeci(dm.qrSql1.FieldByName('QtdeSal').AsFloat,3))+
                  ', '+frInvV(frDeci(dm.qrSql1.FieldByName('ValorSal').AsFloat/dm.qrSql1.FieldByName('QtdeSal').AsFloat,2))+
                  ', '+frInvV(frDeci(dm.qrSql1.FieldByName('ValorSal').AsFloat,2))+
                  ', '+QuotedStr('Saldo anterior ano '+MEAno.Text)+
                  ', '+QuotedStr(dm.qrSql1.FieldByName('ProdDes').asString)+
                  ', '+QuotedStr('D')+')'],3);
     end else if dm.qrSql1.FieldByName('QtdeSal').asFloat<0 then begin
        fSql(4,2,['Insert into EstFruta',
                  ' (Tipo,Lanc,Data,Doc,Codigo,Produto,QtdeEnt,PrecoEnt,ValorEnt,Nome,ProdDes,Proc)',
                  ' Values ('+QuotedStr('E')+',1'+
                  ','+frInvD(StrToDate('02/01/'+xAno))+
                  ', '+QuotedStr(MEAno.Text)+
                  ', '+'0'+
                  ', '+dm.qrSql1.FieldByName('Produto').asString+
                  ', '+frInvV(frDeci(0,3))+
                  ', '+frInvV(frDeci(0,2))+
                  ', '+frInvV(frDeci(0,2))+
                  ', '+QuotedStr('Saldo anterior ano '+MEAno.Text)+
                  ', '+QuotedStr(dm.qrSql1.FieldByName('ProdDes').asString)+
                  ', '+QuotedStr('D')+')'],3);
     end;
     Table1.Next;
  end;
  fBar(2,1,'');
  Pano.Visible:=False;
  Table1.Filter:='';
  if vper<>'T' then Table1.FindKey([StrToInt(vper)])
  else Table1.First;
  fMostra;
end;


end.



