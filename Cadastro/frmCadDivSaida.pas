unit frmCadDivSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,
  Grids, DBGrids, ComCtrls, Spin, RzEdit, AppEvnts, CheckLst, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFfrmCadDivSaida = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    dsEstru: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    RzPanel1: TRzPanel;
    PDados: TPanel;
    Label8: TLabel;
    GroupBox7: TGroupBox;
    dbDetalhe: TDBGrid;
    Panel1: TPanel;
    sbExcluir: TSpeedButton;
    SB4: TSpeedButton;
    sbAtualizar: TSpeedButton;
    sbExcluirLista: TSpeedButton;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    clbCat: TCheckListBox;
    Label4: TLabel;
    Label5: TLabel;
    clbTam: TCheckListBox;
    Label7: TLabel;
    ME1: TcxCurrencyEdit;
    SBP1: TSpeedButton;
    Edit1: TEdit;
    Label11: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    ME2: TcxCurrencyEdit;
    SBP2: TSpeedButton;
    Edit2: TEdit;
    Label1: TLabel;
    rzQtde: TcxCurrencyEdit;
    sqlEstru: TFDQuery;
    sqlEstruQTDE: TBCDField;
    sqlEstruCODIGO: TIntegerField;
    sqlEstruDESCRICAO: TStringField;
    sqlEstruUNIDADE: TStringField;
    procedure SBP1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBP2Click(Sender: TObject);
    procedure ME1Exit(Sender: TObject);
    procedure ME2Exit(Sender: TObject);
    procedure SB4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure sbAtualizarClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbExcluirListaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FfrmCadDivSaida: TFfrmCadDivSaida;
  vTag,vKey:Integer;

implementation

uses Menu, Rotina, Data, Pesq;

{$R *.DFM}

procedure TFfrmCadDivSaida.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.wParam = VK_TAB) then
    vkey := 13;
end;

procedure TFfrmCadDivSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmCadDivSaida);
end;

procedure TFfrmCadDivSaida.FormCreate(Sender: TObject);
var  vc, vri:Integer;
     vtc:Array[0..999] of Integer;
     vdm, vdn: String;
     vqtde,vent,vsai,vtot:Real;
begin
  for vc := 0 to 999 do
    vtc[vc] := 0;
  //Calibre
  fSql(1,1,['Select calmeia, calnormal from cadvarie order by codigo'],1);
  while not dm.qrSql1.Eof do
  begin
    //meia caixa
    vdm := dm.qrSql1.Fields[0].asString+';';
    if (vdm <> ';') then
    begin
      vri := 1;
      for vc := 0 to Length(vdm) do
      begin
        if (vdm[vc] = ';') then
        begin
          vdn := Copy(vdm, vri, (vc - vri));
          if (StrToIntDef(vdn,999) < 999) then
            vtc[StrToInt(vdn)] := StrToInt(vdn);
          vri := vc + 1;
        end;
      end;
    end;
    //caixa normal
    vdm := dm.qrSql1.Fields[1].asString+';';
    if (vdm <> ';') then
    begin
      vri := 1;
      for vc := 0 to Length(vdm) do
      begin
        if (vdm[vc] = ';') then
        begin
          vdn := Copy(vdm, vri, (vc - vri));
          if (StrToIntDef(vdn,999) < 999) then
            vtc[StrToInt(vdn)] := StrToInt(vdn);
          vri := vc + 1;
        end;
      end;
    end;
    dm.qrSql1.Next;
  end;
  //Comercial
  vtc[305] := 305; //GG
  vtc[325] := 325; //G
  vtc[355] := 355; //M
  vtc[385] := 385; //P
  vtc[395] := 395; //PP
  clbTam.Items.Clear;
  for vc := 0 to 999 do
  begin
    if (vtc[vc] <> 0) then
      clbTam.Items.Add(IntToStr(vtc[vc]));
  end;
  //Categoria
  clbCat.Items.Clear;
  fSql(1,1,['Select codigo,descricao from cadcateg order by codigo'],1);
  while not dm.qrSql1.Eof do
  begin
    clbCat.Items.Add(frPree(dm.qrSql1.Fields[0].asString,2,'0',0)+'-'+dm.qrSql1.Fields[1].asString);
    dm.qrSql1.Next;
  end;
