unit Esteira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Midaslib, Mask, DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, jpeg, DBTables,
  Buttons, DB, DBClient, Provider, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, QRPrntr, Spin, RzPanel,
  DelphiZXingQRCode;

type
  TFEsteira = class(TForm)
    THora: TTimer;
    ppRelatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDados: TppBDEPipeline;
    dsRelat: TDataSource;
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    cdsCateg: TClientDataSet;
    cdsCategITEM: TIntegerField;
    dsBotao: TDataSource;
    cdsCategCAT03: TStringField;
    cdsCategCAT01: TStringField;
    cdsCategCAT02: TStringField;
    cdsCategCAT10: TStringField;
    cdsCategCAT11: TStringField;
    cdsCategCAT12: TStringField;
    cdsCategCAT20: TStringField;
    cdsCategCAT21: TStringField;
    cdsCategCAT22: TStringField;
    cdsCategCOL01: TIntegerField;
    cdsCategCOL02: TIntegerField;
    cdsCategCOL10: TIntegerField;
    cdsCategCOL11: TIntegerField;
    cdsCategCOL12: TIntegerField;
    cdsCategCOL21: TIntegerField;
    cdsCategCOL22: TIntegerField;
    cdsCategCOL20: TIntegerField;
    cdsCategCAT04: TStringField;
    cdsCategCAT05: TStringField;
    cdsCategCAT13: TStringField;
    cdsCategCAT14: TStringField;
    cdsCategCOL03: TIntegerField;
    cdsCategCOL04: TIntegerField;
    cdsCategCOL13: TIntegerField;
    cdsCategCOL14: TIntegerField;
    pnlForm: TPanel;
    lblTitulo: TLabel;
    PTela: TPanel;
    PImprimir: TPanel;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Panel13: TPanel;
    lblEsteira: TLabel;
    Panel10: TPanel;
    Label2: TLabel;
    edQtde: TSpinEdit;
    edContador: TSpinEdit;
    titVersao: TPanel;
    btnPrint: TBitBtn;
    btnFechar: TBitBtn;
    GBDados: TGroupBox;
    dsDados: TDataSource;
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosPESO: TStringField;
    cdsDadosLOTE: TStringField;
    cdsDadosLINHA1: TStringField;
    cdsDadosLINHA2: TStringField;
    cdsDadosLINHA3: TStringField;
    cdsDadosLINHA4: TStringField;
    cdsDadosLINHA5: TStringField;
    cdsDadosQTDE: TIntegerField;
    cdsDadosCONTADOR: TIntegerField;
    cdsDadosVARIEDADE: TStringField;
    cdsDadosCATEGORIA: TStringField;
    cdsDadosCALIBRE: TStringField;
    cdsDadosBARRA: TStringField;
    dspDados: TDataSetProvider;
    sqlDados: TQuery;
    sqlDadosCODIGO: TStringField;
    sqlDadosDESCRICAO: TStringField;
    sqlDadosPESO: TStringField;
    sqlDadosLOTE: TStringField;
    sqlDadosLINHA1: TStringField;
    sqlDadosLINHA2: TStringField;
    sqlDadosLINHA3: TStringField;
    sqlDadosLINHA4: TStringField;
    sqlDadosLINHA5: TStringField;
    sqlDadosQTDE: TIntegerField;
    sqlDadosCONTADOR: TIntegerField;
    sqlDadosVARIEDADE: TStringField;
    sqlDadosCATEGORIA: TStringField;
    sqlDadosCALIBRE: TStringField;
    sqlDadosBARRA: TStringField;
    Label1: TLabel;
    lblCodigo: TLabel;
    btnLote: TBitBtn;
    procedure THoraTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
    procedure btnLoteClick(Sender: TObject);
  private

    vImprimirDireto, vRotinaEmbalador: Boolean;
    QRCodeBitmap: TBitmap;
    vEmpresaDoc, vEmpresaEnd, vProdutor, vProdutorDoc, vProdutorEnd: String;
    procedure pRotinaCategoria;
    procedure AutoSizeDBGrid(const xDBGrid: TDBGrid);
    procedure pImprimirFundo(vDesign:Boolean);

  public

    procedure fLoteLeitura;
    procedure fLoteArquivo;
    procedure fLoteAbreDados;

  end;

