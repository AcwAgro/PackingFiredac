unit frmEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, Provider, ppCtrls, ppPrnabl,
  ppClass, ppDB, ppEndUsr, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppDBBDE, ppDesignLayer, ppParameter, RzPanel;

type
  TFfrmEstoque = class(TForm)
    qrEstoq: TQuery;
    qrProduto: TQuery;
    Timer1: TTimer;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    TEstoque: TClientDataSet;
    sqlDadosID: TIntegerField;
    sqlDadosLINHA: TIntegerField;
    sqlDadosVARIEDADE: TStringField;
    sqlDadosCATEGORIA: TStringField;
    sqlDadosCAL1: TStringField;
    sqlDadosCAL2: TStringField;
    sqlDadosCAL3: TStringField;
    sqlDadosCAL4: TStringField;
    sqlDadosCAL5: TStringField;
    sqlDadosCAL6: TStringField;
    sqlDadosCAL7: TStringField;
    sqlDadosCAL8: TStringField;
    sqlDadosCAL9: TStringField;
    sqlDadosCAL10: TStringField;
    sqlDadosCAL11: TStringField;
    sqlDadosCAL12: TStringField;
    sqlDadosCAL13: TStringField;
    sqlDadosCAL14: TStringField;
    sqlDadosCAL15: TStringField;
    sqlDadosCAL16: TStringField;
    sqlDadosCAL17: TStringField;
    sqlDadosCAL18: TStringField;
    sqlDadosCAL19: TStringField;
    sqlDadosCAL20: TStringField;
    sqlDadosCAL21: TStringField;
    sqlDadosCAL22: TStringField;
    sqlDadosCAL23: TStringField;
    sqlDadosCAL24: TStringField;
    sqlDadosCAL25: TStringField;
    sqlDadosCAL26: TStringField;
    sqlDadosCAL27: TStringField;
    sqlDadosCAL28: TStringField;
    sqlDadosCAL29: TStringField;
    sqlDadosCAL30: TStringField;
    sqlDadosAcesoCod: TIntegerField;
    sqlDadosCodigo: TIntegerField;
    sqlDadosQtde: TFloatField;
    TEstoqueID: TIntegerField;
    TEstoqueLINHA: TIntegerField;
    TEstoqueVARIEDADE: TStringField;
    TEstoqueCATEGORIA: TStringField;
    TEstoqueCAL1: TStringField;
    TEstoqueCAL2: TStringField;
    TEstoqueCAL3: TStringField;
    TEstoqueCAL4: TStringField;
    TEstoqueCAL5: TStringField;
    TEstoqueCAL6: TStringField;
    TEstoqueCAL7: TStringField;
    TEstoqueCAL8: TStringField;
    TEstoqueCAL9: TStringField;
    TEstoqueCAL10: TStringField;
    TEstoqueCAL11: TStringField;
    TEstoqueCAL12: TStringField;
    TEstoqueCAL13: TStringField;
    TEstoqueCAL14: TStringField;
    TEstoqueCAL15: TStringField;
    TEstoqueCAL16: TStringField;
    TEstoqueCAL17: TStringField;
    TEstoqueCAL18: TStringField;
    TEstoqueCAL19: TStringField;
    TEstoqueCAL20: TStringField;
    TEstoqueCAL21: TStringField;
    TEstoqueCAL22: TStringField;
    TEstoqueCAL23: TStringField;
    TEstoqueCAL24: TStringField;
    TEstoqueCAL25: TStringField;
    TEstoqueCAL26: TStringField;
    TEstoqueCAL27: TStringField;
    TEstoqueCAL28: TStringField;
    TEstoqueCAL29: TStringField;
    TEstoqueCAL30: TStringField;
    TEstoqueAcesoCod: TIntegerField;
    TEstoqueCodigo: TIntegerField;
    TEstoqueQtde: TFloatField;
    dsDados: TDataSource;
    cdsDados: TClientDataSet;
    cdsDadosid: TIntegerField;
    cdsDadosvarie: TStringField;
    cdsDadoscateg: TStringField;
    cdsDadostotal: TFloatField;
    cdsDadosc1: TFloatField;
    cdsDadosc2: TFloatField;
    cdsDadosc3: TFloatField;
    cdsDadosc4: TFloatField;
    cdsDadosc5: TFloatField;
    cdsDadosc6: TFloatField;
    cdsDadosc7: TFloatField;
    cdsDadosc8: TFloatField;
    cdsDadosc9: TFloatField;
    cdsDadosc10: TFloatField;
    cdsDadosc11: TFloatField;
    cdsDadosc12: TFloatField;
    cdsDadosc13: TFloatField;
    cdsDadosc14: TFloatField;
    cdsDadosc15: TFloatField;
    cdsDadosc16: TFloatField;
    cdsDadosc17: TFloatField;
    cdsDadosc18: TFloatField;
    cdsDadosc19: TFloatField;
    cdsDadosc20: TFloatField;
    cdsDadosc21: TFloatField;
    cdsDadosc22: TFloatField;
    cdsDadosc23: TFloatField;
    cdsDadosc24: TFloatField;
    cdsDadosc25: TFloatField;
    cdsDadosc26: TFloatField;
    cdsDadosc27: TFloatField;
    cdsDadosc28: TFloatField;
    cdsDadosc29: TFloatField;
    cdsDadosc30: TFloatField;
    cdsDadosc31: TFloatField;
    cdsDadosc32: TFloatField;
    cdsDadosc33: TFloatField;
    cdsDadosc34: TFloatField;
    cdsDadosc35: TFloatField;
    cdsDadosc36: TFloatField;
    cdsDadosc37: TFloatField;
    cdsDadosc38: TFloatField;
    cdsDadosc39: TFloatField;
    cdsDadosc40: TFloatField;
    cdsDadoscodigo: TIntegerField;
    ppDados: TppBDEPipeline;
    ppRelatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesigner1: TppDesigner;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    qrCadastro: TQuery;
    ppLabel34: TppLabel;
    ppLabel33: TppLabel;
    ppLabel32: TppLabel;
    ppLabel31: TppLabel;
    ppLabel30: TppLabel;
    ppLabel29: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    qrVariedade: TQuery;
    cdsDadosc41: TFloatField;
    cdsDadosc42: TFloatField;
    cdsDadosc43: TFloatField;
    cdsDadosc44: TFloatField;
    cdsDadosc45: TFloatField;
    sqlDadosCAL31: TStringField;
    sqlDadosCAL32: TStringField;
    sqlDadosCAL33: TStringField;
    sqlDadosCAL34: TStringField;
    sqlDadosCAL35: TStringField;
    sqlDadosCAL36: TStringField;
    sqlDadosCAL37: TStringField;
    sqlDadosCAL38: TStringField;
    sqlDadosCAL39: TStringField;
    sqlDadosCAL40: TStringField;
    sqlDadosCAL41: TStringField;
    sqlDadosCAL42: TStringField;
    sqlDadosCAL43: TStringField;
    sqlDadosCAL44: TStringField;
    sqlDadosCAL45: TStringField;
    sqlDadosCAL46: TStringField;
    sqlDadosCAL47: TStringField;
    sqlDadosCAL48: TStringField;
    sqlDadosCAL49: TStringField;
    sqlDadosCAL50: TStringField;
    cdsDadosc46: TFloatField;
    cdsDadosc47: TFloatField;
    cdsDadosc48: TFloatField;
    cdsDadosc49: TFloatField;
    cdsDadosc50: TFloatField;
    RzPanel1: TRzPanel;
    PMenu: TPanel;
    sbCalcular: TSpeedButton;
    sbImprimir: TSpeedButton;
    GroupBox1: TGroupBox;
    CCB11: TCheckBox;
    CCB13: TCheckBox;
    CCB14: TCheckBox;
    CCB12: TCheckBox;
    CCB30: TCheckBox;
    CCB31: TCheckBox;
    CCB40: TCheckBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    SETime: TSpinEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    CB2: TComboBox;
    CCB2: TCheckBox;
    CB1: TComboBox;
    cbClone: TCheckBox;
    dbDados: TDBGrid;
    DBGrid1: TDBGrid;
    procedure sbCalcularClick(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CCB30Click(Sender: TObject);
    procedure CCB11Click(Sender: TObject);
    procedure CCB31Click(Sender: TObject);
    procedure SETimeChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TEstoqueAfterInsert(DataSet: TDataSet);
    procedure CB2Change(Sender: TObject);
    procedure dtpInicialChange(Sender: TObject);
    procedure dtpFinalChange(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FfrmEstoque: TFfrmEstoque;

implementation

uses Menu, Rotina, Data, Pesq, rlEstoque;

{$R *.DFM}

procedure TFfrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmEstoque);
end;

procedure TFfrmEstoque.FormCreate(Sender: TObject);
var vdataI, vdataF:String;
begin

  dtpInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy', date));
  dtpfinal.Date := Date;

  vdataI := Trim(fParametroEditaVlr('DATAESTPROI'));
  vdataF := Trim(fParametroEditaVlr('DATAESTPROF'));

  if ((vdatai = '') and (vdataf = '')) then
  begin
    dtpInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy', date));
    dtpfinal.Date   := IncMonth(dtpInicial.Date,12) - 1;
    fParametroInserirVlr('DATAESTPROI',DateToStr(dtpInicial.Date),'801');
    fParametroInserirVlr('DATAESTPROF',DateToStr(dtpFinal.Date),'802');
  end
  else begin
    dtpInicial.Date := StrToDate(vdataI);
    dtpfinal.Date   := StrToDate(vdataF);
  end;

  CB2.Items.Clear;
  CB2.Items.Add('Todas');
  fSql(1,1,['Select codigo, descricao From CadVarie Where Ativo = ''S'' and Codigo > 0 Order By Codigo'],1);
  while not dm.qrSql1.Eof do
  begin
    CB2.Items.Add(frPree(dm.qrSql1.Fields[0].Text,Length(dm.qrSql1.Fields[0].Text),'0',0)+'-'+dm.qrSql1.Fields[1].Text);
    dm.qrSql1.Next;
  end;
  dm.TParam.Close;
  dm.TParam.Open;

  seTime.Value := dm.TParam.FieldByName('Time_Estoque').asInteger;
  Timer1.Enabled := True;

  //Arruma a unidade
  CB1.Items.Clear;
  CB1.Items.Add('Todas');

  qrProduto.Close;
  qrProduto.Sql.Clear;
  qrProduto.Sql.Add('select distinct cpr.Unidade ');
  qrProduto.Sql.Add('  from cadprodu cpr');
  qrProduto.Sql.Add(' where cpr.Ativo = ''S''');
  qrProduto.Sql.Add(' Order by cpr.Unidade');
  qrProduto.Open;
  while not qrProduto.eof do
  begin

    if qrProduto.Fields[0].asString <> '' then
      CB1.Items.Add(qrProduto.Fields[0].asString);

    qrProduto.Next;

  end;
  qrProduto.Close;

  //apresentação
  if (pos('MODELO', xEmpre) > 0) then
  begin
    CCB11.Checked := False;
    CCB12.Checked := False;
    CCB14.Checked := False;
    CCB40.Checked := True;
    CB2.ItemIndex := 0;
    CB2.Text := 'Todas';
    CB1.Text := 'cx';
  end
  else begin
    CB2.ItemIndex := 0;
    CB1.ItemIndex := 0;
    CB1.Text := 'cx';
  end;

end;

procedure TFfrmEstoque.sbCalcularClick(Sender: TObject);
var  vvar,vcc,vcat,vll,vc:Integer;
     vok,vdatacl,vdatanf,vdatapl,vdatapd,vtipnf:String;
     vcol:Array[0..27] of String;
     vproduto: Integer;
     vEsteira: String;

     vcount, vri, vrf, vcod, vtam: Integer;
     vtc:Array[0..999] of Integer;
     vtd:Array[0..999] of String;
     vtit:Array[0..50] of Integer;
     vvlr:Array[0..50] of Double;
     vdm, vdn: String;
     vqtde,vent,vsai,vtot:Real;

     vtrue: Boolean;
     vGrupo, vvarie: String;

begin
  Timer1.Enabled := False;

  fParametroSalvaVlr('DATAESTPROI',DateToStr(dtpInicial.Date));
  fParametroSalvaVlr('DATAESTPROF',DateToStr(dtpFinal.Date));

  Label1.Caption:='Leitura...'+FormatDateTime('HH:MM',Time);

  //Pega apenas nota que for saida e faz estoque
  if (CCB12.Checked) then
  begin
    fSql(1,2,['Select codigo from cadnota',
              ' Where tipo = '+QuotedStr('S')+
              '   and estoque = '+QuotedStr('S')],2);
    vtipnf := '';
    while not dm.qrSql2.Eof do
    begin
      if Trim(vtipnf) <> '' then
        vtipnf := vtipnf + ',';
      vtipnf := vtipnf + dm.qrSql2.Fields[0].asString;
      dm.qrSql2.Next;
    end;
    if Trim(vtipnf) <> '' then
      vtipnf := ' nf.difcod in ('+vtipnf + ')';
  end;


  for vc := 0 to 50 do
  begin
    vtit[vc] := 0;
    vvlr[vc] := 0;
  end;
  //Calibre
  for vc := 0 to 999 do
  begin
    vtc[vc] := -1;
    vtd[vc] := '';
  end;

  //Monta cadastro
  qrVariedade.Close;
  qrVariedade.Sql.Clear;
  qrVariedade.Sql.Add('select distinct Codigo, Duplicacod');
  qrVariedade.Sql.Add('  from cadvarie ');
  qrVariedade.Sql.Add(' where Ativo = ''S''');
  qrVariedade.Sql.Add(' order by Codigo');
  qrVariedade.Open;

  qrCadastro.Close;
  qrCadastro.Sql.Clear;
  qrCadastro.Sql.Add('select distinct cpr.Codigo,');
  qrCadastro.Sql.Add('       cpr.variecod, cpr.variedes, cpr.categcod, cpr.categdes');
  qrCadastro.Sql.Add('  from cadprodu cpr');
  qrCadastro.Sql.Add(' Where (cpr.variecod > 0)');
  qrCadastro.Sql.Add('   and cpr.Ativo = ''S''');

  if (CB1.Text <> 'Todas') then
    qrCadastro.Sql.Add(' and (cpr.unidade = '+UpperCase(QuotedStr(cb1.text)) +' or cpr.unidade = '+LowerCase(QuotedStr(cb1.Text))+')');

  if UpperCase(cb2.Text) <> 'TODAS'  then
  begin
{    if ccb2.Checked then
    begin
      if (vlength = 3) then
        qrCadastro.Sql.Add(' and (cpr.VarieCod >= '+Copy(cb2.text,1,2)+'0 and cpr.VarieCod <= '+Copy(cb2.text,1,2)+ '9)')
      else
        qrCadastro.Sql.Add(' and (cpr.VarieCod >= '+Copy(cb2.text,1,1)+'0 and cpr.VarieCod <= '+Copy(cb2.text,1,1)+ '9)');
    end
    else}
      qrCadastro.Sql.Add(' and cpr.VarieCod = 0'+frSoNumero(Trim(cb2.text)));
  end;
  qrCadastro.Sql.Add(' Order by cpr.Codigo');
  qrCadastro.Open;

  //Conta Calibre
  qrProduto.Close;
  qrProduto.Sql.Clear;
  qrProduto.Sql.Add('select distinct cpr.Calibre, cpr.CalibreDes ');
  qrProduto.Sql.Add('  from cadprodu cpr');
  qrProduto.Sql.Add(' where cpr.Ativo = ''S''');

  if (CB1.Text <> 'Todas') then
    qrProduto.Sql.Add(' and (cpr.unidade = '+UpperCase(QuotedStr(cb1.text)) +' or cpr.unidade = '+LowerCase(QuotedStr(cb1.Text))+')');

  qrProduto.Sql.Add(' Order by cpr.Calibre');
  qrProduto.Open;
  fBar(0,qrProduto.RecordCount,'Montando título...');
  while not qrProduto.Eof do
  begin
    fBar(1,1,'');
    vdm := qrProduto.Fields[0].asString+';';
    if (vdm <> ';') then
    begin
      vri := 1;
      for vc := 0 to Length(vdm) do
      begin
        if (vdm[vc] = ';') then
        begin
          vdn := Copy(vdm, vri, (vc - vri));
          if (StrToIntDef(vdn,999) < 999) then
          begin
            vtc[StrToInt(vdn)] := StrToInt(vdn);
            vtd[StrToInt(vdn)] := qrProduto.Fields[1].asString;
          end;
          vri := vc + 1;
        end;
      end;
    end;
    qrProduto.Next;
  end;

  //Oculta Colunas
  //for vc := 1 to 50 do
//   dbDados.Columns[vc].Visible := False;

  vri := 1;
  for vc := 0 to 999 do
  begin
    if (vtc[vc] <> -1) then
    begin
      vtit[vri] := vtc[vc];
      dbDados.Columns[vri].Visible := True;
      dbDados.Columns[vri].Title.Caption := IntToStr(vtc[vc]);
      dbDados.Columns[vri].Width := 65;
      vri := vri + 1;
      if vri > 50 then
        break;
    end;
  end;

  cdsDados.Close;
  cdsDados.CreateDataSet;

  //Primeiro Cria monta a Grade Variedade e Categoria
  qrProduto.Close;
  qrProduto.Sql.Clear;
  qrProduto.Sql.Add('select distinct cpr.codigo, ');
  qrProduto.Sql.Add('       cpr.variecod, cpr.variedes, cpr.categcod, cpr.categdes');
  qrProduto.Sql.Add('  from cadprodu cpr');
  qrProduto.Sql.Add(' Where cpr.Ativo = ''S'' and (cpr.variecod > 0)');

  if (CB1.Text <> 'Todas') then
    qrProduto.Sql.Add(' and (cpr.unidade = '+UpperCase(QuotedStr(cb1.text)) +' or cpr.unidade = '+LowerCase(QuotedStr(cb1.Text))+')');

  if UpperCase(cb2.Text) <> 'TODAS'  then
  begin
    if ccb2.Checked then
    begin
      if (length(cb2.text) = 3) then
        qrProduto.Sql.Add(' and SubString(cpr.VarieCod from 1 for 2) = '+Copy(cb2.text,1,2))
      else
        qrProduto.Sql.Add(' and SubString(cpr.VarieCod from 1 for 1) = '+Copy(cb2.text,1,1))
    end
    else
      qrProduto.Sql.Add(' and cpr.VarieCod = 0'+frSoNumero(Trim(cb2.text)));
  end;
  qrProduto.Sql.Add('Order by cpr.codigo');
  qrProduto.Open;

  cdsDados.DisableControls;
  fBar(0,qrProduto.RecordCount,'Aguarde montando estrutura...');
  while not qrProduto.eof do
  begin
    fBar(1,1,'');
{    if cbClone.Checked then
    begin
      vgrupo := Copy(qrProduto.FieldByName('Codigo').asString,1,vlength);
      if qrVariedade.Locate('Codigo', vgrupo, []) then
        vgrupo := qrVariedade.Fields[1].asString;

      vgrupo := vgrupo + Copy(qrProduto.FieldByName('Codigo').asString,vlength+1,2);

      if not cdsDados.Locate('Codigo', StrToIntDef(vgrupo,0), []) then
      begin
        if qrCadastro.Locate('Grupo', StrToIntDef(vgrupo,0), []) then
        begin
          cdsDados.Append;
          cdsDados.FieldByName('Codigo').asInteger := StrToIntDef(vgrupo,0);
          cdsDados.FieldByName('Varie').asString   := qrCadastro.FieldByName('VarieCod').asString+'-'+qrCadastro.FieldByName('VarieDes').asString;
          cdsDados.FieldByName('Categ').asString   := qrCadastro.FieldByName('CategCod').asString+'-'+qrCadastro.FieldByName('CategDes').asString;
          cdsDados.Post;
        end;
      end;
    end
    else begin}
      cdsDados.Append;

      if (length(qrProduto.FieldByName('Codigo').asString) = 8) then
        cdsDados.FieldByName('Codigo').asInteger := StrToIntDef(Copy(qrProduto.FieldByName('Codigo').asString,1,5),0)
      else
        cdsDados.FieldByName('Codigo').asInteger := StrToIntDef(Copy(qrProduto.FieldByName('Codigo').asString,1,4),0);

      cdsDados.FieldByName('Varie').asString   := qrProduto.FieldByName('VarieCod').asString+'-'+qrProduto.FieldByName('VarieDes').asString;
      cdsDados.FieldByName('Categ').asString   := qrProduto.FieldByName('CategCod').asString+'-'+qrProduto.FieldByName('CategDes').asString;
      cdsDados.Post;
//    end;

    qrProduto.Next;
  end;
  qrProduto.Close;
  cdsDados.EnableControls;

  vdatacl:='(rr.Data>='+frInvD(dtpInicial.Date)+' and rr.Data<'+frInvD(dtpFinal.Date+1)+')';
  vdatanf:='(nc.Data>='+frInvD(dtpInicial.Date)+' and nc.Data<'+frInvD(dtpFinal.Date+1)+')';
  vdatapl:='(pr.Data>='+frInvD(dtpInicial.Date)+' and pr.Data<'+frInvD(dtpFinal.Date+1)+')';
  vdatapd:='(er.Data>='+frInvD(dtpInicial.Date)+' and er.Data<'+frInvD(dtpfinal.Date+1)+')';

  for vcount := 1 to 5 do
  begin
    vtrue := False;
    qrProduto.Close;
    qrProduto.Sql.Clear;
    if (vcount = 1) and (CCB11.Checked) then  //Classificacao
    begin
      qrProduto.Sql.Add('Select rm.ProdCod, Sum(rm.Qtde) as qtde');
      qrProduto.Sql.Add('  From Roman rr, RomanMer rm');
      qrProduto.Sql.Add(' Where (rr.Lanc=rm.Lanc)');
      qrProduto.Sql.Add('   and '+vdatacl);

      if UpperCase(cb2.Text) <> 'TODAS' then
      begin
        if Length(frSoNumero(Trim(cb2.Text))) = 3 then
        begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (rm.ProdCod >= '+Copy(cb2.text,1,1)+'0000000 and rm.ProdCod <= '+Copy(cb2.text,1,1)+ '9999999)')
//          else
            qrProduto.Sql.Add(' and (rm.ProdCod >= '+Copy(cb2.text,1,3)+'00000 and rm.ProdCod <= '+Copy(cb2.text,1,3)+ '99999)')
        end
        else begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (rm.ProdCod >= '+Copy(cb2.text,1,1)+'000000 and rm.ProdCod <= '+Copy(cb2.text,1,1)+ '999999)')
//          else
            qrProduto.Sql.Add(' and (rm.ProdCod >= '+Copy(cb2.text,1,2)+'00000 and rm.ProdCod <= '+Copy(cb2.text,1,2)+ '99999)')
        end;
      end;

      qrProduto.Sql.Add(' Group By rm.ProdCod');
      vtrue := True;
    end;
    if (vcount = 2) and (CCB12.Checked) then  //Venda NF
    begin
      qrProduto.Sql.Add('Select nc.Codigo, Sum(nc.Qtde) as qtde');
      qrProduto.Sql.Add('  From NFVenda nf, NFVendCo nc');
      qrProduto.Sql.Add(' Where (nf.Lanc=nc.Lanc)');
      qrProduto.Sql.Add('   and '+vdatanf);
      qrProduto.Sql.Add('   and '+vtipnf);

      if UpperCase(cb2.Text) <> 'TODAS' then
      begin
        if Length(frSoNumero(Trim(cb2.Text))) = 3 then
        begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,1)+'0000000 and nc.Codigo <= '+Copy(cb2.text,1,1)+ '9999999)')
