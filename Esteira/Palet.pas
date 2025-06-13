unit Palet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,
  Grids, DBGrids, Spin, DelphiZXingQRCode, DBClient, Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPalet = class(TForm)
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    PDados: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgProduto: TDBGrid;
    Panel4: TPanel;
    sb8: TSpeedButton;
    dsProduto: TDataSource;
    GroupBox2: TGroupBox;
    edzTotal: TDBEdit;
    GroupBox3: TGroupBox;
    lblPalet: TLabel;
    dsBxEsteira: TDataSource;
    GroupBox1: TGroupBox;
    edPaletQtde: TSpinEdit;
    Label1: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pnlPesquisa: TPanel;
    Label3: TLabel;
    edCodigo: TEdit;
    SBP5: TSpeedButton;
    cdsProduto: TFDQuery;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoVQTDE: TFMTBCDField;
    cdsProdutomostra: TStringField;
    cdsProdutozPalets: TFloatField;
    cdsProdutozSel: TStringField;
    cdsProdutozQtde: TIntegerField;
    cdsProdutozTotal: TAggregateField;
    cdsBxEsteira: TFDQuery;
    cdsPalet: TFDQuery;
    cdsBxEsteiraLOTELANC: TIntegerField;
    cdsBxEsteiraLANC: TIntegerField;
    cdsBxEsteiraLOTE: TIntegerField;
    cdsBxEsteiraQTDE: TFMTBCDField;
    cdsBxEsteiraPALET: TIntegerField;
    cdsBxEsteiraTEXTO6: TStringField;
    cdsPaletLANC: TIntegerField;
    cdsPaletESTEIRA: TIntegerField;
    cdsPaletLOTE: TIntegerField;
    cdsPaletVARIECOD: TIntegerField;
    cdsPaletCATEGCOD: TIntegerField;
    cdsPaletCODIGO: TIntegerField;
    cdsPaletQTDE: TFMTBCDField;
    cdsPaletBARRA: TStringField;
    cdsPaletNUMERO: TIntegerField;
    cdsPaletVARIEDES: TStringField;
    cdsPaletCATEGDES: TStringField;
    cdsPaletDESCRICAO: TStringField;
    cdsPaletUNIDADE: TStringField;
    cdsPaletCALIBREDES: TStringField;
    cdsPaletWEBQRCODEL1: TStringField;
    cdsPaletWEBQRCODEL2: TStringField;
    cdsPaletWEBQRCODEL3: TStringField;
    cdsPaletWEBQRCODEL4: TStringField;
    procedure Configurar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPaletQtdeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sb8Click(Sender: TObject);
    procedure dbgProdutoDblClick(Sender: TObject);
    procedure dbgProdutoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edCodigoChange(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure dbgProdutoExit(Sender: TObject);
    procedure SBP5Click(Sender: TObject);
    procedure cdsProdutoCalcFields(DataSet: TDataSet);
  private

    vPaletnr, vPaletqt: Integer;
    procedure pAbreSql;
    procedure pCriarTabelaPalet;
    procedure pObterPalet;

  public

    { Public declarations }
    function pProcessarManual:Boolean;
    procedure pImprimeEtiq(vConfigura: Boolean);

  end;

var
  FPalet: TFPalet;

implementation

{$R *.DFM}
uses Esteira, Rotina, Data, rlPalet, zModeloRel, PaletAvulso;

procedure TFPalet.FormCreate(Sender: TObject);
begin

  pCriarTabelaPalet;

end;

procedure TFPalet.FormShow(Sender: TObject);
begin

  pAbreSql;
  pObterPalet;

end;

procedure TFPalet.cdsProdutoCalcFields(DataSet: TDataSet);
begin

  if (cdsProdutovqtde.asInteger <> 0) and (edPaletQtde.Value <> 0) then
    cdsProdutozPalets.AsFloat := fTransfx((cdsProdutovqtde.asInteger div edPaletQtde.Value),2)
  else
    cdsProdutozPalets.AsFloat := 0;

  if (cdsProdutozQtde.AsInteger < 0) then
    cdsProdutozQtde.Clear;

  if (cdsProdutozQtde.AsInteger > cdsProdutovQtde.AsInteger) then
    cdsProdutozQtde.AsInteger := cdsProdutovQtde.AsInteger;

  if (cdsProdutozQtde.AsInteger <> 0) then
    cdsProdutozSel.AsString := 'X'
  else
    cdsProdutozSel.Clear;

end;

procedure TFPalet.edCodigoChange(Sender: TObject);
var vcod: Integer;
begin

  if (Length(Trim(edCodigo.Text)) > 5) then
  begin
    vcod := StrToIntDef(edCodigo.Text,0);
    cdsProduto.Locate('codigo', vcod, []);
  end;

end;

procedure TFPalet.edCodigoExit(Sender: TObject);
begin

  dbgProduto.SetFocus;
  edCodigo.Text := '';

end;

procedure TFPalet.edPaletQtdeChange(Sender: TObject);
var vi: Integer;
begin

  vi := cdsProdutoCodigo.AsInteger;
  cdsProduto.Close;
  cdsProduto.Open;
  cdsProduto.Locate('Codigo', vi, []);

end;

procedure TFPalet.pAbreSql;
begin

  cdsProduto.Filtered := False;
  cdsProduto.Close;
  cdsProduto.Sql.Clear;
  cdsProduto.Sql.Add('Select codigo, descricao, sum(qtde - (coalesce(palet,0))) as vqtde');
  cdsProduto.Sql.Add('  From '+xEsteiraTabela);
  cdsProduto.Sql.Add(' Group by codigo, descricao');
  cdsProduto.Sql.Add(' Order by codigo');
  cdsProduto.Open;

  cdsProduto.Filter := 'vqtde > 0';
  cdsProduto.Filtered := True;

end;

procedure TFPalet.pCriarTabelaPalet;
begin
  try
     //Cria tabela -> EsteiraPalet
     dm.TExiste.Close;
     dm.TExiste.TableName := 'PALETIMP';
     if not dm.TExiste.Exists then
     begin
       fSql(1,['Create Table PALETIMP'+
                ' ( LANC      INTEGER,'+
                '   ESTEIRA   INTEGER,'+
                '   LOTE      INTEGER,'+
                '   VARIECOD  INTEGER,'+
                '   CATEGCOD  INTEGER,'+
                '   CODIGO    INTEGER,'+
                '   QTDE      DOUBLE,'+
                '   BARRA     VARCHAR(13),'+
                '   VARIEDES  VARCHAR(30),'+
                '   CATEGDES  VARCHAR(30),'+
                '   DESCRICAO VARCHAR(80),'+
                '   UNIDADE   VARCHAR(5),'+
                '   CALIBREDES VARCHAR(15),'+
                '   WEBQRCODEL1 VARCHAR(120),'+
                '   WEBQRCODEL2 VARCHAR(120),'+
                '   WEBQRCODEL3 VARCHAR(120),'+
                '   WEBQRCODEL4 VARCHAR(120)'+
                ')'], 1);
     end;
  finally

    dm.TExiste.Close;

  end;

end;

procedure TFPalet.sb8Click(Sender: TObject);
begin

  edPaletQtde.SetFocus;
  if pProcessarManual then
    pImprimeEtiq(False);

end;

procedure TFPalet.SBP5Click(Sender: TObject);
var lvar, lcat, lcal: String;
begin

  if FPaletAvulso = nil then
    Application.CreateForm(TFPaletAvulso, FPaletAvulso);

  with FPaletAvulso do
  begin

    lvar := Copy(cdsProdutoCodigo.Text, 1, 2);
    lcat := Copy(cdsProdutoCodigo.Text, 3, 2);
    lcal := Copy(cdsProdutoCodigo.Text, 5, 3);

    //Salva Variedade
    fSql(1,['select variecod, variedes, count(*)'+
            '  from roman '+
            ' group by variecod, variedes'],1);
    CB0.Items.Clear;
    while not dm.qrSql1.Eof do begin
       CB0.Items.Add(fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text));
       if (lvar = dm.qrSql1.Fields[0].AsString) then
         CB0.Text:=fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text);
       dm.qrSql1.Next;
    end;

    //Salva Categorias
    fSql(1,['select categcod, categdes, count(*)'+
            '  from cadprodu '+
            ' group by categcod, categdes'],1);
    CB1.Items.Clear;
    while not dm.qrSql1.Eof do begin
       CB1.Items.Add(fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text));
       if (lcat = dm.qrSql1.Fields[0].AsString) then
         CB1.Text:=fPreencher(dm.qrSql1.Fields[0].AsInteger,2,'0',0)+'-'+Trim(dm.qrSql1.Fields[1].Text);

       dm.qrSql1.Next;
    end;

    //Salva calibre
    fSql(1,['Select Calibre, Count(*) From CadProdu Group By Calibre'],1);
    CB2.Items.Clear;
    while not dm.qrSql1.Eof do begin
       CB2.Items.Add(fPreencher(dm.qrSql1.Fields[0].AsInteger,3,'0',0));
       if (lcal = fPreencher(dm.qrSql1.Fields[0].AsInteger,3,'0',0)) then
         CB2.Text:=fPreencher(dm.qrSql1.Fields[0].AsInteger,3,'0',0);

       dm.qrSql1.Next;
    end;

    //Geral
    SE2.Value := StrToIntDef(Trim(lblPalet.Caption),0);
    SE3.Value := edPaletQtde.Value;
    SE1.Value := cdsProdutozQtde.AsInteger;
    SE4.Value := StrToInt(xvlot);
    edOrigem.Text := xpalemp;

  end;


  FPaletAvulso.ShowModal;

