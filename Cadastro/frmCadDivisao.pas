unit frmCadDivisao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, AppEvnts, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, Datasnap.Provider, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmCadDivisao = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    dsEstru: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    RzPanel1: TRzPanel;
    PDados: TPanel;
    Panel1: TPanel;
    sbAtualizar: TSpeedButton;
    SB4: TSpeedButton;
    sbExcluirLista: TSpeedButton;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    dbDetalhe: TDBGrid;
    Panel2: TPanel;
    Label7: TLabel;
    SBP1: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    SBP2: TSpeedButton;
    Label2: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Edit13: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    edNCM: TEdit;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb3: TCheckBox;
    Edit10: TEdit;
    Edit9: TEdit;
    Edit12: TEdit;
    Edit11: TEdit;
    cb4: TCheckBox;
    ME1: TcxCurrencyEdit;
    ME2: TcxCurrencyEdit;
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosPESOLIQ: TBCDField;
    cdsDadosATIVO: TStringField;
    cdsDadosCODVELHO: TIntegerField;
    cdsDadosVARIECOD: TIntegerField;
    cdsDadosCATEGCOD: TIntegerField;
    cdsDadosVARIEDES: TStringField;
    cdsDadosCATEGDES: TStringField;
    cdsDadosPESOBRU: TBCDField;
    cdsDadosCOMPRA: TBCDField;
    cdsDadosVENDA2: TBCDField;
    cdsDadosCALIBRE: TIntegerField;
    cdsDadosEMPRECOD: TIntegerField;
    cdsDadosACESOCOD: TIntegerField;
    cdsDadosQTDECX: TBCDField;
    cdsDadosQTDEBA: TBCDField;
    cdsDadosETIQUETA: TStringField;
    cdsDadosOUTROS: TStringField;
    cdsDadosNCM: TStringField;
    cdsDadosCALIBREDES: TStringField;
    cdsDadosICMS_ORI: TStringField;
    cdsDadosICMS_SIT: TStringField;
    cdsDadosCUSTOFG: TStringField;
    cdsDadosCUSTOOPE: TBCDField;
    cdsDadosCUSTOEMB: TBCDField;
    cdsDadosCUSTOLUC: TBCDField;
    cdsDadosCEST: TStringField;
    cdsDadosVENDA1: TBCDField;
    cdsDadosIMPRIMEETIQ: TStringField;
    cdsDadosMOSTRAEST: TStringField;
    cdsDadosCODIGOID: TIntegerField;
    cdsDadosMARCA: TStringField;
    cdsDadosREGLOG: TStringField;
    cdsDadosREG_ID: TIntegerField;
    dsDados: TDataSource;
    dspDados: TDataSetProvider;
    sqlDados: TFDQuery;
    sqlDadosCODIGO: TIntegerField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosVARIECOD: TIntegerField;
    sqlDadosCATEGCOD: TIntegerField;
    sqlDadosVARIEDES: TStringField;
    sqlDadosCATEGDES: TStringField;
    sqlDadosUNIDADE: TStringField;
    sqlDadosPESOLIQ: TBCDField;
    sqlDadosPESOBRU: TBCDField;
    sqlDadosCOMPRA: TBCDField;
    sqlDadosVENDA1: TBCDField;
    sqlDadosVENDA2: TBCDField;
    sqlDadosCODVELHO: TIntegerField;
    sqlDadosCALIBRE: TIntegerField;
    sqlDadosEMPRECOD: TIntegerField;
    sqlDadosACESOCOD: TIntegerField;
    sqlDadosQTDECX: TBCDField;
    sqlDadosQTDEBA: TBCDField;
    sqlDadosETIQUETA: TStringField;
    sqlDadosOUTROS: TStringField;
    sqlDadosNCM: TStringField;
    sqlDadosCALIBREDES: TStringField;
    sqlDadosICMS_ORI: TStringField;
    sqlDadosICMS_SIT: TStringField;
    sqlDadosICMS_PER: TBCDField;
    sqlDadosIPI_SIT: TStringField;
    sqlDadosIPI_PER: TBCDField;
    sqlDadosPIS_SIT: TStringField;
    sqlDadosPIS_PER: TBCDField;
    sqlDadosCOFINS_SIT: TStringField;
    sqlDadosCOFINS_PER: TBCDField;
    sqlDadosIPI_CENQ: TStringField;
    sqlDadosCUSTOFG: TStringField;
    sqlDadosCUSTOOPE: TBCDField;
    sqlDadosCUSTOEMB: TBCDField;
    sqlDadosCUSTOLUC: TBCDField;
    sqlDadosCEST: TStringField;
    sqlDadosIMPRIMEETIQ: TStringField;
    sqlDadosATIVO: TStringField;
    sqlDadosMOSTRAEST: TStringField;
    sqlDadosCODIGOID: TIntegerField;
    sqlDadosMARCA: TStringField;
    sqlDadosREGLOG: TStringField;
    sqlDadosREG_ID: TIntegerField;
    sqlEstru: TFDQuery;
    sqlEstruCODIGO: TIntegerField;
    sqlEstruDESCRICAO: TStringField;
    sqlEstruUNIDADE: TStringField;
    sqlEstruCALIBREDES: TStringField;
    sqlEstruCALIBRE: TIntegerField;
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
    procedure sbAtualizarClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbExcluirListaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FfrmCadDivisao: TFfrmCadDivisao;
  vTag,vKey:Integer;