//          else
            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,3)+'00000 and nc.Codigo <= '+Copy(cb2.text,1,3)+ '99999)')
        end
        else begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,1)+'000000 and nc.Codigo <= '+Copy(cb2.text,1,1)+ '999999)')
//          else
            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,2)+'00000 and nc.Codigo <= '+Copy(cb2.text,1,2)+ '99999)')
        end;
      end;

      qrProduto.Sql.Add(' Group By nc.Codigo');
      vtrue := True;
    end;
    if (vcount = 3) and (CCB14.Checked) then  //Ajuste
    begin
      qrProduto.Sql.Add('Select nc.Codigo, Sum(nc.Entrada - nc.Saida) as qtde');
      qrProduto.Sql.Add('  From AjusteCom nc');
      qrProduto.Sql.Add(' Where '+vdatanf);
      qrProduto.Sql.Add('   and nc.unidade = '+QuotedStr('P'));

      if UpperCase(cb2.Text) <> 'TODAS' then
      begin
        if Length(frSoNumero(Trim(cb2.Text))) = 3 then
        begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,1)+'0000000 and nc.Codigo <= '+Copy(cb2.text,1,1)+ '9999999)')
//          else
            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,3)+'00000 and nc.Codigo <= '+Copy(cb2.text,1,3)+ '99999)')
        end
        else begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,1)+'000000 and nc.Codigo <= '+Copy(cb2.text,1,1)+ '999999)')
