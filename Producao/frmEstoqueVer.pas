unit frmEstoqueVer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, DBClient, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmEstoqueVer = class(TForm)
    dsEstoque: TDataSource;
    Timer1: TTimer;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    cdsTotal: TClientDataSet;
    dsTotal: TDataSource;
    cdsTotalSaldo: TFloatField;
    cdsTotalQuilo: TFloatField;
    cdsTotalClassificacao: TFloatField;
    cdsTotalEsteira: TFloatField;
    cdsTotalAjuste: TFloatField;
    cdsTotalNota: TFloatField;
    cdsTotalPedido: TFloatField;
    cdsTotalAnterior: TFloatField;
    RzPanel1: TRzPanel;
    PMenu: TPanel;
    sbCalcular: TSpeedButton;
    sbImprimir: TSpeedButton;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    CCB20: TCheckBox;
    CCB30: TCheckBox;
    CCB40: TCheckBox;
    CCB60: TCheckBox;
    CCB80: TCheckBox;
    CCB50: TCheckBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    GroupBox3: TGroupBox;
    CB2: TComboBox;
    cbAgrupar: TCheckBox;
    SETime: TSpinEdit;
    cbSemMovimento: TCheckBox;
    dbGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    qrEstoque: TFDQuery;
    qrProduto: TFDQuery;
    TEstoque: TFDQuery;
    qrAnt_Ajuste: TFDQuery;
    qrAnt_Entrada: TFDQuery;
    qrAnt_Nota: TFDQuery;
    qrAnt_Roman: TFDQuery;
    qrAnt_Pedido: TFDQuery;
    qrPedido: TFDQuery;
    qrRoman: TFDQuery;
    qrNota: TFDQuery;
    qrEntrada: TFDQuery;
    qrAjuste: TFDQuery;
    qrRomanAberto: TFDQuery;
    cdsEsteira: TClientDataSet;
    cdsEsteiraCodigo: TIntegerField;
    cdsEsteiraQtde: TFloatField;
    TEstoqueID: TIntegerField;
    TEstoqueVCOD: TIntegerField;
    TEstoqueVDES: TStringField;
    TEstoqueCCOD: TIntegerField;
    TEstoqueCDES: TStringField;
    TEstoquePCOD: TIntegerField;
    TEstoquePDES: TStringField;
    TEstoqueCALD: TStringField;
    TEstoqueUNID: TStringField;
    TEstoqueTEX1: TStringField;
    TEstoqueENT1: TBCDField;
    TEstoqueSAI1: TBCDField;
    TEstoqueTEX2: TStringField;
    TEstoqueENT2: TBCDField;
    TEstoqueSAI2: TBCDField;
    TEstoqueTEX3: TStringField;
    TEstoqueENT3: TBCDField;
    TEstoqueSAI3: TBCDField;
    TEstoqueTEX4: TStringField;
    TEstoqueENT4: TBCDField;
    TEstoqueSAI4: TBCDField;
    TEstoqueTEX5: TStringField;
    TEstoqueENT5: TBCDField;
    TEstoqueSAI5: TBCDField;
    TEstoqueTEX6: TStringField;
    TEstoqueENT6: TBCDField;
    TEstoqueSAI6: TBCDField;
    TEstoqueTEX7: TStringField;
    TEstoqueENT7: TBCDField;
    TEstoqueSAI7: TBCDField;
    TEstoqueTEX8: TStringField;
    TEstoqueENT8: TBCDField;
    TEstoqueSAI8: TBCDField;
    TEstoqueTEX9: TStringField;
    TEstoqueENT9: TBCDField;
    TEstoqueSAI9: TBCDField;
    TEstoqueQANT: TBCDField;
    TEstoqueQCLA: TBCDField;
    TEstoqueQNOT: TBCDField;
    TEstoqueQPED: TBCDField;
    TEstoqueQAJU: TBCDField;
    TEstoqueQEST: TBCDField;
    TEstoqueQATU: TBCDField;
    TEstoqueACESOCOD: TIntegerField;
    TEstoqueREGLOG: TStringField;
    TEstoqueREG_ID: TIntegerField;
    qrVariedade: TFDQuery;
    procedure sbCalcularClick(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbSemMovimentoExit(Sender: TObject);
    procedure cbSemMovimentoClick(Sender: TObject);
    procedure SETimeChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dbGrid2DblClick(Sender: TObject);
    procedure dtpInicialChange(Sender: TObject);
    procedure dtpFinalChange(Sender: TObject);
    procedure cbAgruparClick(Sender: TObject);
  private
    vEstoqueEntradaNF, vPrecoMedioVenda: Boolean;

    procedure p_Totalizar;
    procedure p_Agrupa;

  public
    { Public declarations }
  end;

var
  FfrmEstoqueVer: TFfrmEstoqueVer;

implementation

uses Menu, Rotina, Data, Pesq, rlEstoqueOut, rlEstoqueVer, EstoqChamaTela;

{$R *.DFM}

procedure TFfrmEstoqueVer.cbAgruparClick(Sender: TObject);
begin
  p_Agrupa;
end;

procedure TFfrmEstoqueVer.cbSemMovimentoClick(Sender: TObject);
begin

  DbGrid2.SetFocus;

end;

procedure TFfrmEstoqueVer.cbSemMovimentoExit(Sender: TObject);
begin

  TEstoque.Filter := '';
  TEstoque.Filtered := False;
  if not cbSemMovimento.Checked then
  begin
    TEstoque.Filter := '(QANT <> 0) or (QCLA <> 0) or (QNOT <> 0) or (QPED <> 0) or (QAJU <> 0) or (QEST <> 0)';
    TEstoque.Filtered := True;
  end;

  p_Totalizar;

end;

procedure TFfrmEstoqueVer.dbGrid2DblClick(Sender: TObject);
var vtrue: Boolean;
begin

  case DBGrid2.selectedindex of
    2: vtrue := True;
    4: vtrue := True;
    5: vtrue := True;
    6: vtrue := True;
  else
    vtrue := False;
  end;

  if not vtrue then
    Exit;

  try
    if FfrmEstoqChamaTela = nil then
      Application.CreateForm(TFfrmEstoqChamaTela, FfrmEstoqChamaTela);

    case DBGrid2.selectedindex of
      2: FfrmEstoqChamaTela.cttSql('CLA', TEstoquePCOD.asString, dtpInicial.Date, dtpFinal.Date);
      4: FfrmEstoqChamaTela.cttSql('AJU', TEstoquePCOD.asString, dtpInicial.Date, dtpFinal.Date);
      5: FfrmEstoqChamaTela.cttSql('NFE', TEstoquePCOD.asString, dtpInicial.Date, dtpFinal.Date);
      6: FfrmEstoqChamaTela.cttSql('PED', TEstoquePCOD.asString, dtpInicial.Date, dtpFinal.Date);
    else
      Exit;
    end;

//      2: FfrmEstoqChamaTela.cttSql('EST', TEstoquePCOD.asString, dtpInicial.Date, dtpFinal.Date);

  finally
    TForm(FfrmEstoqChamaTela).ShowModal;

    FreeAndNil(FfrmEstoqChamaTela);

  end;

end;

procedure TFfrmEstoqueVer.dtpFinalChange(Sender: TObject);
begin
  if not(dtpFinal.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoqueVer.dtpInicialChange(Sender: TObject);
begin
  if not(dtpInicial.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoqueVer.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FreeAndNil(FfrmEstoqueVer);

end;

procedure TFfrmEstoqueVer.FormCreate(Sender: TObject);
var vrec, vi: Integer;
    vestoq, vdataI, vdataF:String;
    vcb2: String;
begin

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

  vrec := 0;

  vcb2 := Trim(fParametroEditaVlr('ESTOQUEVER_CCB20'));
  if (vcb2 = '') then
  begin
    //Não existe - cadastrar
    fParametroInserirVlr('ESTOQUEVER_CCB20','S','803');
    fParametroInserirVlr('ESTOQUEVER_CCB30','S','804');
    fParametroInserirVlr('ESTOQUEVER_CCB40','S','805');
    fParametroInserirVlr('ESTOQUEVER_CCB50','S','806');
    fParametroInserirVlr('ESTOQUEVER_CCB60','S','807');
    fParametroInserirVlr('ESTOQUEVER_CCB80','S','808');
    fParametroInserirVlr('ESTOQUEVER_CBAG' ,'N','810');
  end;

  CCB20.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CCB20')) = 'S');
  CCB30.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CCB30')) = 'S');
  CCB40.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CCB40')) = 'S');
  CCB50.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CCB50')) = 'S');
  CCB60.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CCB60')) = 'S');
  CCB80.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CCB80')) = 'S');
  cbAgrupar.Checked := (Trim(fParametroEditaVlr('ESTOQUEVER_CBAG'))  = 'S');

  dbGrid2.Columns[1].Visible := (fBus(1,['Select valor From zGenerator Where Tabela = ''ESTOQUE VERTICAL'' and Campo = ''MOSTRA_COL_KG'''],1) = 1);

  //Preço medio é por nota de venda ou nota de compra
  vPrecoMedioVenda := fBus(1,['Select valor From zGenerator Where Tabela = ''ESTOQUE PRODUTO'' and Campo = ''PRECO MEDIO'''],1) = 1;

  //Se for verdadeiro pega a ENTRADA dos item pela nota ou pela classificação
  vEstoqueEntradaNF := fBus(1,['Select valor From zGenerator Where Tabela = ''ESTOQUE'' and Campo = ''PRODUTO NOTA'''],1) = 1;
  if vEstoqueEntradaNF then
  begin
    CCB40.Caption := '(-) Entrada/N.F.';
    DBGrid2.Columns[3].Title.Caption := 'Entrada/N.F.';
  end
  else begin
    CCB40.Caption := '(-) Esteira.';
    DBGrid2.Columns[3].Title.Caption := 'Esteira';
  end;

  //Mostra útimo estoque
  TEstoque.Close;
  TEstoque.Filtered := False;
  TEstoque.Filter := '';
  TEstoque.Open;

  //Monta cadastro
  qrVariedade.Close;
  qrVariedade.Sql.Clear;
  qrVariedade.Sql.Add('select distinct Codigo, Duplicacod, Descricao');
  qrVariedade.Sql.Add('  from cadvarie ');
  qrVariedade.Sql.Add(' where Ativo = ''S''');
  qrVariedade.Sql.Add(' order by Codigo');
  qrVariedade.Open;

  p_Agrupa;

  if not TEstoque.isEmpty then
  begin
    vi := 0;
    for vi := 0 to cb2.Items.Count - 1 do
    begin
      if (Copy(TEstoquePCOD.AsString,1,2) = Copy(UpperCase(cb2.Items.Strings[vi]),1,2))  then
      begin
        cb2.Text := cb2.Items.Strings[vi];
        cb2.ItemIndex := vi;
        Break
      end;
    end;
  end;

  cbSemMovimento.onExit(cbSemMovimento);

  dm.TParam.Close;
  dm.TParam.Open;
  seTime.Value := dm.TParam.FieldByName('Time_Estoque').asInteger;
//  Timer1.Enabled := True;


end;

procedure TFfrmEstoqueVer.sbCalcularClick(Sender: TObject);
var  vlin:Integer;
     vqtd,vant,vcla,vnot,vped,vaju,vest,vestkg:Real;
     vdtant,vdtper,vdtpre,vtipnf,vEsteira,vtipnfEnt:String;
     vproduto, vpro: Integer;
     vDataAno: TDate;
     vGrupo, vgVariedade, vsqlvar:String;
     vgProduto: Integer;
begin
  Timer1.Enabled  := False;

  fParametroSalvaVlr('DATAESTPROI',DateToStr(dtpInicial.Date));
  fParametroSalvaVlr('DATAESTPROF',DateToStr(dtpFinal.Date));

  if CCB20.Checked then  fParametroSalvaVlr('ESTOQUEVER_CCB20','S')
  else fParametroSalvaVlr('ESTOQUEVER_CCB20','N');

  if CCB30.Checked then  fParametroSalvaVlr('ESTOQUEVER_CCB30','S')
  else fParametroSalvaVlr('ESTOQUEVER_CCB30','N');

  if CCB40.Checked then  fParametroSalvaVlr('ESTOQUEVER_CCB40','S')
  else fParametroSalvaVlr('ESTOQUEVER_CCB40','N');

  if CCB50.Checked then  fParametroSalvaVlr('ESTOQUEVER_CCB50','S')
  else fParametroSalvaVlr('ESTOQUEVER_CCB50','N');

  if CCB60.Checked then  fParametroSalvaVlr('ESTOQUEVER_CCB60','S')
  else fParametroSalvaVlr('ESTOQUEVER_CCB60','N');

  if CCB80.Checked then  fParametroSalvaVlr('ESTOQUEVER_CCB80','S')
  else fParametroSalvaVlr('ESTOQUEVER_CCB80','N');

  if cbAgrupar.Checked then  fParametroSalvaVlr('ESTOQUEVER_CBAG','S')
  else fParametroSalvaVlr('ESTOQUEVER_CBAG','N');

  //fParametroSalvaVlr('ESTOQUEVER_CB2',Copy(CB2.Text,1,2));

  vDataAno := StrTodate('01/01/'+Copy(DatetoStr(dtpInicial.Date),7,4))-1;
  vdtant := '(cc.Data > '+frInvD(vDataAno)+' and cc.Data < '+frInvD(dtpInicial.Date)+')';
  vdtper := '(cc.Data >='+frInvD(dtpInicial.Date)+' and cc.Data < '+frInvD(dtpFinal.Date+1)+')';
  vdtpre := '(Data >='+frInvD(dtpInicial.Date)+' and Data < '+frInvD(dtpFinal.Date+1)+')';

  fBar(0,100,'Limpando...');
  fSql(1,1,['Delete From EstoqueVer '],1);

  TEstoque.Close;

  //Monta cadastro
  qrVariedade.Close;
  qrVariedade.Open;

  //Pega apenas nota que for entrada e faz estoque
  if vEstoqueEntradaNF then
  begin
    if (CCB40.Checked) then //Esteira vira - Entrada
    begin
      fSql(1,2,['Select codigo from cadnota',
                ' Where tipo = '+QuotedStr('E')+
                '   and estoque = '+QuotedStr('S')],2);
      vtipnfEnt := '';
      while not dm.qrSql2.Eof do
      begin
        if Trim(vtipnfEnt) <> '' then
          vtipnfEnt := vtipnfEnt + ',';
        vtipnfEnt := vtipnfEnt + dm.qrSql2.Fields[0].asString;
        dm.qrSql2.Next;
      end;
      if Trim(vtipnfEnt) <> '' then
        vtipnfEnt := ' cc.difcod in ('+vtipnfEnt + ')';
    end;
  end;

  //Pega apenas nota que for saida e faz estoque
  if (CCB60.Checked) then
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
      vtipnf := ' cc.difcod in ('+vtipnf + ')';
  end;

  //Caso familia - peda todos os produtos daquela variedade
  vsqlvar := '';
  if cbAgrupar.Checked then
  begin
    vsqlvar := '  and variecod in (0';
    qrVariedade.First;
    while not qrVariedade.Eof do
    begin
      if (qrVariedade.Fields[1].AsString = Copy(cb2.Text,1,2)) then
        vsqlvar := vsqlvar + ', '+qrVariedade.Fields[0].AsString;
      qrVariedade.Next;
    end;
    vsqlvar := vsqlvar + ')';
  end
  else begin
    if UpperCase(cb2.Text) <> 'TODAS'  then
      vsqlvar := '  and variecod = '+Copy(cb2.Text,1,2);
  end;



  //Montando as estruturas
  //Classificação
  if CCB20.Checked then
  begin
    fBar(1,1,'Aguarde calculando(Romaneio)...');

    qrAnt_Roman.Close;
    qrAnt_Roman.Sql.Clear;
    qrAnt_Roman.Sql.Add('Select rm.Prodcod, Sum(rm.Qtde) as qtde');
    qrAnt_Roman.Sql.Add('  From Roman cc, RomanMer rm');
    qrAnt_Roman.Sql.Add(' Where (cc.Lanc=rm.Lanc)');
    qrAnt_Roman.Sql.Add('   and '+vdtant);
    qrAnt_Roman.Sql.Add('Group by rm.Prodcod');
    qrAnt_Roman.Open;

    qrRoman.Close;
    qrRoman.Sql.Clear;
    qrRoman.Sql.Add('Select rm.Prodcod, Sum(rm.Qtde) as qtde');
    qrRoman.Sql.Add('  From Roman cc, RomanMer rm');
    qrRoman.Sql.Add(' Where (cc.Lanc=rm.Lanc)');
    qrRoman.Sql.Add('   and '+vdtper);
    qrRoman.Sql.Add('Group by rm.Prodcod');
    qrRoman.Open;

  end;

  //Ajuste
  if CCB30.Checked then
  begin
    fBar(1,1,'Aguarde calculando(Ajuste)...');
    qrAnt_Ajuste.Close;
    qrAnt_Ajuste.Sql.Clear;
    qrAnt_Ajuste.Sql.Add('Select cc.Codigo, Sum(cc.Entrada), Sum(cc.Saida)');
    qrAnt_Ajuste.Sql.Add('  From AjusteCom cc');
    qrAnt_Ajuste.Sql.Add(' Where '+vdtant);
    qrAnt_Ajuste.Sql.Add(' Group by cc.Codigo');
    qrAnt_Ajuste.Open;

    qrAjuste.Close;
    qrAjuste.Sql.Clear;
    qrAjuste.Sql.Add('Select cc.Codigo, Sum(cc.Entrada), Sum(cc.Saida)');
    qrAjuste.Sql.Add('  From AjusteCom cc');
    qrAjuste.Sql.Add(' Where '+vdtper);
    qrAjuste.Sql.Add(' Group by cc.Codigo');
    qrAjuste.Open;
  end;

  if (CCB60.Checked) then  //Venda NF
  begin
    qrAnt_Nota.Close;
    qrAnt_Nota.Sql.Clear;
    qrAnt_Nota.Sql.Add('Select nc.Codigo, Sum(nc.Qtde) as qtde');
    qrAnt_Nota.Sql.Add('  From NFVenda cc, NFVendCo nc');
    qrAnt_Nota.Sql.Add(' Where (cc.Lanc=nc.Lanc)');
    qrAnt_Nota.Sql.Add('   and '+vdtant);
    qrAnt_Nota.Sql.Add('   and '+vtipnf);
    qrAnt_Nota.Sql.Add(' Group by nc.Codigo');
    qrAnt_Nota.Open;

    qrNota.Close;
    qrNota.Sql.Clear;
    qrNota.Sql.Add('Select nc.Codigo, Sum(nc.Qtde) as qtde');
    qrNota.Sql.Add('  From NFVenda cc, NFVendCo nc');
    qrNota.Sql.Add(' Where (cc.Lanc=nc.Lanc)');
    qrNota.Sql.Add('   and '+vdtper);
    qrNota.Sql.Add('   and '+vtipnf);
    qrNota.Sql.Add(' Group by nc.Codigo');
    qrNota.Open;
  end;

  if (CCB50.Checked) then  //Venda - Pedido em aberto - vnota
  begin

    qrAnt_Pedido.Close;
    qrAnt_Pedido.Sql.Clear;
    qrAnt_Pedido.Sql.Add('Select ec.Codigo, Sum(ec.Qtde) as qtde ');
    qrAnt_Pedido.Sql.Add('  From EsVenda cc, EsVendCo ec');
    qrAnt_Pedido.Sql.Add(' Where (cc.Lanc=ec.Lanc)');
    qrAnt_Pedido.Sql.Add('   and '+vdtant);
    qrAnt_Pedido.Sql.Add('   and (cc.Baixado = ''N'') ');
//    qrAnt_Pedido.Sql.Add('   and ((select first 1 ev.nota+0 from nfvenda ev where ev.psp = cc.registro) is null)');
    qrAnt_Pedido.Sql.Add(' Group By ec.Codigo');
    qrAnt_Pedido.Open;

    qrPedido.Close;
    qrPedido.Sql.Clear;
    qrPedido.Sql.Add('Select ec.Codigo, Sum(ec.Qtde) as qtde ');
    qrPedido.Sql.Add('  From EsVenda cc, EsVendCo ec');
    qrPedido.Sql.Add(' Where (cc.Lanc=ec.Lanc)');
    qrPedido.Sql.Add('   and '+vdtper);
    qrPedido.Sql.Add('   and (cc.Baixado = ''N'') ');
//    qrPedido.Sql.Add('   and ((select first 1 ev.nota+0 from nfvenda ev where ev.psp = cc.registro) is null)');
    qrPedido.Sql.Add(' Group By ec.Codigo');
    qrPedido.Open;
  end;

  //Entrada - contra nota NF
  if (vEstoqueEntradaNF and CCB40.Checked) then
  begin
    qrEntrada.Close;
    qrEntrada.Sql.Clear;
    qrEntrada.Sql.Add('Select nc.Codigo, Sum(nc.Qtde) as qtde');
    qrEntrada.Sql.Add('  From NFVenda cc, NFVendCo nc');
    qrEntrada.Sql.Add(' Where (cc.Lanc=nc.Lanc)');
    qrEntrada.Sql.Add('   and '+vdtper);
    qrEntrada.Sql.Add('   and '+vtipnfEnt);
    qrEntrada.Sql.Add(' Group by nc.Codigo');
    qrEntrada.Open;
  end;

  //Esteira
  if (not vEstoqueEntradaNF and CCB40.Checked) then
  begin
    //abre os romaneios e joga para uma tabela
    cdsEsteira.Close;
    cdsEsteira.CreateDataSet;

    qrRomanAberto.Close;
    qrRomanAberto.Sql.Clear;
    qrRomanAberto.Sql.Add(' Select distinct cc.VarieCod, cc.Lanc  ' +
                          '   From roman cc' +
                          '  Where cc.Fecha <> '+QuotedStr('S')+
                          '    and '+vdtper +
                          '  '+vsqlvar+
                          ' Order by cc.VarieCod, cc.Lanc ');
    qrRomanAberto.Open;
    qrRomanAberto.First;
    while not qrRomanAberto.Eof do
    begin
       vEsteira := 'EsteiraC'+frPree(qrRomanAberto.Fields[0].asString, 3,'0',0);
       fSql(5,4,['Select Codigo, Sum(Qtde) From '+vEsteira+
                 ' Where LoteLanc = 0'+Trim(qrRomanAberto.Fields[1].AsString)+
                 ' Group by Codigo'
                  ],1);
       dm.qrSql4.First;
       while not dm.qrSql4.Eof do
       begin
         if not cdsEsteira.Locate('Codigo', dm.qrSql4.Fields[0].asInteger, []) then
         begin
           cdsEsteira.Append;
           cdsEsteiraCodigo.AsInteger := dm.qrSql4.Fields[0].asInteger;
           cdsEsteiraQtde.asFloat     := dm.qrSql4.Fields[1].asFloat;
           cdsEsteira.Post;
         end
         else begin
           cdsEsteira.Edit;
           cdsEsteiraQtde.asFloat := cdsEsteiraQtde.asFloat + dm.qrSql4.Fields[1].asFloat;
           cdsEsteira.Post;
         end;
         dm.qrSql4.Next;
       end;
       qrRomanAberto.Next;
    end;
  end;


  //Monta Produto
  qrProduto.Close;
  qrProduto.Sql.Clear;
  qrProduto.Sql.Add('select codigo, descricao, unidade, variecod, variedes, categcod, categdes, calibredes, pesoliq from cadprodu ');
  qrProduto.Sql.Add(' where (ATIVO = ''S'' and MOSTRAEST = ''S'')');
  qrProduto.Sql.Add(vsqlvar);
  qrProduto.Sql.Add(' order by codigo');

  qrProduto.Open;
  TEstoque.Open;
  TEstoque.Filtered := False;

  vlin :=0;
  qrProduto.DisableControls;
  TEstoque.DisableControls;
  fBar(0,qrProduto.RecordCount,'Aguarde...');
  while not qrProduto.Eof do
  begin
    inc(vlin);
    fBar(1,1,'Aguarde calculando...'+qrProduto.Fields[0].asString);
    vproduto := qrProduto.Fields[0].asInteger;
    vant :=0; vcla :=0; vnot :=0; vped :=0; vaju :=0; vest :=0; vestkg :=0;

    //Saldo Anterior
    if not CCB80.Checked then
    begin

      //Classificação
      if CCB20.Checked then
      begin
        if qrAnt_Roman.Locate('ProdCod', vproduto, []) then
          vant := qrAnt_Roman.Fields[1].asFloat;
      end;

      //Ajuste
      if CCB30.Checked then
      begin
        if qrAnt_Ajuste.Locate('Codigo', vproduto, []) then
          vant := vant + (qrAnt_Ajuste.Fields[1].asFloat - qrAnt_Ajuste.Fields[2].asFloat);
      end;

      if (CCB60.Checked) then  //Venda NF
      begin
        if qrAnt_Nota.Locate('Codigo', vproduto, []) then
          vant := vant - qrAnt_Nota.Fields[1].asFloat;
      end;

      if (CCB50.Checked) then  //Venda - Pedido em aberto - vnota
      begin
        if qrAnt_Pedido.Locate('Codigo', vproduto, []) then
          vant := vant - qrAnt_Pedido.Fields[1].asFloat;
      end;

    end;

    //Período Atual

    //Classificação
    if CCB20.Checked then
    begin
      if qrRoman.Locate('ProdCod', vproduto, []) then
        vcla := vcla + qrRoman.Fields[1].asFloat;
    end;

    //Ajuste
    if CCB30.Checked then
    begin
      if qrAjuste.Locate('Codigo', vproduto, []) then
        vaju := vaju + (qrAjuste.Fields[1].asFloat - qrAjuste.Fields[2].asFloat);
    end;

    if (CCB60.Checked) then  //Venda NF
    begin
      if qrNota.Locate('Codigo', vproduto, []) then
        vnot := vnot + qrNota.Fields[1].asFloat;
    end;

    if (CCB50.Checked) then  //Venda - Pedido em aberto - vnota
    begin
      if qrPedido.Locate('Codigo', vproduto, []) then
        vped := vped + qrPedido.Fields[1].asFloat;

    end;

    //Entrada - contra nota NF
    if (vEstoqueEntradaNF and CCB40.Checked) then
    begin
      if qrEntrada.Locate('Codigo', vproduto, []) then
      begin
        if (LowerCase(qrProduto.FieldByName('unidade').asString) = 'kg') then
          vestkg := vestkg + qrEntrada.Fields[1].asFloat
        else
          vest := vest + qrEntrada.Fields[1].asFloat;
      end;
    end;

    //Esteira - Se não nota de entrada - contra nota
    if (not vEstoqueEntradaNF and CCB40.Checked) then
    begin
      if cdsEsteira.Locate('Codigo', vproduto, []) then
        vest := vest + cdsEsteira.Fields[1].asInteger;
    end;

    //Se for para agrupar
    vGrupo      := qrProduto.FieldByName('variecod').AsString;
    vgProduto   := vproduto;
    vgVariedade := qrProduto.FieldByName('variedes').asString;
    if cbAgrupar.Checked then
    begin
      if qrVariedade.Locate('Codigo', vgrupo, []) then
      begin
        vGrupo      := qrVariedade.Fields[1].asString;
        vgVariedade := qrVariedade.Fields[2].asString;
        vgProduto   := StrToIntDef(vgrupo + Copy(IntToStr(vproduto),Length(qrVariedade.Fields[0].asString)+1,5),0);
      end;
    end;

    //Salva

    xPrecoMedio := 0;

    if not TEstoque.Locate('PCOD', vgProduto, []) then
    begin
      TEstoque.Append;
      TEstoque.FieldByName('ID').asInteger    := vlin;
      TEstoque.FieldByName('AcesoCod').asInteger :=1000+xace;
      TEstoque.FieldByName('VCOD').asInteger   := StrToIntDef(vGrupo,0);
      TEstoque.FieldByName('VDES').asString    := vgVariedade;
      TEstoque.FieldByName('CCOD').asInteger   := qrProduto.FieldByName('categcod').asInteger;
      TEstoque.FieldByName('CDES').asString    := qrProduto.FieldByName('categdes').asString;
      TEstoque.FieldByName('PCOD').asInteger   := vgProduto;
      TEstoque.FieldByName('PDES').asString    := qrProduto.FieldByName('descricao').asString;
      TEstoque.FieldByName('UNID').asString    := qrProduto.FieldByName('unidade').asString;
      TEstoque.FieldByName('CALD').asString    := qrProduto.FieldByName('calibredes').asString;
      TEstoque.FieldByName('QANT').asFloat  := frDeci(vant,2);
      TEstoque.FieldByName('QCLA').asFloat  := frDeci(vcla,2);
      TEstoque.FieldByName('QNOT').asFloat  := frDeci(vnot,2);
      TEstoque.FieldByName('QPED').asFloat  := frDeci(vped,2);
      TEstoque.FieldByName('QAJU').asFloat  := frDeci(vaju,2);
      TEstoque.FieldByName('QEST').asFloat  := frDeci(vest,2);
      TEstoque.FieldByName('QATU').asFloat  := frDeci(vant+vcla+vest+vaju-vnot-vped,3);
      TEstoque.FieldByName('SAI9').asFloat  := frDeci(TEstoque.FieldByName('QATU').asFloat * qrProduto.FieldByName('pesoliq').AsFloat,3);

      if (vEstoqueEntradaNF and CCB40.Checked) then
      begin
        TEstoque.FieldByName('QEST').asFloat  := frDeci(vestKG,2);
        TEstoque.FieldByName('SAI9').asFloat  := frDeci(TEstoque.FieldByName('SAI9').asFloat + vestKG,3);
      end;

{
      //PreçoMédio por quilo
      if vPrecoMedioVenda then
      begin
        fRecalPreco('', vdtpre, 'N', vgProduto, False);
        if (TEstoque.FieldByName('SAI9').AsFloat <> 0) then
          TEstoque.FieldByName('SAI8').asFloat  := frDeci((xPrecoMedio * TEstoque.FieldByName('QATU').AsFloat) / TEstoque.FieldByName('SAI9').AsFloat,2)
        else
          TEstoque.FieldByName('SAI8').asFloat  := 0;
      end
      else begin
        //vem em quilos
        fRecalPrecoCompra('', vdtpre, 'N', vgProduto, False);
        TEstoque.FieldByName('SAI8').asFloat  := frDeci(xPrecoMedio,2); //frDeci(xPrecoMedio * TEstoque.FieldByName('SAI9').AsFloat,2);
      end;
}
      TEstoque.FieldByName('SAI7').asFloat  := frDeci(TEstoque.FieldByName('SAI9').asFloat * TEstoque.FieldByName('SAI8').asFloat,2);

      TEstoque.Post;
    end
    else begin
      TEstoque.Edit;
      TEstoque.FieldByName('QANT').asFloat  := TEstoque.FieldByName('QANT').asFloat + frDeci(vant,2);
      TEstoque.FieldByName('QCLA').asFloat  := TEstoque.FieldByName('QCLA').asFloat + frDeci(vcla,2);
      TEstoque.FieldByName('QNOT').asFloat  := TEstoque.FieldByName('QNOT').asFloat + frDeci(vnot,2);
      TEstoque.FieldByName('QPED').asFloat  := TEstoque.FieldByName('QPED').asFloat + frDeci(vped,2);
      TEstoque.FieldByName('QAJU').asFloat  := TEstoque.FieldByName('QAJU').asFloat + frDeci(vaju,2);
      TEstoque.FieldByName('QEST').asFloat  := TEstoque.FieldByName('QEST').asFloat + frDeci(vest,2);
      TEstoque.FieldByName('QATU').asFloat  := TEstoque.FieldByName('QATU').asFloat + frDeci(vant+vcla+vest+vaju-vnot-vped,3);
      TEstoque.FieldByName('SAI9').asFloat  := frDeci(TEstoque.FieldByName('QATU').asFloat * qrProduto.FieldByName('pesoliq').AsFloat,3);

      if (vEstoqueEntradaNF and CCB40.Checked) then
      begin
        TEstoque.FieldByName('QEST').asFloat  := TEstoque.FieldByName('QEST').asFloat + frDeci(vestKG,2);
        TEstoque.FieldByName('SAI9').asFloat  := frDeci(TEstoque.FieldByName('SAI9').asFloat + vestKG,3);
      end;
{
      //PreçoMédio por quilo
      if vPrecoMedioVenda then
      begin
        fRecalPreco('', vdtpre, 'N', vgProduto, False);
        if (TEstoque.FieldByName('SAI9').AsFloat <> 0) then
          TEstoque.FieldByName('SAI8').asFloat  := frDeci((xPrecoMedio * TEstoque.FieldByName('QATU').AsFloat) / TEstoque.FieldByName('SAI9').AsFloat,2)
        else
          TEstoque.FieldByName('SAI8').asFloat  := 0;
      end
      else begin
        //vem em quilos
        fRecalPrecoCompra('', vdtpre, 'N', vgProduto, False);
        TEstoque.FieldByName('SAI8').asFloat  := frDeci(xPrecoMedio,2); //frDeci(xPrecoMedio * TEstoque.FieldByName('SAI9').AsFloat,2);
      end;
 }
      TEstoque.FieldByName('SAI7').asFloat  := frDeci(TEstoque.FieldByName('SAI9').asFloat * TEstoque.FieldByName('SAI8').asFloat,2);

      TEstoque.Post;
    end;

    qrProduto.Next;
  end;
  fBar(2,0,'');
  TEstoque.ApplyUpdates(0);
  qrProduto.EnableControls;
  TEstoque.EnableControls;

  cbSemMovimento.onExit(cbSemMovimento);

  TEstoque.First;
  DbGrid2.SetFocus;

  Timer1.Enabled  := True;
  dm.TParam.Edit;
  dm.TParam.FieldByName('Time_Estoque').asInteger := seTime.Value;
  dm.TParam.Post;

end;

procedure TFfrmEstoqueVer.p_Agrupa;
var vrec: Integer; vestoq:String;
begin

  CB2.Items.Clear;
  if cbAgrupar.Checked then
    fSql(1,1,['Select distinct vv.codigo, vv.descricao from cadvarie cv',
              ' inner join cadvarie vv on vv.codigo = cv.codigoid',
              ' order by vv.codigo'],3)

  else
    fSql(1,1,['Select * From CadVarie Where Codigo>1 Order By Codigo'],1);

  while not dm.qrSql1.Eof do
  begin
    inc(vrec);
    CB2.Items.Add(frPree(dm.qrSql1.Fields[0].Text,2,'0',0)+'-'+dm.qrSql1.Fields[1].Text);
    if vrec = 1 then CB2.Text := frPree(dm.qrSql1.Fields[0].Text,2,'0',0)+'-'+dm.qrSql1.Fields[1].Text;
    dm.qrSql1.Next;
  end;
  CB2.ItemIndex := 0;

end;

procedure TFfrmEstoqueVer.p_Totalizar;
begin
  //Inseri total zerado
  cdsTotal.Close;
  cdsTotal.CreateDataSet;
  cdsTotal.Append;
  cdsTotalSaldo.AsFloat := 0;
  cdsTotalQuilo.AsFloat := 0;
  cdsTotalClassificacao.AsFloat := 0;
  cdsTotalEsteira.AsFloat := 0;
  cdsTotalAjuste.AsFloat := 0;
  cdsTotalNota.AsFloat := 0;
  cdsTotalPedido.AsFloat := 0;
  cdsTotalAnterior.AsFloat := 0;
  cdsTotal.Post;

  TEstoque.First;
  while not TEstoque.Eof do
  begin
    cdsTotal.Edit;
    cdsTotalSaldo.AsFloat    := cdsTotalSaldo.AsFloat    + TEstoque.FieldByName('QATU').asFloat;
    cdsTotalQuilo.AsFloat    := cdsTotalQuilo.AsFloat    + TEstoque.FieldByName('SAI9').asFloat;
    cdsTotalClassificacao.AsFloat := cdsTotalClassificacao.AsFloat + TEstoque.FieldByName('QCLA').asFloat;
    cdsTotalEsteira.AsFloat  := cdsTotalEsteira.AsFloat  + TEstoque.FieldByName('QEST').asFloat;
    cdsTotalAjuste.AsFloat   := cdsTotalAjuste.AsFloat   + TEstoque.FieldByName('QAJU').asFloat;
    cdsTotalNota.AsFloat     := cdsTotalNota.AsFloat     + TEstoque.FieldByName('QNOT').asFloat;
    cdsTotalPedido.AsFloat   := cdsTotalPedido.AsFloat   + TEstoque.FieldByName('QPED').asFloat;
    cdsTotalAnterior.AsFloat := cdsTotalAnterior.AsFloat + TEstoque.FieldByName('QANT').asFloat;
    cdsTotal.Post;

    TEstoque.Next;
  end;
  TEstoque.First;

end;

procedure TFfrmEstoqueVer.SETimeChange(Sender: TObject);
begin
  if seTime.Value > 0 then
  begin
    Timer1.Enabled  := False;
    Timer1.Interval := seTime.Value * 60000;
    Timer1.Enabled  := True;
  end
end;

procedure TFfrmEstoqueVer.Timer1Timer(Sender: TObject);
begin
  if seTime.Value > 0 then
    sbCalcular.OnClick(Sender);
end;

procedure TFfrmEstoqueVer.SB7Click(Sender: TObject);
begin
  if qrEstoqueVer<>Nil then qrEstoqueVer.Destroy; Application.CreateForm(TqrEstoqueVer, qrEstoqueVer);
  with qrEstoqueVer do
  begin
    if not dbGrid2.Columns[1].Visible then
    begin
      QRLabel7.Left     := 5120;
      QRDBText3.Left    := 5110;
      qrlblSaldokg.Left := 5450;
      qrlblSomakg.Left  := 5450;
      qrlblTotalkg.Left := 5450;
    end;

    qrDados.Close;
    qrDados.Sql.Clear;
    qrDados.Sql.Add('Select *');
    qrDados.Sql.Add('  From EstoqueVer');

    if not cbSemMovimento.Checked then
      qrDados.Sql.Add(' Where (QANT <> 0) or (QCLA <> 0) or (QNOT <> 0) or (QPED <> 0) or (QAJU <> 0) or (QEST <> 0)');

    qrDados.Sql.Add(' Order by ID');
    qrDados.Open;

    if (vEstoqueEntradaNF) then
      qrcal5.Caption := 'Entrada NF.'
    else
      qrcal5.Caption := 'Esteira';

    QRLabel0.Caption:='Estoque '+Trim(Copy(CB2.Text,4,50))+
                      ' no período '+DateToStr(dtpInicial.date)+
                      ' até '+DateToStr(dtpFinal.Date);
    PrinterSettings.PrinterIndex := fImpr('Imp1');
    Preview;
  end;

end;

end.