implementation

uses Menu, Rotina, Data, Pesq;

{$R *.DFM}

procedure TFfrmCadDivisao.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.wParam = VK_TAB) then
    vkey := 13;
end;


procedure TFfrmCadDivisao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmCadDivisao);
end;

procedure TFfrmCadDivisao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  vKey:=0;
  if key=40 then begin key:=0; vKey:=13;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin key:=0;
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmCadDivisao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  vKey:=0;
  if key=#13 then begin key:=#0; vKey:=13;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmCadDivisao.SBP1Click(Sender: TObject);
begin
  fPqVariedade;
  ME1.Text := xpqResul;
  ME1.SetFocus;
end;

procedure TFfrmCadDivisao.SBP2Click(Sender: TObject);
begin
  fPqCategoria;
  ME2.Text := xpqResul;
  ME2.SetFocus;
end;

procedure TFfrmCadDivisao.ME1Exit(Sender: TObject);
begin

//  if (vkey <> 13) then Exit;

  //if fTra(1,['Select Descricao, NCM From CadVarie Where Codigo=0'+Trim(ME1.Text)+' and '+xFiltro1],1) then
  if fTra(1,['Select Descricao, NCM From CadVarie Where Codigo=0'+Trim(ME1.Text)],1) then
  begin
     Edit1.Text := dm.qrSqlTra.Fields[0].Text;
     EdNCM.Text := dm.qrSqlTra.Fields[1].Text;
  end
  else
    SBP1.OnClick(Sender);
  sbAtualizar.OnClick(sbAtualizar);

end;

procedure TFfrmCadDivisao.ME2Exit(Sender: TObject);
begin

//  if (vkey <> 13) then Exit;

  //if fTra(1,['Select Descricao From CadCateg Where Codigo=0'+Trim(ME2.Text)+' and '+xFiltro1],1) then
  if fTra(1,['Select Descricao From CadCateg Where Codigo=0'+Trim(ME2.Text)],1) then
     Edit2.Text:=dm.qrSqlTra.Fields[0].Text
  else
    SBP2.OnClick(Sender);
  sbAtualizar.OnClick(sbAtualizar);

end;

procedure TFfrmCadDivisao.SB4Click(Sender: TObject);
var vtip,vcod,vnum,vpro:Integer;
    vnom,vdem,vcalnormal,vcalmeia,vpos,vsigla:String;
    vpli,vpbr:Double;
    vmsg, vunid: String;