var
  FEsteira: TFEsteira;
  xTotal: Double;
  xpalImp,xpaletnr,xpalqtd,xcodreg,xLanc,xApp,xComando:Integer;
  xpalemp,xpalsim,ximpunica,ximpetiq,ximplocal,ximpEstoq,ximpLote:String;
  xsim,ximp,xdirini,xDirSi,xDirDB:String;
  vrelarquivo,xvlan,xvlot,xvcod,xvdes,xvcodanterior,xvlotant,xvlcl:String;
  xcodant: array[1..20] of String;
  xcpfcnpj, xanomes: String;
  vc:array  [0..20] of string;

implementation

uses Data, Rotina, zModeloRel;

{$R *.DFM}

procedure TFEsteira.FormCreate(Sender: TObject);
var vi: Integer;
    vtemp: String;
    vArq:TextFile;
begin

  xcodreg := 0;
  xcomando:= 0;
  xvcodanterior := '';

  titVersao.Caption := 'Versão:'+frVersao;
  Application.ProcessMessages;
  Sleep(500);

  THora.Enabled:=True;
  vImprimirDireto := False;
  Application.ProcessMessages;
  Sleep(500);

  vtemp := frGetTemporaryDir;
  xesteira := '1';

  lblEsteira.Caption := 'Esteira 0'+xesteira;

end;

procedure TFEsteira.THoraTimer(Sender: TObject);
var vArq:TextFile;
    xAno, xExiste:String;