//          else
            qrProduto.Sql.Add(' and (nc.Codigo >= '+Copy(cb2.text,1,2)+'00000 and nc.Codigo <= '+Copy(cb2.text,1,2)+ '99999)')
        end;
      end;

      qrProduto.Sql.Add(' Group By nc.Codigo');
      vtrue := True;
    end;
    if (vcount = 4) and (CCB40.Checked) then  //Venda - Pedido em aberto - vpedi
    begin
{      qrProduto.Sql.Add('Select ec.Codigo, Sum(ec.Qtde) as qtde');
      qrProduto.Sql.Add('  From EsVenda er, EsVendCo ec');
      qrProduto.Sql.Add(' Where (er.Lanc=ec.Lanc)');
      qrProduto.Sql.Add('   and '+vdatapd);

      if UpperCase(cb2.Text) <> 'TODAS' then
      begin
        if Length(frSoNumero(Trim(cb2.Text))) = 3 then
        begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,1)+'0000000 and ec.Codigo <= '+Copy(cb2.text,1,1)+ '9999999)')
//          else
            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,3)+'00000 and ec.Codigo <= '+Copy(cb2.text,1,3)+ '99999)')
        end
        else begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,1)+'000000 and ec.Codigo <= '+Copy(cb2.text,1,1)+ '999999)')