end;

function TFPalet.pProcessarManual: Boolean;
var  vtexto: String;
     vQtdeTotal, vQtdeCx, vqtd, vxqtdx, vcont, vsomapr: Integer;
     vid, vi, vpal, vnumero, vnumlancit: Integer;

begin

  Result := False;
  //Calcula Qtde
  vQtdeTotal := StrToIntDef(edzTotal.Text,0);

  if (vQtdeTotal < 1) then exit;

  if (vQtdeTotal < edPaletQtde.Value) then
    vQtdeCx  := vQtdeTotal
  else
    vQtdeCx  := edPaletQtde.Value;

  if vQtdeCx <= 0 then
    Exit;

  if not frPerg(PChar('Deseja baixar e imprimir'+#13#10+' Palet: '+lblPalet.Caption)) then
    exit;

  try
    try

      vpal  := StrToIntDef(Trim(lblPalet.Caption),0);
      vcont := vQtdeCx;

      //Criar no retaguarda o palet
      vnumero := frGenerator('PALETCAB','NUMERO',1);
      fSql(3,[' Insert into PALETCAB (NUMERO, PALET, BAIXA, DATA, QTDE, PRODCOD, PALQTDE, EMPRECOD, ACESOCOD) ',
              ' Values ('+IntToStr(vnumero)+', '+
                          IntToStr(vpal)+', '+
                          QuotedStr('N')+', '+
                          InvData(Date)+', '+
                          IntToStr(vQtdeCx)+', '+
                          Copy(cdsProdutoCodigo.AsString,1,2)+
                          ', 1, 1, 1)'],2);

      cdsProduto.DisableControls;
      vid := cdsProdutoCodigo.AsInteger;
      cdsProduto.First;

      //Deve percorrer todos com X e ir salvando

      while not cdsProduto.Eof do
      begin

        if cdsProdutozSel.AsString = 'X' then
        begin

          vsomapr := cdsProdutozQtde.AsInteger;
          if (vsomapr >= vcont) then
            vsomapr := vcont;

          //Baixa a quantidade
          cdsBxEsteira.Close;
          cdsBxEsteira.Sql.Clear;
          cdsBxEsteira.Sql.Add('Select LOTELANC, LANC, LOTE, QTDE, PALET, TEXTO6');
          cdsBxEsteira.Sql.Add('  From '+xEsteiraTabela);
          cdsBxEsteira.Sql.Add(' Where codigo = 0'+cdsProdutoCodigo.AsString);
          cdsBxEsteira.Sql.Add('   and (qtde > (coalesce(palet,0)))');
          cdsBxEsteira.Sql.Add(' Order by LOTELANC, LANC');
          cdsBxEsteira.Open;
          cdsBxEsteira.DisableControls;

          while not cdsBxEsteira.Eof do
          begin

            vqtd   := (cdsBxEsteira.FieldByName('QTDE').asInteger - cdsBxEsteira.FieldByName('PALET').asInteger);
            vtexto := Trim(cdsBxEsteira.FieldByName('TEXTO6').asString) + IntToStr(vpal)+';';

            //Verifica se não fracionado o valor
            if (vsomapr < vqtd) then
              vqtd := vsomapr;

            if (vqtd >= vcont) then
            begin

              vxqtdx := vcont;
              vcont := 0;

            end
            else begin

              vxqtdx := vqtd;
              vcont := vcont - vqtd;

            end;

            vsomapr := vsomapr - vxqtdx;

            //Salva
            fSql(3,['update '+xEsteiraTabela+
                     ' set palet = 0'+IntToStr( cdsBxEsteira.FieldByName('PALET').asInteger + vxqtdx)+
                     ', texto6 = '+QuotedStr(vtexto)+
                     ' where lanc     = 0'+cdsBxEsteira.FieldByName('lanc').AsString+
                     '   and lote     = 0'+cdsBxEsteira.FieldByName('lote').AsString+
                     '   and lotelanc = 0'+cdsBxEsteira.FieldByName('lotelanc').AsString+
                     '   and codigo   = 0'+cdsProdutocodigo.AsString
                     ],1);

           //Criar no retaguarda o palet
            vnumlancit := frGenerator('PALETPRO','LANCIT',1);
            fSql(4,[' Insert into PALETPRO (NUMERO, LANCIT, LOTELANC, LOTE, QTDE, CODIGO, DESCRICAO) ',
                    ' Values ('+IntToStr(vnumero)+', '+
                                IntToStr(vnumlancit)+', '+
                                cdsBxEsteira.FieldByName('lotelanc').AsString+', '+
                                cdsBxEsteira.FieldByName('lote').AsString+', '+
                                IntToStr(vxqtdx)+', '+
                                cdsProdutoCodigo.AsString+', '+
                                QuotedStr(cdsProdutoDescricao.AsString)+')'
                                ],2);

            //Se a contage, zerar deve sair do loop
            if (vcont <= 0)  or (vsomapr <= 0) then
              cdsBxEsteira.Last;

            cdsBxEsteira.Next;

          end;
          cdsBxEsteira.EnableControls;
          cdsBxEsteira.Close;

        end;

        if (vcont <= 0)  then
          cdsProduto.Last;

        cdsProduto.Next;

      end;

    except

      on E: Exception do
        ShowMessage('Falha: '+E.Message);

    end;
  finally

    cdsProduto.EnableControls;
    cdsProduto.Locate('CODIGO', vid, []);

    cdsPalet.Close;
    fSql(1,['Delete From PALETIMP'],1);
    cdsPalet.Open;

    cdsPalet.Append;
    cdsPaletLanc.asInteger    := StrToIntDef(Trim(lblPalet.Caption),0);
    cdsPaletEsteira.asInteger := 1;
    cdsPaletLote.asString     := cdsBxEsteira.FieldByName('lote').AsString;
    cdsPaletCodigo.asInteger  := cdsProdutoCodigo.asInteger;
    cdsPaletDescricao.asString:= Trim(Copy(cdsProdutoCodigo.asString,1,50));
    cdsPaletBarra.asString    := fPreencher(cdsPaletLanc.asInteger, 12, '0', 0);

    cdsPaletQtde.asInteger  := vQtdeCx;

    if dm.TCadProdu.Locate('Codigo', cdsProdutoCodigo.asInteger, []) then
    begin

      cdsPaletVarieCod.asInteger  := dm.TCadProdu.FieldByName('VarieCod').asInteger;
      cdsPaletVarieDes.asString   := dm.TCadProdu.FieldByName('VarieDes').asString;
      cdsPaletCategCod.asInteger  := dm.TCadProdu.FieldByName('CategCod').asInteger;
      cdsPaletCategDes.asString   := dm.TCadProdu.FieldByName('CategDes').asString;
      cdsPaletUnidade.asString    := dm.TCadProdu.FieldByName('Unidade').asString;
      cdsPaletCalibreDes.asString := dm.TCadProdu.FieldByName('CalibreDes').asString;

    end;

    cdsPalet.Post;
    cdsPalet.ApplyUpdates(0);

    //Numero palet
    fSql(3,[' Update zGenerator set Valor = '+IntToStr(vPaletnr)+
            ' Where Tabela = '+QuotedStr('PALET') + ' and Campo = '+QuotedStr('NUMERO')],1);

    vPaletqt := edPaletQtde.Value;
    //Qtde cx por palet
    fSql(3,[' Update zGenerator set Valor = '+IntToStr(vPaletqt)+
            ' Where Tabela = '+QuotedStr('PALET') + ' and Campo = '+QuotedStr('QTDE')],1);


    pObterPalet;

    vi := cdsProdutoCodigo.AsInteger;
    cdsProduto.Close;
    cdsProduto.Open;
    cdsProduto.Locate('Codigo', vi, []);

    Result := True;

  end;

end;

procedure TFPalet.Configurar1Click(Sender: TObject);
begin

  pImprimeEtiq(True);

end;

procedure TFPalet.dbgProdutoDblClick(Sender: TObject);
begin

  if cdsProduto.IsEmpty then Exit;

  cdsProduto.Edit;

  if (cdsProdutozSel.AsString <> 'X') then
  begin
    cdsProdutozSel.AsString := 'X';
    cdsProdutozQtde.AsInteger := cdsProdutovqtde.AsInteger;
  end
  else begin
    cdsProdutozSel.Clear;
    cdsProdutozQtde.Clear;
  end;

  cdsProduto.Post;

end;

procedure TFPalet.dbgProdutoDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if dbgProduto.SelectedRows.CurrentRowSelected then
    dbgProduto.Canvas.Font.Color:= clRed;
  dbgProduto.Canvas.FillRect(Rect);
  dbgProduto.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFPalet.dbgProdutoExit(Sender: TObject);
begin

  if cdsProduto.IsEmpty then Exit;

  cdsProduto.Edit;
  cdsProduto.Post;


end;

procedure TFPalet.pImprimeEtiq(vConfigura: Boolean);
begin

  xRelTela := UpperCase('FfrmImpPalet');
  Application.CreateForm(TFModeloRel, FModeloRel);
  FModeloRel.dsRelat.DataSet := cdsPalet;
  if not vConfigura then
  begin

    if FModeloRel.cdsDados.RecordCount <= 1 then
      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir)
    else begin
      FModeloRel.rzpMenu.Visible := False;
      FModeloRel.ShowModal;
    end;
    Sleep(1000);

  end
  else
    FModeloRel.ShowModal;

end;

procedure TFPalet.pObterPalet;
begin

  vPaletnr := frGenerator('PALET','NUMERO',0) + 1;
  vPaletqt := frGenerator('PALET','QTDE',0);
  lblPalet.Caption := IntToStr(vPaletnr);
  edPaletQtde.Value := vPaletqt;

end;

end.