end;

procedure TFfrmCadDivSaida.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmCadDivSaida.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmCadDivSaida.SBP1Click(Sender: TObject);
begin
  FPQMercaEmbalagem;
  ME1.Text := xpqResul;
  ME1.SetFocus;
end;

procedure TFfrmCadDivSaida.SBP2Click(Sender: TObject);
begin
  fPqVariedade;
  ME2.Text := xpqResul;
  ME2.SetFocus;
end;

procedure TFfrmCadDivSaida.ME1Exit(Sender: TObject);
begin

  if (StrToIntDef(Trim(ME1.Text),0) = 0) then
    Exit;

  if (StrToIntDef(Trim(ME1.Text),0) > 3000) then
  begin
    ShowMessage('Código inválido.');
    Exit;
  end;
  if (StrToIntDef(Trim(ME1.Text),0) < 2000) then
  begin
    ShowMessage('Código inválido.');
    Exit;
  end;
  if fTra(1,['Select Descricao From CadMerca Where Codigo=0'+Trim(ME1.Text)],1) then
     Edit1.Text:=dm.qrSqlTra.Fields[0].Text
  else
     SBP1.OnClick(Sender);

  sbAtualizar.OnClick(sbAtualizar);

end;

procedure TFfrmCadDivSaida.ME2Exit(Sender: TObject);
begin

//  if (vkey <> 13) then Exit;

  if (Trim(ME2.Text) = '0') then
    Edit2.Text := 'Todas as variedades'
  else begin
    if fTra(1,['Select Descricao From CadVarie Where Codigo=0'+Trim(ME2.Text)],1) then
       Edit2.Text:=dm.qrSqlTra.Fields[0].Text
    else SBP2.OnClick(Sender);
  end;
end;

procedure TFfrmCadDivSaida.SB4Click(Sender: TObject);
var vvar, vcat, vtam, vwhere: String;
    vtag, vcodigo, vi: Integer;