//          else
            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,2)+'00000 and ec.Codigo <= '+Copy(cb2.text,1,2)+ '99999)')
        end;
      end;

      qrProduto.Sql.Add(' Group By ec.Codigo');
      vtrue := True;}
      vtrue := False;
    end;

    if (vcount = 5) and (CCB40.Checked) then  //Venda - Pedido em aberto - vnota
    begin
      //qrProduto.Sql.Add('Select ec.Codigo, Sum(ec.Qtde) as qtde');
      //qrProduto.Sql.Add('  From EsVenda er, EsVendCo ec, NfVenda ev');
      //qrProduto.Sql.Add(' Where (er.Lanc=ec.Lanc) and (ev.psp = er.registro)');
      qrProduto.Sql.Add('Select ec.Codigo, (ec.Qtde) as qtde, (select first 1 ev.nota from nfvenda ev where ev.psp = er.registro) as nota');
      qrProduto.Sql.Add('  From EsVenda er, EsVendCo ec');
      qrProduto.Sql.Add(' Where (er.Lanc=ec.Lanc)');
      qrProduto.Sql.Add('   and '+vdatapd);

      if UpperCase(cb2.Text) <> 'TODAS' then
      begin
        if Length(frSoNumero(Trim(cb2.Text))) = 3 then
        begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,1)+'0000000 and ec.Codigo <= '+Copy(cb2.text,1,1)+ '9999999)')
