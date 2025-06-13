unit frmEstoquePalets;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, StdCtrls, ExtCtrls, Mask, Menus, Db, DBTables,FileCtrl,
  Grids, DBGrids, ComCtrls, Spin, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFfrmEstoquePalet = class(TForm)
    SG1: TStringGrid;
    DataSource1: TDataSource;
    Timer1: TTimer;
    RzPanel1: TRzPanel;
    PMenu: TPanel;
    sbCalcular: TSpeedButton;
    sbImprimir: TSpeedButton;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    CCB20: TRadioButton;
    CCB30: TRadioButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    GroupBox3: TGroupBox;
    CB2: TComboBox;
    SETime: TSpinEdit;
    cbSemMovimento: TCheckBox;
    cbFracionada: TCheckBox;
    DBGrid1: TDBGrid;
    qrEstoque: TFDQuery;
    TEstoque: TFDQuery;
    TEstoqueID: TIntegerField;
    TEstoqueVCOD: TIntegerField;
    TEstoqueVDES: TStringField;
    TEstoqueCCOD: TIntegerField;
    TEstoqueCDES: TStringField;
    TEstoquePCOD: TIntegerField;
    TEstoquePDES: TStringField;
    TEstoqueCALD: TStringField;
    TEstoqueUNID: TStringField;
    TEstoqueQANT: TBCDField;
    TEstoqueQABE: TBCDField;
    TEstoqueQBAI: TBCDField;
    TEstoqueQAJU: TBCDField;
    TEstoqueQATU: TBCDField;
    TEstoqueACESOCOD: TIntegerField;
    TEstoqueREGLOG: TStringField;
    TEstoqueREG_ID: TIntegerField;
    qrProduto: TFDQuery;
    procedure sbCalcularClick(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbSemMovimentoExit(Sender: TObject);
    procedure cbSemMovimentoClick(Sender: TObject);
    procedure SETimeChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dtpInicialChange(Sender: TObject);
    procedure dtpFinalChange(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FfrmEstoquePalet: TFfrmEstoquePalet;

implementation

uses Menu, Rotina, Data, rlEstoquePal;

{$R *.DFM}

procedure TFfrmEstoquePalet.cbSemMovimentoClick(Sender: TObject);
begin

  DbGrid1.SetFocus;

end;

procedure TFfrmEstoquePalet.cbSemMovimentoExit(Sender: TObject);
begin

  TEstoque.Filter := '';
  TEstoque.Filtered := False;
  if not cbSemMovimento.Checked then
  begin
    TEstoque.Filter := '(QATU <> 0)';
    TEstoque.Filtered := True;
  end;

  TEstoque.First;

end;

procedure TFfrmEstoquePalet.dtpFinalChange(Sender: TObject);
begin
  if not(dtpFinal.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoquePalet.dtpInicialChange(Sender: TObject);
begin
  if not(dtpInicial.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmEstoquePalet.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FreeAndNil(FfrmEstoquePalet);

end;

procedure TFfrmEstoquePalet.FormCreate(Sender: TObject);
var vrec: Integer; vestoq:String;
begin
  dtpInicial.Date := StrToDate('01/01/'+FormatDateTime('yyyy', date));
  dtpfinal.Date := Date;
  vrec := 0;

  CB2.Items.Clear;
  CB2.Items.Add('Todas');
  fSql(1,1,['Select * From CadVarie Where Codigo>1 Order By Codigo'],1);
  while not dm.qrSql1.Eof do
  begin
    inc(vrec);
    CB2.Items.Add(frPree(dm.qrSql1.Fields[0].Text,2,'0',0)+'-'+dm.qrSql1.Fields[1].Text);
    dm.qrSql1.Next;
  end;
  CB2.Text := 'Todas';

  //Mostra útimo estoque
  TEstoque.Close;
  TEstoque.Open;
  cbSemMovimento.onExit(cbSemMovimento);

  dm.TParam.Close;
  dm.TParam.Open;
  seTime.Value := dm.TParam.FieldByName('Time_Estoque').asInteger;
//  Timer1.Enabled := True;

end;

procedure TFfrmEstoquePalet.sbCalcularClick(Sender: TObject);
var  vlin:Integer;
     vest:Real;
     vdtant,vdtper,vtipnf,vEsteira:String;
     vproduto, vpro: Integer;
     vDataAno: TDate;
begin
  Timer1.Enabled  := False;
  vDataAno := StrTodate('01/01/'+Copy(DatetoStr(dtpInicial.Date),7,4))-1;
  vdtant := '(cc.Data > '+frInvD(vDataAno)+' and cc.Data < '+frInvD(dtpInicial.Date)+')';
  vdtper := '(cc.Data >='+frInvD(dtpInicial.Date)+' and cc.Data < '+frInvD(dtpFinal.Date+1)+')';

  fBar(0,100,'Limpando...');
  fSql(1,1,['Delete From EstoquePal '],1);

  TEstoque.Close;

  qrProduto.Close;
  qrProduto.Sql.Clear;
  qrProduto.Sql.Add('select distinct pp.codigo, pp.descricao, pp.unidade, pp.variecod, pp.variedes, pp.categcod, pp.categdes, pp.calibredes');
  qrProduto.Sql.Add('  from cadprodu PP, PaletPro cc');
  qrProduto.Sql.Add(' where  PP.CODIGO = CC.CODIGO');

  if UpperCase(cb2.Text) <> 'TODAS'  then
    qrProduto.Sql.Add('   and pp.variecod = '+Copy(cb2.Text,1,2));

  qrProduto.Sql.Add(' order by pp.codigo');

  qrProduto.Open;
  TEstoque.Open;
  TEstoque.Filtered := False;

  try
    vlin :=0;
    fBar(0,qrProduto.RecordCount,'Aguarde...');
    try
      while not qrProduto.Eof do
      begin
        inc(vlin);
        fBar(1,1,'Aguarde calculando...'+qrProduto.Fields[0].asString);
        vproduto := qrProduto.Fields[0].asInteger;
        vest :=0;

        qrEstoque.Close;
        qrEstoque.Sql.Clear;
        qrEstoque.Sql.Add('Select cc.palet, Sum(pp.qtde) as vqtdep, Sum(cc.qtde) as vqtdec');
        qrEstoque.Sql.Add('  From PaletCab cc, PaletPro pp');
        qrEstoque.Sql.Add(' Where (cc.numero = pp.numero)');
        qrEstoque.Sql.Add('   and '+vdtper);
        qrEstoque.Sql.Add('   and pp.Codigo = 0'+IntToStr(vproduto));

        if CCB20.Checked then
          qrEstoque.Sql.Add('   and cc.Baixa = ''N''')
        else
          qrEstoque.Sql.Add('   and cc.Baixa = ''S''');

        qrEstoque.Sql.Add(' Group by cc.palet');
        qrEstoque.Sql.Add(' Order by cc.palet');
        qrEstoque.Open;
        while not qrEstoque.Eof do
        begin
          if cbFracionada.Checked then
          begin
            if (qrEstoque.Fields[2].AsFloat > 0) then
              vest := vest + qrEstoque.Fields[1].AsFloat / qrEstoque.Fields[2].AsFloat
            else
              vest := vest + 1
          end
          else
            vest := vest + 1;
          qrEstoque.Next;
        end;

        //Salva
        TEstoque.Append;
        TEstoque.FieldByName('ID').asInteger    := vlin;
        TEstoque.FieldByName('AcesoCod').asInteger :=1000+xace;
        TEstoque.FieldByName('VCOD').asInteger   := qrProduto.FieldByName('variecod').asInteger;
        TEstoque.FieldByName('VDES').asString    := qrProduto.FieldByName('variedes').asString;
        TEstoque.FieldByName('CCOD').asInteger   := qrProduto.FieldByName('categcod').asInteger;
        TEstoque.FieldByName('CDES').asString    := qrProduto.FieldByName('categdes').asString;
        TEstoque.FieldByName('PCOD').asInteger   := vproduto;
        TEstoque.FieldByName('PDES').asString    := qrProduto.FieldByName('descricao').asString;
        TEstoque.FieldByName('UNID').asString    := qrProduto.FieldByName('unidade').asString;
        TEstoque.FieldByName('CALD').asString    := qrProduto.FieldByName('calibredes').asString;
        TEstoque.FieldByName('QATU').asFloat := frDeci(vest,3);
        TEstoque.Post;

        qrProduto.Next;
      end;
    except
      qrProduto.First;
      Exit;
    end;
  finally
    fBar(2,0,'');
  end;

  cbSemMovimento.onExit(cbSemMovimento);

  TEstoque.First;
  DbGrid1.SetFocus;

  Timer1.Enabled  := True;
  dm.TParam.Edit;
  dm.TParam.FieldByName('Time_Estoque').asInteger := seTime.Value;
  dm.TParam.Post;

end;

procedure TFfrmEstoquePalet.SETimeChange(Sender: TObject);
begin
  if seTime.Value > 0 then
  begin
    Timer1.Enabled  := False;
    Timer1.Interval := seTime.Value * 60000;
    Timer1.Enabled  := True;
  end
end;

procedure TFfrmEstoquePalet.Timer1Timer(Sender: TObject);
begin
  if seTime.Value > 0 then
    sbCalcular.OnClick(Sender);
end;

procedure TFfrmEstoquePalet.SB7Click(Sender: TObject);
begin
  if qrEstoquePal<>Nil then qrEstoquePal.Destroy; Application.CreateForm(TqrEstoquePal, qrEstoquePal);
  with qrEstoquePal do begin
    qrDados.Close;
    qrDados.Sql.Clear;
    qrDados.Sql.Add('Select *');
    qrDados.Sql.Add('  From EstoquePal');

    if not cbSemMovimento.Checked then
      qrDados.Sql.Add(' Where (QATU <> 0)');

    qrDados.Sql.Add(' Order by ID');
    qrDados.Open;

    QRLabel0.Caption:='Estoque '+Trim(Copy(CB2.Text,4,50))+
                      ' no período '+DateToStr(dtpInicial.date)+
                      ' até '+DateToStr(dtpFinal.Date);
    PrinterSettings.PrinterIndex := fImpr('Imp1');
    Preview;
  end;

end;

end.