begin
  if xcomando=0 then
  begin
     GBDados.Visible:=False;
     PImprimir.Visible:=False;
     THora.Enabled:=False;
     THora.Interval:=10;
     xcomando:=10;
     xAno:=Copy(DateToStr(Date),7,4);
     Application.ProcessMessages;

     //Banco de dados
     try
       //procura ou mapea rede
       Sleep(2000);
       xdirsi:=ExtractFilePath(Application.ExeName);
       Application.ProcessMessages;
       if fileexists(xdirsi+'fdb.ini') then
       begin
         AssignFile(varq,xdirsi+'fdb.ini');
         Reset(varq);
         Readln(varq,xdirsi);
         CloseFile(varq);
       end;
       if trim(xdirsi) = '' then
         xdirsi:=ExtractFilePath(Application.ExeName);

       xdirdb:=xdirsi+'DADOS\BDFRUTIS.MDB';
       if not FileExists(xdirdb) then begin
         ShowMessage('Sistema Paralizado ou Fora da Rede!'+#13+xdirdb);
         Halt;
       end;
       dm.Session1.Active := False;
       dm.JaeAdminProd.Connected:=False;
       dm.JaeAdminProd.Params.Add('PASSWORD=acwebdobrasil');
       dm.JaeAdminProd.AliasName:='ACWebProducao';

       dm.JaeAdminProd.Connected:=True;
     except
       dm.JaeAdminProd.Connected:=False;
       if frOBDC(xdirdb,'ACWebProducao') then
         dm.JaeAdminProd.Connected:=True
       else Halt;
     end;
     //Esteira
     Sleep(1000);
     if FileExists(xdirsi+'DADOS\BDEsteira.mdb') then
     begin
       try
         dm.Session2.Active := False;
         dm.JaeEsteira.Connected:=False;
         dm.JaeEsteira.AliasName:='ACWebEsteira';
         dm.JaeEsteira.Connected:=True;
       except
         dm.JaeEsteira.Connected:=False;
         if frOBDC(xdirsi+'DADOS\BDEsteira.mdb','ACWebEsteira') then
           dm.JaeEsteira.Connected:=True
         else Halt;
       end;
     end;
     xdirini:=ExtractFilePath(Application.ExeName);
     ximpunica := 'S';
     ximpetiq  := 'N';
     ximplocal := 'N';
     ximpestoq := 'N';
     ximplote  := 'N';

     if fileexists(xdirini+'Dados\Leitorbarra.ini') then
     begin
       AssignFile(varq,xdirini+'Dados\Leitorbarra.ini');
       Reset(varq);
       Readln(varq,ximpetiq);
       ximpetiq  := Trim(Copy(ximpetiq,11,3));
       Readln(varq,ximpunica);
       ximpunica := Trim(Copy(ximpunica,11,3));
       Readln(varq,ximplocal);
       ximpestoq := Trim(Copy(ximplocal,16,3));
       ximplote  := Trim(Copy(ximplocal,21,3));
       ximplocal := Trim(Copy(ximplocal,11,3));
       CloseFile(varq);
     end;

     PImprimir.Visible := True;

     //abre comando esteira
     xpalsim := 'N';
     xpaletnr:= 0;
     xpalqtd := 0;
     xpalemp := '';
     xpalimp := 0;

     //Geral - continuação
     ximp:='00'; xsim:='nao';

     fLoteArquivo;
     fLoteLeitura;

     pnlForm.Top  := (Height - pnlForm.Height) div 2;
     pnlForm.Left := (Width - pnlForm.Width) div 2;

     GBDados.Visible:=True;
     GBDados.Enabled:=True;

  end;
end;

procedure TFEsteira.fLoteArquivo;
var vArq:TextFile;
begin
  try
    xvlotant := xvlot;
    AssignFile(varq,xdirini+'DADOS\Config.INI');
    Reset(varq);
    Readln(varq,xvlot);
    Readln(varq,xvcod);
    Readln(varq,xvdes);
    Readln(varq,xvlan);
    Readln(varq,xvlcl);
    CloseFile(varq);
    xvlot := Trim(Copy(xvlot,11,20));
    xvcod := Trim(Copy(xvcod,11,20));
    xvdes := Copy(xvdes,11,50);
    xvlan := Trim(Copy(xvlan,11,20));
    xvlcl := Trim(Copy(xvlcl,11,20));
    lblTitulo.Caption := 'Registro:'+xvlan+' - Variedade: '+ xvcod +' - '+ xvdes;

    xlanc  := 0;
    xtotal := 0;

    xanomes := Copy(DateToStr(Now),7,4);

  except
  end;
end;

procedure TFEsteira.fLoteAbreDados;
begin
  try
    dm.TEmpresa.Close;
    dm.TEmpresa.Open;
    xcpfcnpj := frSoNumero(dm.TEmpresa.FieldByName('cpf').asString);
    if trim(xcpfcnpj) = '' then
      xcpfcnpj := 'registro';

    dm.TCadProdu.Close;
    dm.TCadProdu.Open;

    dm.TCadCateg.Close;
    dm.TCadCateg.Open;

    pRotinaCategoria;

  except
    lblTitulo.Caption := 'Registro:'+xvlan+' - Variedade: '+ xvcod;
    ShowMessage('Não conseguiu abrir produtos!');
  end;
end;

procedure TFEsteira.fLoteLeitura;
var vlotant:String;
begin
  if Trim(vlotant)<>Trim(xvlot) then
    xcomando:=0;

  if dm.TEsteira.TableName <> 'ESTEIRAV'+fPreencher(xvCod, 2, '0', 0)+'L'+fPreencher(xvLan, 4, '0', 0) then
  begin
    try
      fLoteAbreDados;
      dm.TEsteira.Close;
      dm.TEsteira.TableName := 'ESTEIRAV'+fPreencher(xvCod, 2, '0', 0)+'L'+fPreencher(xvLan, 4, '0', 0);

      if dm.TEsteira.Exists then
        dm.TEsteira.Open
      else begin
        ShowMessage('Lote não encontrado, deve abrir um lote válido!'+#13+dm.TEsteira.TableName);
        //dm.JaeEsteira.Connected:=False;
        //Halt;
        dm.TEsteira.TableName := 'ESTEIRAV00L0000';
        if dm.TEsteira.Exists then
          dm.TEsteira.Open;
      end;
    except
      ShowMessage('Lote não encontrado, deve abrir um lote válido!'+#13+dm.TEsteira.TableName);
      //ShowMessage('Lote não encontrado!'+#13+dm.TEsteira.TableName);
      //dm.JaeEsteira.Connected:=False;
      //Halt;
      dm.TEsteira.TableName := 'ESTEIRAV00L0000';
      if dm.TEsteira.Exists then
        dm.TEsteira.Open;
    end;
  end;
end;

procedure TFEsteira.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFEsteira.btnLoteClick(Sender: TObject);
begin

  xcodreg := 0;
  xcomando:= 0;
  xvcodanterior := '';

  THora.Enabled:=True;
  Sleep(500);

  xesteira := '1';

  lblEsteira.Caption := 'Esteira 0'+xesteira;

end;

procedure TFEsteira.DBGrid2CellClick(Column: TColumn);
var vcod, x: Integer;
    vcol: String;
begin

  x := DBGrid2.SelectedIndex;
  vcol := fPreencher( x+1 ,2,'0',0);
  lblCodigo.Caption := cdsCateg.FieldByName('COL'+vcol).AsSTring;

end;

procedure TFEsteira.pRotinaCategoria;
var x, y: Integer;
   vf:String;
begin
  cdsCateg.Close;
  cdsCateg.CreateDataSet;

  for x := 0 to 15 do
  begin
    dbgrid2.Columns[x].Title.Caption := '';
    dbgrid2.Columns[x].Visible := False;
    dbgrid2.Columns[x].Width := 60;
  end;

  //Inserir Linhas Calibres
  cdsCateg.First;
  for x := 1 to 30 do
  begin

    cdsCateg.Append;
    cdsCategITEM.AsInteger := x;
    cdsCateg.Post;

  end;
  cdsCateg.First;

  y := 0;
  x := -1;
  dm.TCadProdu.Close;
  dm.TCadProdu.Open;
  dm.TCadProdu.First;
  dm.TCadProdu.Filtered := False;
  dm.TCadProdu.Filter   := 'VARIECOD = 0'+ Trim(xvcod);
  dm.TCadProdu.Filtered := True;

  dm.TCadProdu.First;
  while not dm.TCadProdu.eof do
  begin
    //if (dm.TCadProdu.FieldByName('VARIECOD').asString = xvcod) then
    if (dm.TCadProdu.FieldByName('IMPRIMEETIQ').asString = 'S') then
    begin

      if fPreencher(y,2,'0',0) <> fPreencher(dm.TCadProdu.FieldByName('CATEGCOD').asInteger,2,'0',0) then
      begin

        cdsCateg.First;

        y := dm.TCadProdu.FieldByName('CATEGCOD').asInteger;
        x := x + 1;
        vf := fPreencher( x+1 ,2,'0',0);

        if (y <> 50) then
        begin

          dbgrid2.Columns[x].Title.Caption := '('+ Trim(dm.TCadProdu.FieldByName('CATEGCOD').asString)+')'
                                                 + Trim(dm.TCadProdu.FieldByName('CATEGDES').asString);
          dbgrid2.Columns[x].Visible := True;

        end;

      end;

      //Calibre
      if (y <> 50) then
      begin

        cdsCateg.Edit;
        if (Trim(dm.TCadProdu.FieldByName('CALIBREDES').asString) <> '') then
          cdsCateg.FieldByName('CAT'+vf).AsString  := dm.TCadProdu.FieldByName('CALIBREDES').asString
        else
          cdsCateg.FieldByName('CAT'+vf).AsString  := dm.TCadProdu.FieldByName('CALIBRE').asString;
        cdsCateg.FieldByName('COL'+vf).AsInteger := dm.TCadProdu.FieldByName('CODIGO').asInteger;
        cdsCateg.Next;

      end;

    end;

    dm.TCadProdu.Next;
  end;

  cdsCateg.First;

  AutoSizeDBGrid(DBGrid2);

  dm.TCadProdu.Filtered := False;
  dm.TCadProdu.Filter   := '';

end;

procedure TFEsteira.AutoSizeDBGrid(const xDBGrid: TDBGrid);
var
  I, TotalWidht, VarWidth, QtdTotalColuna : Integer;
  xColumn : TColumn;
begin
// Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;
// Como dividir todo o espaço extra na grade
  VarWidth := 0;
// Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    //if xDBGrid.Columns[I].Field.Tag = 0 then
    if xDBGrid.Columns[I].Visible then
    begin
      TotalWidht := TotalWidht + xDBGrid.Columns[I].Width;
      Inc(QtdTotalColuna);
    end;

  end;

// Adiciona 1px para a linha de separador de coluna
  if dgColLines in xDBGrid.Options then
    TotalWidht := TotalWidht + xDBGrid.Columns.Count;

// Adiciona a largura da coluna indicadora
  if dgIndicator in xDBGrid.Options then
    TotalWidht := TotalWidht + IndicatorWidth;

// width vale "Left"
  VarWidth :=  xDBGrid.ClientWidth - TotalWidht;


// Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := varWidth div QtdTotalColuna;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    xColumn := xDBGrid.Columns[I];
    //if xColumn.Field.Tag = 0 then
    if xDBGrid.Columns[I].Visible then
    begin
      xColumn.Width := xColumn.Width + VarWidth;
      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;
end;

procedure TFEsteira.btnPrintClick(Sender: TObject);
begin

  pImprimirFundo(False);

  edQtde.SetFocus;

end;

procedure TFEsteira.Configurar1Click(Sender: TObject);
begin

  pImprimirFundo(True);

end;

procedure TFEsteira.pImprimirFundo(vDesign:Boolean);
var vinicio, vqtde, vcodigo: Integer;
begin

  cdsDados.Close;
  cdsDados.Open;

  vcodigo := StrToIntDef(lblCodigo.Caption,0);

  if vcodigo < 1 then
    Exit;

  cdsDados.Last;
  if cdsDadosContador.AsInteger > 0 then
     vinicio := cdsDadosContador.AsInteger
  else
     vinicio := edContador.Value + edQtde.Value;

  if vinicio > 10000 then vinicio := 10;

  //Apaga tudo
  fSql(1,['Delete from EtiqFundo'],1);
  cdsDados.Close;
  cdsDados.Open;

  //Inserir etiquetas
  if fTra(1,['Select Descricao, Pesoliq, VarieDes, CategDes, Calibre, CalibreDes From CadProdu Where Codigo=0'+IntToStr(vcodigo)],1) then
  begin

    for vqtde := 1 to (edQtde.Value) do
    begin

      vinicio := vinicio + 1;
      cdsDados.Append;
      cdsDadosCodigo.Text    := IntToStr(vcodigo);
      cdsDadosDescricao.Text := dm.qrSqlTra.Fields[0].Text;
      cdsDadosPeso.Text      := FormatFloat('0.###', dm.qrSqlTra.Fields[1].asFloat);
      cdsDadosQtde.Value     := edQtde.Value;
      cdsDadosContador.Value := vinicio;
      cdsDadosVariedade.Text := dm.qrSqlTra.Fields[2].Text;
      cdsDadosCategoria.Text := dm.qrSqlTra.Fields[3].Text;
      cdsDadosCalibre.Text   := dm.qrSqlTra.Fields[4].Text;

      //Calibre descricao
      if (Trim(dm.qrSqlTra.Fields[5].Text) <> '') then
        cdsDadosLinha4.Text    := dm.qrSqlTra.Fields[5].Text
      else
        cdsDadosLinha4.Text    := dm.qrSqlTra.Fields[4].Text;

      if (Length(Trim(IntToStr(vcodigo))) = 8) then
        cdsDadosLinha5.Text := Copy(cdsDadosCodigo.Text,4,5)+frPree(vinicio,7,'0',0)
      else
        cdsDadosLinha5.Text := Copy(cdsDadosCodigo.Text,3,5)+frPree(vinicio,7,'0',0);
      cdsDadosBarra.Text := Copy(cdsDadosLinha5.Text,1,12);

      cdsDados.Post;

    end;
  end;

  if not cdsDados.IsEmpty then
  begin

    cdsDados.ApplyUpdates(0);
    xRelTela := UpperCase('FfrmImpEtiquetaFundo');
    Application.CreateForm(TFModeloRel, FModeloRel);
    FModeloRel.dsRelat.DataSet := cdsDados;

    if not vDesign then
    begin

      FModeloRel.sbImprimir.OnClick(FModeloRel.sbImprimir);
      Sleep(1000);

    end
    else
      FModeloRel.ShowModal;

    cdsDados.Filtered := False;
  end;
end;

end.