//          else
            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,3)+'00000 and ec.Codigo <= '+Copy(cb2.text,1,3)+ '99999)')
        end
        else begin
//          if ccb2.Checked then
//            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,1)+'000000 and ec.Codigo <= '+Copy(cb2.text,1,1)+ '999999)')
//          else
            qrProduto.Sql.Add(' and (ec.Codigo >= '+Copy(cb2.text,1,2)+'00000 and ec.Codigo <= '+Copy(cb2.text,1,2)+ '99999)')
        end;
      end;

      //qrProduto.Sql.Add(' Group By ec.Codigo');
      qrProduto.Sql.Add(' Order By ec.Codigo');
      vtrue := True;
    end;

    if vtrue then
    begin
      qrProduto.Open;

      fBar(0,qrProduto.RecordCount,'');
      while not qrProduto.eof do
      begin
        vproduto := qrProduto.Fields[0].asInteger;
        fBar(1,1,'Aguarde totalizando...'+IntToStr(vproduto));

{        if cbClone.Checked then
        begin
          vgrupo := Copy(IntToStr(vproduto),1,vlength);
          if qrVariedade.Locate('Codigo', vgrupo, []) then
            vgrupo := qrVariedade.Fields[1].asString;
          vproduto := StrToIntDef(vgrupo + Copy(IntToStr(vproduto),vlength+1,5),0);
        end;}

        if (qrCadastro.Locate('Codigo', vproduto, [])) then
        begin

          if (vcount = 1) and (CCB11.Checked) then  //Classificacao
            vqtde := qrProduto.Fields[1].asFloat;

          if (vcount = 2) and (CCB12.Checked) then  //Venda NF
            vqtde := qrProduto.Fields[1].asFloat * -1;

          if (vcount = 3) and (CCB14.Checked) then  //Ajuste
            vqtde := qrProduto.Fields[1].asFloat;

          if (vcount = 4) and (CCB40.Checked) then  //Venda - Pedido em aberto
            vqtde := 0;//qrProduto.Fields[1].asFloat * -1;

          if (vcount = 5) and (CCB40.Checked) then  //Venda - Pedido em aberto
          begin
            if qrProduto.Fields[2].asInteger = 0 then
              vqtde := qrProduto.Fields[1].asFloat * -1
            else
              vqtde := 0;
          end;

          if (vproduto > 0) and (vqtde <> 0) then
          begin
            if (Length(IntToStr(vProduto)) = 8) then
            begin
              vcod := StrToIntDef(Copy(IntToStr(vproduto), 1, 5),0);
              vtam := StrToIntDef(Copy(IntToStr(vproduto), 6, 3),0);
            end
            else begin
              vcod := StrToIntDef(Copy(IntToStr(vproduto), 1, 4),0);
              vtam := StrToIntDef(Copy(IntToStr(vproduto), 5, 3),0);
            end;

            if (vcod <> 0) and (vtam <> 0) then
            begin
              if (cdsDados.Locate('codigo', vcod, [])) then
              begin
                cdsDados.Edit;

                try
                  //fBar(3,40,'');
                  for vc := 1 to 50 do
                  begin
                    //fBar(4,1,'');
                    if dbDados.Columns[vc].Title.Caption = IntToStr(vtam) then
                    begin
                      cdsDados.FieldByName('c'+IntToStr(vc)).asFloat := cdsDados.FieldByName('c'+IntToStr(vc)).asFloat + vqtde;
                      vvlr[vc] := vvlr[vc] + vqtde;
                    end;
                  end;
                  cdsDados.FieldByName('Total').asFloat := cdsDados.FieldByName('Total').asFloat + vqtde;
                  vvlr[0] := vvlr[0] + vqtde;
                except
                  vqtde := 0;
                end;

                cdsDados.Post;
              end;
            end;
          end;
        end;

        qrProduto.Next;

      end;
    end;
  end;
  qrProduto.Close;

  //Esteira
  if CCB13.Checked then
  begin
    //Precisa procurar por esteiras aberta
    qrProduto.Close;
    qrProduto.Sql.Clear;
    qrProduto.Sql.Add('Select rr.VarieCod, rr.Lanc From Roman rr ');
    qrProduto.Sql.Add(' Where rr.Fecha <> '+QuotedStr('S') +' and '+vdatacl);

    if UpperCase(cb2.Text) <> 'TODAS'  then
    begin
      if ccb2.Checked then
        qrProduto.Sql.Add(' and SubString(rr.VarieCod from 1 for 1) = '+Copy(cb2.text,1,1))
      else
        qrProduto.Sql.Add(' and rr.VarieCod = 0'+frSoNumero(Trim(cb2.text)));
    end;

    qrProduto.Sql.Add(' Order by rr.Lanc');
    qrProduto.Open;

    fBar(0,qrProduto.RecordCount,'');
    while not qrProduto.Eof do
    begin
      try

        vEsteira := 'EsteiraC'+frPree(qrProduto.Fields[0].asString, 3,'0',0);
        dm.TExiste.Close;
        dm.TExiste.TableName := vEsteira;
        if dm.TExiste.Exists then
        begin

          fSql(5,2,['Select Codigo, Sum(Qtde) From '+vEsteira+
                    ' Where LoteLanc = 0'+Trim(qrProduto.Fields[1].AsString)+
                    ' Group By Codigo'],1);

        end
        else
          vEsteira := '';

        if (vEsteira <> '') then
        begin
          while not dm.qrSql2.Eof do
          begin
            vproduto := dm.qrSql2.Fields[0].asInteger;
            vqtde := dm.qrSql2.Fields[1].asFloat;
            fBar(1,1,'Aguarde totalizando esteira...'+IntToStr(vproduto));
            if (vqtde <> 0) then
            begin
              if (Length(IntToStr(vProduto)) = 8) then
              begin
                vcod := StrToInt(Copy(IntToStr(vProduto), 1, 5));
                vtam := StrToInt(Copy(IntToStr(vProduto), 6, 3));
              end
              else begin
                vcod := StrToInt(Copy(IntToStr(vProduto), 1, 4));
                vtam := StrToInt(Copy(IntToStr(vProduto), 5, 3));
              end;

              if (vcod <> 0) and (vtam <> 0) then
              begin

  {              if cbClone.Checked then
                begin
                  vgrupo := Copy(IntToStr(vcod),1,vlength);
                  if qrVariedade.Locate('Codigo', vgrupo, []) then
                    vgrupo := qrVariedade.Fields[1].asString;
                  vcod := StrToIntDef(vgrupo + Copy(IntToStr(vcod), vlength+1, 2),0);
                end;
  }
                if (cdsDados.Locate('codigo', vcod, [])) then
                begin
                  cdsDados.Edit;
                  for vc := 1 to 50 do
                  begin
                    if dbDados.Columns[vc].Title.Caption = IntToStr(vtam) then
                    begin
                      cdsDados.FieldByName('c'+IntToStr(vc)).asFloat := cdsDados.FieldByName('c'+IntToStr(vc)).asFloat + vqtde;
                      vvlr[vc] := vvlr[vc] + vqtde;
                    end;
                  end;
                  cdsDados.FieldByName('Total').asFloat := cdsDados.FieldByName('Total').asFloat + vqtde;
                  vvlr[0] := vvlr[0] + vqtde;
                  cdsDados.Post;
                end;
              end;

            end;
            dm.qrSql2.Next;
          end;
        end;
      except

      end;
      qrProduto.Next;
    end;
  end;
  qrProduto.Close;

  //Apaga produtos não usados
  cdsDados.First;
  cdsDados.DisableControls;
  vCount := cdsDados.RecordCount;
  fBar(0,vCount,'');
  for vcc := 0 to vCount do
  begin
    fBar(1,1,'');
    if not cdsDados.IsEmpty then
    begin
      if cdsDados.FieldByName('Total').asFloat = 0 then
        cdsDados.Delete
      else begin
        for vc := 1 to 50 do
        begin
          if cdsDados.FieldByName('c'+IntToStr(vc)).asFloat = 0 then
          begin
            cdsDados.Edit;
            cdsDados.FieldByName('c'+IntToStr(vc)).Clear;
            cdsDados.Post;
          end;
        end;

        try
          cdsDados.Next;
        except
        end;
      end;
    end;
  end;

  //Totaliza
  cdsDados.Append;
  cdsDados.FieldByName('Codigo').asInteger := 999999;
  cdsDados.FieldByName('Varie').asString   := '';
  cdsDados.FieldByName('Categ').asString   := 'T O T A L  -->>';
  for vc := 1 to 50 do
    cdsDados.FieldByName('c'+IntToStr(vc)).asFloat := vvlr[vc];
  cdsDados.FieldByName('Total').asFloat := vvlr[0];
  cdsDados.Post;
  cdsDados.First;

  //Limpar coluna zerada e ir inserindo para a anterior
{  fBar(0,50,'');
  vcc := 0;
  for vc := 1 to 50 do
  begin
    fBar(1,1,'');
    cdsDados.Last;

    if (cdsDados.FieldByName('c'+IntToStr(vc)).asFloat <> 0) then
    begin
      vcc := vcc +1; //Coluna Vazia

      //Somente se a coluna não for a mesma deve começar a voltar 1
//      if (vcc <> vc) then
//      begin
//        dbDados.Columns[vcc].Title.Caption := dbDados.Columns[vc].Title.Caption;
//        dbDados.Columns[vc].Title.Caption  := '';

        cdsDados.First;
        while not cdsDados.eof do
        begin

          //Transfere
          cdsDados.Edit;

//          if (cdsDados.FieldByName('c'+IntToStr(vc)).asFloat <> 0) then
//            cdsDados.FieldByName('c'+IntToStr(vcc)).asFloat := cdsDados.FieldByName('c'+IntToStr(vc)).asFloat;
//          else
//            cdsDados.FieldByName('c'+IntToStr(vcc)).Clear;

          //Zera
//          cdsDados.FieldByName('c'+IntToStr(vc)).Clear;

          cdsDados.Post;

          //Próximo
          cdsDados.Next;
        end;
      end;
    end;
  end;}
  cdsDados.EnableControls;
{
  fBar(0,50,'');
  for vc := vcc+1 to 50 do
  begin
    fBar(1,1,'');
    dbDados.Columns[vc].Title.Caption := '';
    dbDados.Columns[vc].Visible := False;
  end;
}

  fBar(0,50,'');
  for vc := 1 to 50 do
  begin
    fBar(1,1,'');
    for vcc := 0 to 999 do
    begin
      if (StrToIntDef(dbDados.Columns[vc].Title.Caption,0) = vtc[vcc]) then
        dbDados.Columns[vc].Title.Caption := vtd[vcc];
    end;
  end;

  cdsDados.First;
  fBar(2,0,'');

  dm.TParam.Edit;
  dm.TParam.FieldByName('Time_Estoque').asInteger := seTime.Value;
  dm.TParam.Post;

  if seTime.Value > 0 then
  begin
    if not Timer1.Enabled then
    begin
      Timer1.Interval := seTime.Value * 60000;
      Timer1.Enabled  := True;
    end;
  end
  else Timer1.Enabled := False;


