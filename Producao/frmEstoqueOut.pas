unit frmEstoqueOut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TFfrmEstoqueOut = class(TForm)
    SG1: TStringGrid;
    DataSource1: TDataSource;
    Timer1: TTimer;
    RzPanel1: TRzPanel;
    PMenu: TPanel;
    sbCalcular: TSpeedButton;
    sbImprimir: TSpeedButton;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    CCB10: TCheckBox;
    CCB20: TCheckBox;
    CCB30: TCheckBox;
    CCB40: TCheckBox;
    CCB60: TCheckBox;
    CCB80: TCheckBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    CB2: TComboBox;
    meCodigo: TMaskEdit;
    SETime: TSpinEdit;
    cbSemMovimento: TCheckBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    TEstoque: TFDQuery;
    qrProduto: TFDQuery;
    qrEstoque: TFDQuery;
    TEstoqueLINHA: TIntegerField;
    TEstoqueDESCRICAO: TStringField;
    TEstoqueUNIDADE: TStringField;
    TEstoqueCODIGO: TIntegerField;
    TEstoqueCAL1: TBCDField;
    TEstoqueCAL2: TBCDField;
    TEstoqueCAL3: TBCDField;
    TEstoqueCAL4: TBCDField;
    TEstoqueCAL5: TBCDField;
    TEstoqueCAL6: TBCDField;
    TEstoqueCAL7: TBCDField;
    TEstoqueCAL8: TBCDField;
    TEstoqueCAL9: TBCDField;
    TEstoqueCAL10: TBCDField;
    TEstoqueACESOCOD: TIntegerField;
    TEstoqueREGLOG: TStringField;
    TEstoqueREG_ID: TIntegerField;
    qrAnt_Entrada: TFDQuery;
    qrAnt_Saida: TFDQuery;
    qrAnt_Ajuste: TFDQuery;
    qrEntrada: TFDQuery;
    qrAnt_Roman: TFDQuery;
    qrRoman: TFDQuery;
    qrMerca: TFDQuery;
    qrSaida: TFDQuery;
    qrAnt_Merca: TFDQuery;
    qrAjuste: TFDQuery;
    qrRomanAberto: TFDQuery;
    cdsEsteira: TClientDataSet;
    cdsEsteiraCodigo: TIntegerField;
    cdsEsteiraQtde: TFloatField;
    procedure sbCalcularClick(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CCB20Click(Sender: TObject);
    procedure CCB60Click(Sender: TObject);
    procedure CCB40Click(Sender: TObject);
    procedure SETimeChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dtpInicialChange(Sender: TObject);
    procedure dtpFinalChange(Sender: TObject);
    procedure cbSemMovimentoExit(Sender: TObject);
    procedure cbSemMovimentoClick(Sender: TObject);
  private
    vEstoqueSaidaNF: Boolean; //False -> Classificação é o atual

  public
    { Public declarations }
  end;

var
  FfrmEstoqueOut: TFfrmEstoqueOut;

implementation

uses Menu, Rotina, Data, Pesq, rlEstoqueOut;

{$R *.DFM}

procedure TFfrmEstoqueOut.cbSemMovimentoClick(Sender: TObject);
begin

  DbGrid2.SetFocus;

end;

procedure TFfrmEstoqueOut.cbSemMovimentoExit(Sender: TObject);
begin

  TEstoque.Filter := '';
  TEstoque.Filtered := False;
  if not cbSemMovimento.Checked then
  begin
    TEstoque.Filter := '(CAL10 <> 0) or (CAL1 <> 0) or (CAL2 <> 0) or (CAL3 <> 0) or (CAL4 <> 0) or (CAL5 <> 0)';
    TEstoque.Filtered := True;
  end;

end;

procedure TFfrmEstoqueOut.CCB20Click(Sender: TObject);
begin
//  if CCB20.Checked then
//    CCB60.Checked := false;
end;

procedure TFfrmEstoqueOut.CCB40Click(Sender: TObject);
begin
//  if CCB40.Checked then
//    CCB60.Checked := false;
end;

procedure TFfrmEstoqueOut.CCB60Click(Sender: TObject);
begin
//  if CCB60.Checked then
//  begin
//    CCB20.Checked := false;
//    CCB40.Checked := false;
//  end;
end;

procedure TFfrmEstoqueOut.dtpFinalChange(Sender: TObject);
begin
  if not(dtpFinal.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoqueOut.dtpInicialChange(Sender: TObject);
begin
  if not(dtpInicial.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoqueOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if CCB60.Checked then
//    fParametroSalvaVlr('LER ESTOQUE SAIDA NF', '1')
//  else
//    fParametroSalvaVlr('LER ESTOQUE SAIDA NF', '0');
  FreeAndNil(FfrmEstoqueOut);
end;

procedure TFfrmEstoqueOut.FormCreate(Sender: TObject);
var vrec: Integer;
    vestoq, vdataI, vdataF:String;
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

  CB2.Items.Clear;
  fSql(1,1,['Select * From CadGrupo Where Codigo>1 Order By Codigo'],1);
  while not dm.qrSql1.Eof do
  begin
    inc(vrec);
    CB2.Items.Add(frPree(dm.qrSql1.Fields[0].Text,2,'0',0)+'-'+dm.qrSql1.Fields[1].Text);
    if vrec = 1 then CB2.Text := frPree(dm.qrSql1.Fields[0].Text,2,'0',0)+'-'+dm.qrSql1.Fields[1].Text;
    dm.qrSql1.Next;
  end;

  //Se for verdadeiro pega a saida dos item pela nota ou pela classificação
  vEstoqueSaidaNF := fBus(1,['Select valor From zGenerator Where Tabela = ''ESTOQUE'' and Campo = ''MERCADORIA NOTA'''],1) = 1;
  if vEstoqueSaidaNF then
  begin
    CCB20.Caption := '(-) Saída/Nota F.';
    CCB40.Checked := False;
    CCB40.Visible := False;
  end
  else begin
    CCB20.Caption := '(-) Saída/Classif.';
    CCB40.Checked := True;
    CCB40.Visible := True;
  end;

  TEstoque.Close;
  TEstoque.Open;

  cbSemMovimento.onExit(cbSemMovimento);

  dm.TParam.Close;
  dm.TParam.Open;
  seTime.Value := dm.TParam.FieldByName('Time_Estoque').asInteger;
  
end;

procedure TFfrmEstoqueOut.sbCalcularClick(Sender: TObject);
var  vlin:Integer;
     vqtd,vant,vent,vsai,vaju,vest,vsaldo,vpreco:Real;
     vdtant,vdtper,vtipnf,vEsteira:String;
     vproduto: Integer;
     vDataAno: TDate;
begin
  Timer1.Enabled  := False;

  fParametroSalvaVlr('DATAESTPROI',DateToStr(dtpInicial.Date));
  fParametroSalvaVlr('DATAESTPROF',DateToStr(dtpFinal.Date));

  vDataAno := StrTodate('01/01/'+Copy(DatetoStr(dtpInicial.Date),7,4))-1;
  vdtant := '(cc.Data > '+frInvD(vDataAno)+' and cc.Data < '+frInvD(dtpInicial.Date)+')';
  vdtper:='(cc.Data >='+frInvD(dtpInicial.Date)+' and cc.Data < '+frInvD(dtpFinal.Date+1)+')';

  fBar(0,100,'Aguarde calculando...');

  fSql(1,1,['Delete From RelMerca '],1);


  //Pega apenas nota que for saida e faz estoque
  //if ((CCB20.Checked) and (Copy(CB2.Text,1,2)='03')) then
  if ((CCB20.Checked) and (vEstoqueSaidaNF or (Copy(CB2.Text,1,2)='03'))) then
  begin
    fBar(1,1,'Aguarde calculando(Tipo Nota)...');
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
      vtipnf := ' and cc.difcod in ('+vtipnf + ')';
  end;

  //Montando as estruturas
  if CCB10.Checked then
  begin
    fBar(1,1,'Aguarde calculando(Entrada)...');
    //Saldo Anterior
    if not CCB80.Checked then
    begin
      qrAnt_Entrada.Close;
      qrAnt_Entrada.Sql.Clear;
      qrAnt_Entrada.Sql.Add(' Select ee.Codigo, Sum(ee.Qtde_Real)' +
                            '   From nfCompr cc, nfCompCo ee' +
                            '  Where (cc.Lanc=ee.Lanc)' +
                            '   and '+vdtant +
                            '  Group by ee.Codigo');
      qrAnt_Entrada.Open;

      //Ajuste
      if CCB30.Checked then
      begin
        qrAnt_Ajuste.Close;
        qrAnt_Ajuste.Sql.Clear;
        qrAnt_Ajuste.Sql.Add(' Select cc.Codigo, Sum(cc.Entrada), Sum(cc.Saida) ' +
                             '   From AjusteCom cc' +
                             '  Where '+vdtant +
                             '  Group by cc.Codigo');
        qrAnt_Ajuste.Open;
      end;
    end;

    qrEntrada.Close;
    qrEntrada.Sql.Clear;
    qrEntrada.Sql.Add(' Select ee.Codigo, Sum(ee.Qtde_Real), Sum(ee.Valor) ' +
                      '   From nfCompr cc, nfCompCo ee' +
                      '  Where (cc.Lanc=ee.Lanc)' +
                      '   and '+vdtper +
                      '  Group by ee.Codigo');
    qrEntrada.Open;
  end;

  //Saida - Venda - Embalagens
  if (CCB20.Checked or CCB40.Checked)  and (Copy(CB2.Text,1,2)='02') then
  begin
    fBar(1,1,'Aguarde calculando(Saída)...');
    //Nota fiscal
    if vEstoqueSaidaNF then
    begin
      if (CCB20.Checked) then
      begin
        //Saldo Anterior
        if not CCB80.Checked then
        begin
          qrAnt_Saida.Close;
          qrAnt_Saida.Sql.Clear;
          qrAnt_Saida.Sql.Add(' Select ee.Codigo, Sum(ee.Qtde) ' +
                              '   From NFVenda cc, NFVendCo ee' +
                              '  Where (cc.Lanc=ee.Lanc)' +
                              '   and '+vdtant +
                              '   '+vtipnf+
                              '  Group by ee.Codigo');
          qrAnt_Saida.Open;
        end;

        //Venda-Saída
        qrSaida.Close;
        qrSaida.Sql.Clear;
        qrSaida.Sql.Add(' Select ee.Codigo, Sum(ee.Qtde) ' +
                        '   From NFVenda cc, NFVendCo ee' +
                        '  Where (cc.Lanc=ee.Lanc)' +
                        '   and '+vdtant +
                        '   '+vdtper+
                        '  Group by ee.Codigo');
        qrSaida.Open;
      end;

    end
    else begin
      //classificação
      fBar(1,1,'Aguarde calculando(Classificação)...');
      if (CCB20.Checked) then
      begin
        //Saldo Anterior
        if not CCB80.Checked then
        begin
          qrAnt_Roman.Close;
          qrAnt_Roman.Sql.Clear;
          qrAnt_Roman.Sql.Add(' Select ee.ProdCod, Sum(ee.Qtde) ' +
                              '   From roman cc, romanmer ee' +
                              '  Where (cc.Lanc=ee.Lanc)' +
                              '   and cc.Fecha = '+QuotedStr('S')+
                              '   and '+vdtant +
                              '  Group by ee.ProdCod');
          qrAnt_Roman.Open;
        end;

        //Saída
        qrRoman.Close;
        qrRoman.Sql.Clear;
        qrRoman.Sql.Add(' Select ee.ProdCod, Sum(ee.Qtde) ' +
                        '   From roman cc, romanmer ee' +
                        '  Where (cc.Lanc=ee.Lanc)' +
                        '   and cc.Fecha = '+QuotedStr('S')+
                        '   and '+vdtper +
                        '  Group by ee.ProdCod');
        qrRoman.Open;
      end;

      //Esteira
      if (CCB40.Checked) then
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

    end;
  end;

  //Saida outros
  if (CCB60.Checked) then
  begin
    fBar(1,1,'Aguarde calculando(Vendas)...');

    //Saldo Anterior
    if not CCB80.Checked then
    begin
      fBar(1,1,'Aguarde calculando...');
      qrAnt_Merca.Close;
      qrAnt_Merca.Sql.Clear;
      qrAnt_Merca.Sql.Add(' Select ee.Codigo, Sum(ee.Qtde) ' +
                          '   From arvenda cc, arvendco ee' +
                          '  Where (cc.Lanc=ee.Lanc)' +
                          '   and '+vdtant +
                          '  Group by ee.Codigo');
      qrAnt_Merca.Open;
    end;

    //Venda-Saída
    qrMerca.Close;
    qrMerca.Sql.Clear;
    qrMerca.Sql.Add(' Select ee.Codigo, Sum(ee.Qtde) ' +
                    '   From arvenda cc, arvendco ee' +
                    '  Where (cc.Lanc=ee.Lanc)' +
                    '   and '+vdtper +
                    '  Group by ee.Codigo');
    qrMerca.Open;
  end;

  //Ajuste
  if CCB30.Checked then
  begin
    qrAjuste.Close;
    qrAjuste.Sql.Clear;
    qrAjuste.Sql.Add(' Select cc.Codigo, Sum(cc.Entrada), Sum(cc.Saida) ' +
                     '   From AjusteCom cc' +
                     '  Where '+vdtper +
                     '  Group by cc.Codigo');
    qrAjuste.Open;
  end;


  TEstoque.Close;
  qrProduto.Close;
  qrProduto.Sql.Clear;
  qrProduto.Sql.Add('select codigo, descricao, unidade, compra from cadmerca ');
  qrProduto.Sql.Add(' where (ATIVO = ''S'' and MOSTRAEST = ''S'')');
  qrProduto.Sql.Add('   and grupocod = '+Copy(cb2.Text,1,2));
  if (StrToInt(frPree(meCodigo.Text,7,'0',0)) <> 0) then
    qrProduto.Sql.Add(' and codigo = '+frPree(meCodigo.Text,7,'0',0))
  else begin
    //Apresentação
//    if (pos('MODELO', xEmpre) > 0) then
//      qrProduto.Sql.Add(' and (codigo > 2002 and codigo < 2041)');
  end;

  qrProduto.Sql.Add(' order by codigo');
  qrProduto.Open;
  TEstoque.Open;

  try
    vlin :=0;
    qrProduto.DisableControls;
    fBar(0,qrProduto.RecordCount,'Aguarde...');
    while not qrProduto.Eof do
    begin
      inc(vlin);
      fBar(1,1,'Aguarde calculando...'+qrProduto.FieldByName('descricao').asString);
      vproduto := qrProduto.Fields[0].asInteger;
      vpreco   := qrProduto.FieldByName('compra').AsFloat;

      vant :=0; vent :=0; vsai :=0; vaju :=0; vest :=0;

      //Entrada - Compra
      if CCB10.Checked then
      begin
        //Saldo Anterior
        if not CCB80.Checked then
        begin
          if qrAnt_Entrada.Locate('codigo', vproduto, []) then
            vant := qrAnt_Entrada.Fields[1].asFloat;

          //Ajuste
          if CCB30.Checked then
          begin
            if qrAnt_Ajuste.Locate('codigo', vproduto, []) then
              vant := vant + qrAnt_Ajuste.Fields[1].asFloat - qrAnt_Ajuste.Fields[2].asFloat;
          end;
        end;

        //Compra-Entrada
        if qrEntrada.Locate('codigo', vproduto, []) then
        begin
          vent := qrEntrada.Fields[1].asFloat;
          if (qrEntrada.Fields[1].asFloat <> 0) then
            vpreco := frDeci(qrEntrada.Fields[2].asFloat / qrEntrada.Fields[1].asFloat, 2);
          //Atualiza o preço de compra - para fazer a média
          fSql(1,4,['Update cadmerca set compra = ' +frInvV(vpreco)+ ' Where codigo = 0'+IntToStr(vproduto)],1);
        end;
      end;

      //Saida - Venda - Embalagens
      if (CCB20.Checked or CCB40.Checked)  and (Copy(CB2.Text,1,2)='02') then
      begin
        //Pega Quantidade do produto
        fSql(1,2,['Select cc.Lanc, cc.Qtde From CadProbx cc',
                  ' Where cc.Codigo = 0'+IntToStr(vproduto)],2);
        fBar(3,dm.qrSql2.RecordCount,'');
        dm.qrSql2.DisableControls;
        while not dm.qrSql2.Eof do
        begin
          fBar(4,1,'');
          vqtd := dm.qrSql2.Fields[1].asFloat;

          //Nota fiscal
          if vEstoqueSaidaNF then
          begin
            if (CCB20.Checked) then
            begin
              //Saldo Anterior
              if not CCB80.Checked then
              begin
                if qrAnt_Saida.Locate('codigo', dm.qrSql2.Fields[0].asInteger, []) then
                  vant := vant - (vqtd * qrAnt_Saida.Fields[1].asFloat);
              end;

              //Venda-Saída
              if qrSaida.Locate('codigo', dm.qrSql2.Fields[0].asInteger, []) then
                vsai := vsai + (vqtd * qrSaida.Fields[1].asFloat);
            end;

          end
          else begin
            //classificação

            if (CCB20.Checked) then
            begin
              //Saldo Anterior
              if not CCB80.Checked then
              begin
                if qrAnt_Roman.Locate('prodcod', dm.qrSql2.Fields[0].asInteger, []) then
                  vant := vant - (vqtd * qrAnt_Roman.Fields[1].asFloat);
              end;

              //Saída
              if qrRoman.Locate('prodcod', dm.qrSql2.Fields[0].asInteger, []) then
                vsai := vsai + (vqtd * qrRoman.Fields[1].asFloat);
            end;

            //Esteira
            if (CCB40.Checked) then
            begin
              if cdsEsteira.Locate('Codigo', dm.qrSql2.Fields[0].asInteger, []) then
                vest := vest + (vqtd * cdsEsteiraQtde.asFloat);
            end;
          end;

          dm.qrSql2.Next;
        end;
        dm.qrSql2.EnableControls;
      end;

      //Saida - Venda - Embalagens
      if (CCB60.Checked) then
      begin
        //Saldo Anterior
        if not CCB80.Checked then
        begin
          if qrAnt_Merca.Locate('codigo', vproduto, []) then
            vant := vant - (qrAnt_Merca.Fields[1].asFloat);
        end;

        //Venda
        if qrMerca.Locate('codigo', vproduto, []) then
          vsai := vsai + (qrMerca.Fields[1].asFloat);
      end;

      //Ajuste
      if CCB30.Checked then
      begin
        if qrAjuste.Locate('codigo', vproduto, []) then
          vaju := qrAjuste.Fields[1].asFloat - qrAjuste.Fields[2].asFloat;
      end;

      TEstoque.Append;
      TEstoque.FieldByName('Linha').asInteger    := vlin;
      TEstoque.FieldByName('Codigo').asInteger   := vproduto;
      TEstoque.FieldByName('Descricao').asString := qrProduto.FieldByName('descricao').asString;
      TEstoque.FieldByName('Unidade').asString   := qrProduto.FieldByName('unidade').asString;
      TEstoque.FieldByName('AcesoCod').asInteger :=1000+xace;
      TEstoque.FieldByName('Cal1').asFloat  := frDeci(vant,2);
      TEstoque.FieldByName('Cal2').asFloat  := frDeci(vent,2);
      TEstoque.FieldByName('Cal3').asFloat  := frDeci(vsai,2);
      TEstoque.FieldByName('Cal4').asFloat  := frDeci(vaju,2);
      TEstoque.FieldByName('Cal5').asFloat  := frDeci(vest,2);

      vsaldo := vant+vent+vaju-vsai-vest;
      TEstoque.FieldByName('Cal10').asFloat := frDeci(vsaldo,2);
      TEstoque.FieldByName('Cal8').asFloat  := frDeci(vpreco,2);
      if (vsaldo > 0) then
        TEstoque.FieldByName('Cal9').asFloat  := frDeci(vsaldo * vpreco,2)
      else
        TEstoque.FieldByName('Cal9').asFloat  := 0;
      TEstoque.Post;

      qrProduto.Next;
    end;
  finally
    fBar(2,0,'');
    TEstoque.ApplyUpdates(0);
    qrProduto.EnableControls;
    TEstoque.First;
    DbGrid2.SetFocus;
  end;

  cbSemMovimento.onExit(cbSemMovimento);

  Timer1.Enabled  := True;

  dm.TParam.Edit;
  dm.TParam.FieldByName('Time_Estoque').asInteger := seTime.Value;
  dm.TParam.Post;

end;

procedure TFfrmEstoqueOut.SETimeChange(Sender: TObject);
begin
  if seTime.Value > 0 then
  begin
    Timer1.Enabled  := False;
    Timer1.Interval := seTime.Value * 60000;
    Timer1.Enabled  := True;
  end
end;

procedure TFfrmEstoqueOut.Timer1Timer(Sender: TObject);
begin
  if seTime.Value > 0 then
    sbCalcular.OnClick(Sender);
end;

procedure TFfrmEstoqueOut.SB7Click(Sender: TObject);
begin
  if qrEstoqueOut<>Nil then qrEstoqueOut.Destroy; Application.CreateForm(TqrEstoqueOut, qrEstoqueOut);
  with qrEstoqueOut do
  begin
    qrDados.Close;
    qrDados.Open;
    qrDados.Filter := '';
    qrDados.Filtered := False;
    if not cbSemMovimento.Checked then
    begin
      qrDados.Filter := '(CAL10 <> 0) or (CAL1 <> 0) or (CAL2 <> 0) or (CAL3 <> 0) or (CAL4 <> 0) or (CAL5 <> 0)';
      qrDados.Filtered := True;
    end;

    QRLabel0.Caption:='Estoque de '+Trim(Copy(CB2.Text,4,50))+
                      ' no período '+DateToStr(dtpInicial.date)+
                      ' até '+DateToStr(dtpFinal.Date);
    PrinterSettings.PrinterIndex := fImpr('Imp1');
    Preview;
  end;
end;

end.