begin
  vTag := TComponent(Sender).Tag;

  if vTag = 0 then
  begin
    if (FormatFloat('0.000', rzQtde.Value) = '0.000') or (FormatFloat('0.000', rzQtde.Value) = '0,000') then
    begin
      ShowMessage('Informe quantidade válida.');
      Exit;
    end;
  end;

  Try
    //Variedade
    vvar := Trim(ME2.Text);
    if ((Trim(ME2.Text) = '') or (Trim(ME2.Text) = '0') or (Trim(ME2.Text) = '00')) then
      vvar := '00';

      //Categoria
    vcat := '00';
    for vi := 0 to clbCat.Count - 1 do
    begin
      if (clbCat.Checked[vi]) then
        vcat := vcat + ',' + Copy(clbCat.Items[vi],1,2);
    end;

    //Calibre
    vtam := '00';
    for vi := 0 to clbTam.Count - 1 do
    begin
      if (clbTam.Checked[vi]) then
        vtam := vtam + ',' + clbTam.Items[vi];
    end;

    //condição
    vwhere := '';
    if (vVar <> '00') then
      vwhere := 'variecod in ('+vvar+')';

    if (vCat <> '00') then
    begin
      if (Trim(vwhere) = '') then
        vwhere := 'categcod in ('+vcat+')'
      else
        vwhere := vwhere + ' and categcod in ('+vcat+')';
    end;
    if (vTam <> '00') then
    begin
      if (Trim(vwhere) = '') then
        vwhere := 'calibre in ('+vtam+')'
      else
        vwhere := vwhere + ' and calibre in ('+vtam+')';
    end;
    if (Trim(vwhere) <> '') then
      vwhere := ' Where '+vwhere;

    fSql(1,1,['Select codigo from cadprodu '+vwhere,
              'Order by codigo'],2);

    if (dm.qrSql1.RecordCount = 0) then
    begin
      ShowMessage('Mercadoria não encontrado.');
      Exit;
    end;

    if vTag = 0 then
    begin
      if not frPerg('Deseja cadastrar estrutura de produto ?') then
        exit;

      fTra(1,['Select Descricao,PesoLiq,Compra,Unidade From CadMerca Where Codigo=0'+Trim(ME1.Text)],1);

      fBar(0,dm.qrSql1.RecordCount,'Inserindo estrutura...');

    end
    else begin
      if not frPerg('Deseja excluir estrutura?') then
        exit;

      fBar(0,dm.qrSql1.RecordCount,'Excluindo estrutura...');

    end;

    if not frPerg('Confirmar cadastro?') then
      exit;

    dm.qrSql1.First;
    while not dm.qrSql1.Eof do
    begin
      fBar(1,1,'');
      vcodigo := dm.qrSql1.Fields[0].asInteger;

      //Sempre excluir
      fSql(1,2,['Delete From CadProBx Where Lanc = 0'+IntToStr(vcodigo)+' and Codigo=0'+Trim(ME1.Text)],1);

      //Cadastra
      if vTag = 0 then
      begin
        fSql(1,2,['Insert Into CadProBx',
                  '(LANC, EMPRECOD, LANCIT, CODIGO, DESCRICAO, UNIDADE,'+
                  ' PESOLIQ, COMPRA, QTDE)',
                  'Values',
                  '('+inttostr(vCodigo)+','
                     +inttostr(xEmp)+','
                     +inttostr(frGenerator('CADPROBX','LANCIT',1))+','
                     +inttostr(StrToIntDef(Trim(ME1.Text),0))+','
                     +QuotedStr(dm.qrSqlTra.Fields[0].Text)+','
                     +QuotedStr(dm.qrSqlTra.Fields[3].Text)+','
                     +frInvv(dm.qrSqlTra.Fields[1].asFloat)+','
                     +frInvv(dm.qrSqlTra.Fields[2].asFloat)+','
                     +frInvv(rzQtde.Value)
                     +')'],4);
      end;

      //Proximo
      dm.qrSql1.Next;

    end;

    fBar(2,1,'');
    sbAtualizar.OnClick(sbAtualizar);
    ShowMessage('Processo Finalizado.');

  except
  End;
end;

procedure TFfrmCadDivSaida.sbAtualizarClick(Sender: TObject);
begin

  sqlEstru.Close;
  sqlEstru.ParamByName('pcod').asInteger := StrToIntDef(Trim(me1.text),0);
  sqlEstru.Open;

  GroupBox7.Caption := 'Lista ('+ IntToStr(sqlEstru.RecordCount) +')';

end;


procedure TFfrmCadDivSaida.Excluir1Click(Sender: TObject);
begin

  if not frPerg('Deseja excluir?') then
    exit;

  //Sempre excluir
  fSql(1,2,['Delete From CadProBx Where Lanc = 0'+sqlEstru.FieldByName('codigo').asString+' and Codigo=0'+Trim(ME1.Text)],1);

  sbAtualizar.OnClick(sbAtualizar);

end;

procedure TFfrmCadDivSaida.sbExcluirListaClick(Sender: TObject);
begin

  if not frPerg('Deseja excluir toda lista?') then
    exit;

  if not frPerg('Tem certeza?') then
    exit;

  //Sempre excluir

  sqlEstru.First;
  while not sqlEstru.Eof do
  begin
    fSql(1,2,['Delete From CadProBx Where Lanc = 0'+sqlEstru.FieldByName('codigo').asString+' and Codigo=0'+Trim(ME1.Text)],1);
    sqlEstru.Next;
  end;

  sbAtualizar.OnClick(sbAtualizar);

end;

end.