begin

  vmsg := '';
  if (Trim(ME1.Text) = '') or (Trim(ME1.Text) = '000') then
    vmsg := vmsg + '- Código variedade' +#13#10;
  if (Trim(Edit1.Text) = '') then
    vmsg := vmsg + '- Variedade' +#13#10;
  if (Trim(ME2.Text) = '') or (Trim(ME2.Text) = '000') then
    vmsg := vmsg + '- Código categoria' +#13#10;
  if (Trim(Edit2.Text) = '') then
    vmsg := vmsg + '- Categoria' +#13#10;
  if (Trim(Edit4.Text) = '') then
    vmsg := vmsg + '- Unidade' +#13#10;
  if (Trim(EdNCM.Text) = '') then
    vmsg := vmsg + '- Código NCM' +#13#10;

  if (Trim(vmsg) <> '') then
  begin
    frPerg(PChar('Informar iten(s):' +#13#10+ vmsg), 'OK');
    Exit;
  end;

  if not frPerg('Deseja cadastrar produto ?') then
    exit;

  if not frPerg('Confirmar cadastro?') then
    exit;

  fSql(1,1,['Select calnormal, calmeia, siglanor, siglaout from cadvarie where  codigo = 0'+Trim(ME1.Text)],1);
  vcalnormal := ';'+dm.qrSql1.FieldByName('calNormal').asstring+';';
  vcalmeia   := ';'+dm.qrSql1.FieldByName('calMeia').asstring+';';
  fBar(0,500,'Cadastrando produto...');

  cdsDados.Close;
  sqlDados.ParamByName('pVarCod').AsInteger := StrToInt(Trim(ME1.Text));
  sqlDados.ParamByName('pCatCod').AsInteger := StrToInt(Trim(ME2.Text));
  cdsDados.Open;

  for vnum:=1 to 999 do begin
    vcod:=0; vtip:=0; vpli:=0; vpbr:=0;
    ME1.Text:=frPree(ME1.Text,3,'0',0);
    ME2.Text:=frPree(ME2.Text,2,'0',0);
    vsigla := '';

    fBar(1,1,'');
    Case vnum of
      305,325,355,385,395:begin //Granel
            vcod:=vnum;
            vpli:=StrToFloatDef(Edit10.Text,0);
            vpbr:=StrToFloatDef(Edit9.Text,0);
            if vcod=305 then vdem:='A GRANEL GG'
            else if vcod=325 then vdem:='A GRANEL G'
            else if vcod=355 then vdem:='A GRANEL M'
            else if vcod=385 then vdem:='A GRANEL P'
            else if vcod=395 then vdem:='A GRANEL PP';
            vsigla := Copy(vdem,10,2);
            vdem:=Trim(Edit3.Text)+' '+Trim(Edit2.Text)+' '+vdem;
            if CB3.Checked then vtip:=2;
          end;
{      9,12,15,18:begin //Caixeta
            vcod:=vnum;
            vpli:=StrToFloat(Edit11.Text);
            vpbr:=StrToFloat(Edit12.Text);
            vdem:=Trim(Edit3.Text)+' '+Trim(Edit2.Text);
            if CB4.Checked then vtip:=1;
          end;}
    else begin
        //Normal
        vpos := ';'+IntToStr(vnum)+';';
        if (pos(vpos, vcalnormal) > 0) then
        begin
          vcod:=vnum;
          vpli:=StrToFloatDef(Edit8.Text,0);
          vpbr:=StrToFloatDef(Edit7.Text,0);
          vdem:=Trim(Edit3.Text)+' '+Trim(Edit2.Text);
          vsigla := dm.qrSql1.FieldByName('siglanor').asstring;
          if CB1.Checked then vtip:=1;
        end
        else begin
          //Meia caixa
          if (pos(vpos, vcalmeia) > 0) then
          begin
            vcod:=vnum;
            vpli:=StrToFloatDef(Edit5.Text,0);
            vpbr:=StrToFloatDef(Edit6.Text,0);
            vdem:=Trim(Edit3.Text)+' '+Trim(Edit2.Text);
            vsigla := dm.qrSql1.FieldByName('siglaout').asstring;
            if CB2.Checked then vtip:=1;
          end;
        end;
      end;
    end;
    //Cadastra
    if vcod<>0 then
    begin
       if vtip<>0 then
       begin
          if (vcod > 99) then
            vcod := StrToint(Trim(ME1.Text)+Trim(ME2.Text)+IntToStr(vnum))
          else begin
            if (vcod > 9) then
              vcod := StrToInt(Trim(ME1.Text)+Trim(ME2.Text)+'0'+IntToStr(vnum))
            else
              vcod := StrToInt(Trim(ME1.Text)+Trim(ME2.Text)+'00'+IntToStr(vnum));
          end;

          if vtip=2 then
            vnom := Trim(Edit1.Text)+' '+vdem
          else
            vnom := Trim(Edit1.Text)+' '+vdem+' - '+IntToStr(vnum) + vsigla;

          if cdsDados.Locate('Codigo',vcod,[]) then
          begin
            vpro:=2;
            cdsDados.Edit;
          end
          else begin
            vpro:=1;
            cdsDados.Append;
            cdsDadosREG_ID.AsInteger := frGeneratorFB('GEN_CADPRODU_ID');
          end;

          if vpro>0 then
          begin
             if Edit4.Text = 'kg' then
               vunid := ''
             else
               vunid := ' '+Edit4.Text;

             cdsDados.FieldByName('EmpreCod').asInteger := xEmp;
             cdsDados.FieldByName('Codigo').Value       := vcod;

             if (vpli > 0.999) then
             begin
               if (Trim(Edit13.Text) <> '') then
                 cdsDados.FieldByName('Descricao').Text := Trim(Edit13.Text)+' '+vnom +vunid+ ' '+FormatFloat('0.###',vpli)+'kg'
               else
                 cdsDados.FieldByName('Descricao').Text := vnom +vunid+ ' '+FormatFloat('0.###',vpli)+'kg';
             end
             else begin
               if (Trim(Edit13.Text) <> '') then
                 cdsDados.FieldByName('Descricao').Text := Trim(Edit13.Text)+' '+vnom +vunid+ ' '+FormatFloat('0.###',vpli*1000)+'kg'
               else
                 cdsDados.FieldByName('Descricao').Text := vnom +vunid+ ' '+FormatFloat('0.###',vpli*1000)+'gr';
             end;

             cdsDados.FieldByName('Unidade').Value  := Edit4.Text;
             cdsDados.FieldByName('PesoLiq').Value  := vpli;
             cdsDados.FieldByName('PesoBru').Value  := vpbr;
             cdsDados.FieldByName('Calibre').Value  := vnum;
             cdsDados.FieldByName('VarieCod').Value := StrToInt(Trim(ME1.Text));
             cdsDados.FieldByName('VarieDes').Text  := Trim(Edit1.Text);
             cdsDados.FieldByName('CategCod').Value := StrToInt(ME2.Text);
             cdsDados.FieldByName('CategDes').Text  := Trim(Edit2.Text);
             cdsDados.FieldByName('NCM').Text       := Trim(EdNCM.Text);
             if vtip=2 then
               cdsDados.FieldByName('CalibreDes').Text:= vsigla
             else
               cdsDados.FieldByName('CalibreDes').Text := IntToStr(vnum) + vsigla;
             cdsDados.FieldByName('ATIVO').Text        := 'S';
             cdsDados.FieldByName('IMPRIMEETIQ').Text  := 'S';
             cdsDados.FieldByName('MOSTRAEST').Text    := 'S';
             cdsDados.FieldByName('MARCA').Text        := 'Frutas frescas';
             cdsDados.FieldByName('CODIGOID').Value    := frGenerator('CADPRODU','CODIGOID',10);
             cdsDados.Post;
          end;
       end;
    end;
  end;

  cdsDados.ApplyUpdates(-1);
  cdsDados.Refresh;

  fBar(2,1,'');

  sbAtualizar.OnClick(sbAtualizar);
  ShowMessage('Processo Finalizado.');

end;

procedure TFfrmCadDivisao.sbAtualizarClick(Sender: TObject);
var vwhere: String;
begin

  vwhere := 'Where ativo = ''S''';
  if (frPree(Trim(ME1.Text),2,'0',0) <> '00') then
    vwhere := vwhere + ' and variecod = 0'+Trim(ME1.Text);
  if (frPree(Trim(ME2.Text),2,'0',0) <> '00') then
    vwhere := vwhere + ' and categcod = 0'+Trim(ME2.Text);

  sqlEstru.Close;
  sqlEstru.Sql.Strings[2] := vWhere;
  sqlEstru.Open;

  GroupBox7.Caption := 'Lista ('+ IntToStr(sqlEstru.RecordCount) +')';

end;

procedure TFfrmCadDivisao.Excluir1Click(Sender: TObject);
begin
  if not frPerg('Deseja excluir?') then
    exit;

  //Sempre excluir Estrutura
  fSql(1,2,['Delete From CadProBx Where Lanc = 0'+sqlEstru.FieldByName('codigo').asString],1);
  //Sempre excluir
  fSql(1,2,['Delete From CadProdu Where Codigo=0'+sqlEstru.FieldByName('codigo').asString],1);

  sbAtualizar.OnClick(sbAtualizar);

end;

procedure TFfrmCadDivisao.sbExcluirListaClick(Sender: TObject);
begin

  if not frPerg('Deseja excluir toda lista?') then
    exit;

  if not frPerg('Tem certeza?') then
    exit;

  //Sempre excluir

  sqlEstru.First;
  while not sqlEstru.Eof do
  begin

    //Sempre excluir Estrutura
    fSql(1,2,['Delete From CadProBx Where Lanc = 0'+sqlEstru.FieldByName('codigo').asString],1);
    //Sempre excluir
    fSql(1,2,['Delete From CadProdu Where Codigo=0'+sqlEstru.FieldByName('codigo').asString],1);
    sqlEstru.Next;

  end;

  sbAtualizar.OnClick(sbAtualizar);

end;

end.