//  Label1.Caption := Label1.Caption +'-'+ FormatDateTime('HH:MM',Time);
  Label1.Caption := FormatDateTime('HH:MM',Time);
  qrCadastro.Close;

end;

procedure TFfrmEstoque.SB7Click(Sender: TObject);
begin
  ppLabel1.Caption  := 'Estoque: de '+DateToStr(dtpInicial.Date)+' - '+DateToStr(dtpfinal.Date)+' Hora: '+TimeToStr(Now);
  ppLabel5.Caption  := dbDados.Columns[1].Title.Caption;
  ppLabel6.Caption  := dbDados.Columns[2].Title.Caption;
  ppLabel7.Caption  := dbDados.Columns[3].Title.Caption;
  ppLabel8.Caption  := dbDados.Columns[4].Title.Caption;
  ppLabel9.Caption  := dbDados.Columns[5].Title.Caption;
  ppLabel10.Caption := dbDados.Columns[6].Title.Caption;
  ppLabel11.Caption := dbDados.Columns[7].Title.Caption;
  ppLabel12.Caption := dbDados.Columns[8].Title.Caption;
  ppLabel13.Caption := dbDados.Columns[9].Title.Caption;
  ppLabel14.Caption := dbDados.Columns[10].Title.Caption;
  ppLabel15.Caption := dbDados.Columns[11].Title.Caption;
  ppLabel16.Caption := dbDados.Columns[12].Title.Caption;
  ppLabel17.Caption := dbDados.Columns[13].Title.Caption;
  ppLabel18.Caption := dbDados.Columns[14].Title.Caption;
  ppLabel19.Caption := dbDados.Columns[15].Title.Caption;
  ppLabel20.Caption := dbDados.Columns[16].Title.Caption;
  ppLabel21.Caption := dbDados.Columns[17].Title.Caption;
  ppLabel22.Caption := dbDados.Columns[18].Title.Caption;
  ppLabel23.Caption := dbDados.Columns[19].Title.Caption;
  ppLabel24.Caption := dbDados.Columns[20].Title.Caption;
  ppLabel25.Caption := dbDados.Columns[21].Title.Caption;
  ppLabel26.Caption := dbDados.Columns[22].Title.Caption;
  ppLabel27.Caption := dbDados.Columns[23].Title.Caption;
  ppLabel28.Caption := dbDados.Columns[24].Title.Caption;
  ppLabel29.Caption := dbDados.Columns[25].Title.Caption;
  ppLabel30.Caption := dbDados.Columns[26].Title.Caption;
  ppLabel31.Caption := dbDados.Columns[27].Title.Caption;
  ppLabel32.Caption := dbDados.Columns[28].Title.Caption;
  ppLabel33.Caption := dbDados.Columns[29].Title.Caption;
  ppLabel34.Caption := dbDados.Columns[30].Title.Caption;
  ppRelatorio.DeviceType:='Screen';
  ppRelatorio.Print;
end;

procedure TFfrmEstoque.SETimeChange(Sender: TObject);
begin
  if seTime.Value > 0 then
  begin
    Timer1.Enabled  := False;
    Timer1.Interval := seTime.Value * 60000;
    Timer1.Enabled  := True;
  end
  else Timer1.Enabled := False;
end;

procedure TFfrmEstoque.TEstoqueAfterInsert(DataSet: TDataSet);
begin
  if (TEstoque.State = dsInsert) then
    TEstoqueID.AsInteger := frGenerator('RELESTOQ','ID',1);
end;

procedure TFfrmEstoque.Timer1Timer(Sender: TObject);
begin
  if seTime.Value > 0 then
    sbCalcular.OnClick(Sender);
end;

procedure TFfrmEstoque.CB2Change(Sender: TObject);
begin

  if (UpperCase(CB2.Text) = 'TODAS') then
  begin
    cbClone.Visible := True;
    cbClone.Left := 185;
    cbClone.Top := 20;
    CCB2.Visible := False;
    CCB2.Checked := False;
  end
  else begin
    CCB2.Visible := True;
    CCB2.Left := 185;
    CCB2.Top := 20;
    cbClone.Visible := False;
    cbClone.Checked := False;
  end;

end;

procedure TFfrmEstoque.CCB11Click(Sender: TObject);
begin
  if ccb11.Checked or ccb12.Checked or ccb13.Checked or ccb14.Checked or ccb40.Checked then
  begin
    ccb30.Checked := False;
    ccb31.Checked := False;
  end;
end;

procedure TFfrmEstoque.CCB30Click(Sender: TObject);
begin
  if ccb30.Checked then
  begin
    ccb40.Checked := false;
    ccb31.Checked := false;
    ccb11.Checked := false;
    ccb12.Checked := false;
    ccb13.Checked := false;
    ccb14.Checked := false;
  end;
end;

procedure TFfrmEstoque.CCB31Click(Sender: TObject);
begin
  if ccb31.Checked then
  begin
    ccb40.Checked := false;
    ccb30.Checked := false;
    ccb11.Checked := false;
    ccb12.Checked := false;
    ccb13.Checked := false;
    ccb14.Checked := false;
  end;
end;

procedure TFfrmEstoque.dbDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if cdsDados.FieldByName('Categ').Text = 'T O T A L  -->>' then
  begin
     dbDados.Canvas.Brush.Color := $00D8D8D8;
     dbDados.Canvas.Font.Color  := clRed;
  end;
  dbDados.DefaultDrawColumnCell(rect,datacol,column,state);
end;

procedure TFfrmEstoque.dtpFinalChange(Sender: TObject);
begin
  if not(dtpFinal.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoque.dtpInicialChange(Sender: TObject);
begin
  if not(dtpInicial.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

end.

