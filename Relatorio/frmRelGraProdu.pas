unit frmRelGraProdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Spin, DB, DBTables,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, RzPanel;

type
  TFfrmRelGraProdu = class(TForm)
    TPesq: TTimer;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    RB1: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP1: TSpeedButton;
    ED1: TMaskEdit;
    RB2: TRadioButton;
    Chart2: TChart;
    Series3: TBarSeries;
    Chart1: TChart;
    BarSeries1: TBarSeries;
    GP4: TGroupBox;
    lblData: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    GP9: TGroupBox;
    gbb1: TRadioButton;
    gbb2: TRadioButton;
    RB3: TRadioButton;
    GP5: TGroupBox;
    Label2: TLabel;
    ED5: TDateTimePicker;
    Label3: TLabel;
    rzpUtilitario: TRzPanel;
    sb6: TSpeedButton;
    sb7: TSpeedButton;
    RzPanel4: TRzPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure RB1Exit(Sender: TObject);
    procedure RB3Exit(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure ED5Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRelGraProdu: TFfrmRelGraProdu;

implementation

uses Menu, Data, Rotina, Pesq, rlGrafProdu;

{$R *.DFM}
procedure TFfrmRelGraProdu.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelGraProdu.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelGraProdu.ED5Change(Sender: TObject);
begin
  if not(ed5.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelGraProdu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelGraProdu);
end;

procedure TFfrmRelGraProdu.FormCreate(Sender: TObject);
begin

  Width := 580;
  ED4.Date  := StrToDate('01/01/'+FormatDateTime('yyyy', Date));
  ED44.Date := frUltimoDia(Date);
  ED5.Date  := Date;

end;

procedure TFfrmRelGraProdu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelGraProdu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelGraProdu.RB1Click(Sender: TObject);
begin
  ED1.SetFocus;
end;

procedure TFfrmRelGraProdu.RB1Exit(Sender: TObject);
begin

  GP5.Visible := RB3.Checked;
  GP4.Visible := not RB3.Checked;

end;

procedure TFfrmRelGraProdu.RB3Exit(Sender: TObject);
begin

end;

//Pesquisa
procedure TFfrmRelGraProdu.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     0: fPqVariedade;
     1: fPqVariedade;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelGraProdu.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if xpqpesq = 0 then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
  end;
end;

procedure TFfrmRelGraProdu.SB6Click(Sender: TObject);
var vDat, vCod, vcodrom, vVarie, vSql:String;
    vGraf, vGrafIni, vGrafFim: Integer;
    vValor: Double;
    vMestre, vDetal, vTitulo: String;
    vdtExec: TDate;
begin
  vDat:= '(ev.Data >='+frInvD(ED4.Date)+' and ev.Data <= '+frInvD(ED44.Date)+')';
  if (RB1.Checked) or (RB2.Checked) then
  begin

    vMestre := 'CLASSIF';
    vDetal  := 'CLASSIFM';
    vDat    := vDat;
    vTitulo := '';

    if qrGrafProdu<>Nil then qrGrafProdu.Destroy; Application.CreateForm(TqrGrafProdu,qrGrafProdu);
    with rlGrafProdu.qrGrafProdu do
    begin

      Chart1.Height := 250;
      Chart1.Width  := 1000;
      Chart2.Height := 250;
      Chart2.Width  := 1000;

      //Busca o nome da variedade
      if gbb1.Checked then
      begin
        vcod    := ' WHERE SubString(EC.CODIGO From 1 for 1) = '+Copy(ed1.Text,1,1);
        vcodRom := ' WHERE SubString(EC.PRODCOD From 1 for 1) = '+Copy(ed1.Text, 1,  1);
        fSql(1,1,['SELECT DESCRICAO FROM CADVARIE WHERE CODIGO = '+Copy(ed1.Text, 1,  1)+'0'],1);
        vVarie := 'GRUPO '+upperCase(dm.qrSql1.Fields[0].AsString);
      end
      else begin
        vcod    := ' WHERE SubString(EC.CODIGO From 1 for 2) = '+Copy(ed1.Text, 1,  2);
        vcodRom := ' WHERE SubString(EC.PRODCOD From 1 for 2) = '+Copy(ed1.Text, 1,  2);
        fSql(1,1,['SELECT DESCRICAO FROM CADVARIE WHERE CODIGO = '+Copy(ed1.Text, 1,  2)],1);
        vVarie := 'VARIEDADE '+upperCase(dm.qrSql1.Fields[0].AsString);
      end;

      if RB1.Checked then
      begin
        vSql := 'SELECT SUM(EC.QTDEENT) AS VLR, 1 AS QTD';
        qrLabel16.Caption := vTitulo+' Produção por QTDE no Período '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
      end
      else begin
        vSql := 'SELECT SUM(EC.PRECO) AS VLR, SUM(EC.QTDEENT) AS QTD';
        qrLabel16.Caption := vTitulo+' Produção por PREÇO MÉDIO no Período '+DateToStr(Ed4.DateTime)+' à '+DateToStr(Ed44.DateTime);
      end;

      qrProdu.Close;
      qrProdu.Sql.Clear;
      qrProdu.Sql.Add('SELECT CALIBRE, COUNT(*) AS CT');
      qrProdu.Sql.Add('  FROM CADPRODU EC              ');
      qrProdu.Sql.Add(vcod);
      qrProdu.Sql.Add('   AND SubString(CODIGO from 3 for 1) = 1    ');
      qrProdu.Sql.Add(' GROUP BY CALIBRE             ');
      qrProdu.Open;
      if qrProdu.RecordCount<1 then begin
        ShowMessage('Não há Lançamento.');
        exit;
      end;

      //CAT 1
      vGraf    := 0;
      vGrafIni := 0;
      vGrafFim := qrProdu.RecordCount + 1;

      if RB1.Checked then
      begin
        Chart1.Title.Caption := vVarie + ' - CAT 1';
        Chart1.Series[vGraf].Clear;
      end
      else begin
        Chart2.Title.Caption := vVarie + ' - CAT 1';
        Chart2.Series[vGraf].Clear;
      end;

      qrProdu.First;
      while not qrProdu.Eof do
      begin

        fSql(1,1,[vsql,
                  '  FROM '+vMestre+' EV',
                  ' INNER JOIN '+vDetal+' EC ON EV.LANC = EC.LANC',
                  vcodrom,
                  '   AND SubString(EC.PRODCOD from 3 for 1) = 1',
                  '   AND SubString(EC.PRODCOD from 5 for 3) = '+QuotedStr(frStrZero(qrProdu.Fields[0].AsString, 3)),
                  '   AND '+ vDat
                 ],7);

        if (dm.qrSql1.Fields[0].asFloat > 0) and (dm.qrSql1.Fields[1].asFloat > 0) then
        begin
          vGrafIni := vGrafIni + 1;
          if vGrafIni < vGrafFim then
          begin
            vValor := dm.qrSql1.Fields[0].asFloat / dm.qrSql1.Fields[1].asFloat;
            if RB1.Checked then
              Chart1.Series[vGraf].Add(StrToFloat(FormatFloat('0',vValor)), '   T.'+frStrZero(qrProdu.Fields[0].AsString, 3))
            else
              Chart2.Series[vGraf].Add(StrToFloat(FormatFloat('0.##',vValor)), '   T.'+frStrZero(qrProdu.Fields[0].AsString, 3));
          end;
        end;

        qrProdu.Next;

      end;

      qrProdu.First;
      if RB1.Checked then
        chart1.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp')
      else
        chart2.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp');
      QRImage1.Picture.LoadFromFile(xDirSi+'Relatorio\GrafProducao.bmp');

      //*** CAT 2 ***
      qrProdu.Close;
      qrProdu.Sql.Clear;
      qrProdu.Sql.Add('SELECT CALIBRE, COUNT(*) AS CT');
      qrProdu.Sql.Add('  FROM CADPRODU EC              ');
      qrProdu.Sql.Add(vcod);
      qrProdu.Sql.Add('   AND SubString(CODIGO from 3 for 1) = 2    ');
      qrProdu.Sql.Add(' GROUP BY CALIBRE             ');
      qrProdu.Open;
      if qrProdu.RecordCount<1 then begin
        ShowMessage('Não há Lançamento.');
        exit;
      end;
      //CAT 1
      vGraf    := 0;
      vGrafIni := 0;
      vGrafFim := qrProdu.RecordCount + 1;

      if RB1.Checked then
      begin
        Chart1.Title.Caption := vVarie + ' - CAT 2';
        Chart1.Series[vGraf].Clear;
      end
      else begin
        Chart2.Title.Caption := vVarie + ' - CAT 2';
        Chart2.Series[vGraf].Clear;
      end;

      qrProdu.First;
      while not qrProdu.Eof do
      begin

        fSql(1,1,[vsql,
                  '  FROM '+vMestre+' EV',
                  ' INNER JOIN '+vDetal+' EC ON EV.LANC = EC.LANC',
                  vcodRom,
                  '   AND SubString(EC.PRODCOD from 3 for 1) = 2',
                  '   AND SubString(EC.PRODCOD from 5 for 3) = '+QuotedStr(frStrZero(qrProdu.Fields[0].AsString, 3)),
                  '   AND '+ vDat
                 ],7);

        if (dm.qrSql1.Fields[0].asFloat > 0) and (dm.qrSql1.Fields[1].asFloat > 0) then
        begin
          vGrafIni := vGrafIni + 1;
          if vGrafIni < vGrafFim then
          begin
            vValor := dm.qrSql1.Fields[0].asFloat / dm.qrSql1.Fields[1].asFloat;
            if RB1.Checked then
              Chart1.Series[vGraf].Add(StrToFloat(FormatFloat('0',vValor)), '   T.'+frStrZero(qrProdu.Fields[0].AsString, 3))
            else
              Chart2.Series[vGraf].Add(StrToFloat(FormatFloat('0.##',vValor)), '   T.'+frStrZero(qrProdu.Fields[0].AsString, 3));
          end;
        end;

        qrProdu.Next;

      end;

      qrProdu.First;
      if RB1.Checked then
        chart1.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp')
      else
        chart2.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp');
      QRImage2.Picture.LoadFromFile(xDirSi+'Relatorio\GrafProducao.bmp');

      //*** CAT 3 ***

      qrProdu.Close;
      qrProdu.Sql.Clear;
      qrProdu.Sql.Add('SELECT CALIBRE, COUNT(*) AS CT');
      qrProdu.Sql.Add('  FROM CADPRODU EC              ');
      qrProdu.Sql.Add(vcod);
      qrProdu.Sql.Add('   AND SubString(CODIGO from 3 for 1) = 3    ');
      qrProdu.Sql.Add(' GROUP BY CALIBRE             ');
      qrProdu.Open;
      if qrProdu.RecordCount<1 then begin
        ShowMessage('Não há Lançamento.');
        exit;
      end;
      //CAT 3
      vGraf    := 0;
      vGrafIni := 0;
      vGrafFim := qrProdu.RecordCount + 1;
      if RB1.Checked then
      begin
        Chart1.Title.Caption := vVarie + ' - CAT 3';
        Chart1.Series[vGraf].Clear;
      end
      else begin
        Chart2.Title.Caption := vVarie + ' - CAT 3';
        Chart2.Series[vGraf].Clear;
      end;

      qrProdu.First;
      while not qrProdu.Eof do
      begin

        fSql(1,1,[vsql,
                  '  FROM '+vMestre+' EV',
                  ' INNER JOIN '+vDetal+' EC ON EV.LANC = EC.LANC',
                  vcodRom,
                  '   AND SubString(EC.PRODCOD from 3 for 1) = 3',
                  '   AND SubString(EC.PRODCOD from 5 for 3) = '+QuotedStr(frStrZero(qrProdu.Fields[0].AsString, 3)),
                  '   AND '+ vDat
                 ],7);

        if (dm.qrSql1.Fields[0].asFloat > 0) and (dm.qrSql1.Fields[1].asFloat > 0) then
        begin
          vGrafIni := vGrafIni + 1;
          if vGrafIni < vGrafFim then
          begin
            vValor := dm.qrSql1.Fields[0].asFloat / dm.qrSql1.Fields[1].asFloat;
            if RB1.Checked then
              Chart1.Series[vGraf].Add(StrToFloat(FormatFloat('0',vValor)), '   T.'+frStrZero(qrProdu.Fields[0].AsString, 3))
            else
              Chart2.Series[vGraf].Add(StrToFloat(FormatFloat('0.##',vValor)), '   T.'+frStrZero(qrProdu.Fields[0].AsString, 3));
          end;
        end;

        qrProdu.Next;

      end;

      qrProdu.First;
      if RB1.Checked then
        chart1.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp')
      else
        chart2.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp');
      QRImage3.Picture.LoadFromFile(xDirSi+'Relatorio\GrafProducao.bmp');

      PrinterSettings.PrinterIndex:=fImpr('imp1');
      if TComponent(Sender).Tag=0 then Preview else Print;
    end;
  end;

  //Bins
  if (RB3.Checked) then
  begin

    if qrGrafProdu<>Nil then qrGrafProdu.Destroy; Application.CreateForm(TqrGrafProdu,qrGrafProdu);
    with rlGrafProdu.qrGrafProdu do
    begin

      Chart1.Height := 250;
      Chart1.Width  := 1000;
      Chart2.Height := 250;
      Chart2.Width  := 1000;

      //Busca o nome da variedade
      if frStrToInt(Trim(ed1.Text)) = 0 then
      begin
        vcod    := ' WHERE EC.CODIGO >= 0';
        vcodRom := ' WHERE EV.VARIECOD >= 0';
        vVarie := 'TODAS VARIEDADES';
      end
      else begin
        if gbb1.Checked then
        begin
          vcod    := ' WHERE SubString(EC.CODIGO From 1 for 1) = '+Copy(ed1.Text, 1,  1);
          vcodRom := ' WHERE SubString(EV.VARIECOD From 1 for 1) = '+Copy(ed1.Text, 1,  1);
          fSql(1,1,['SELECT DESCRICAO FROM CADVARIE WHERE CODIGO = '+Copy(ed1.Text, 1,  1)+'0'],1);
          vVarie := 'GRUPO '+upperCase(dm.qrSql1.Fields[0].AsString);
        end
        else begin
          vcod    := ' WHERE SubString(EC.CODIGO From 1 for 2) = '+Copy(ed1.Text, 1,  2);
          vcodRom := ' WHERE SubString(EV.VARIECOD From 1 for 2) = '+Copy(ed1.Text, 1,  2);
          fSql(1,1,['SELECT DESCRICAO FROM CADVARIE WHERE CODIGO = '+Copy(ed1.Text, 1,  2)],1);
          vVarie := 'VARIEDADE '+upperCase(dm.qrSql1.Fields[0].AsString);
        end;
      end;

      qrLabel16.Caption := 'Produção Bins no Período '+DateToStr(Ed5.DateTime-20)
                          +' à '+DateToStr(Ed5.DateTime);

      //1ª Semana
      vGraf    := 0;
      vGrafIni := 0;
      Chart1.Title.Caption := vVarie + ' - 1º Semana';
      Chart1.Series[vGraf].Clear;

      vdtExec := ED5.Date-6;
      while ((ED5.Date+1) > vdtExec) do
      begin
        vDat:= '(ev.Data ='+frInvD(vdtExec)+')';
        qrProdu.Close;
        qrProdu.Sql.Clear;
        qrProdu.Sql.Add('SELECT SUM(EV.QTDEBIN) AS QTD');
        qrProdu.Sql.Add('  FROM CLASSIF EV');
        qrProdu.Sql.Add(vcodRom);
        qrProdu.Sql.Add('   AND '+ vDat);
        qrProdu.Open;
        if not qrProdu.Eof then
          vValor := qrProdu.Fields[0].asFloat
        else
          vValor := 0;
        Chart1.Series[vGraf].Add(StrToFloat(FormatFloat('0',vValor)), ' '+DateToStr(vdtExec));
        vdtExec := vdtExec + 1;
      end;
      chart1.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp');
      QRImage1.Picture.LoadFromFile(xDirSi+'Relatorio\GrafProducao.bmp');

      //2ª Semana
      vGraf    := 0;
      vGrafIni := 0;
      Chart1.Title.Caption := vVarie + ' - 2º Semana';
      Chart1.Series[vGraf].Clear;

      vdtExec := ED5.Date-13;
      while ((ED5.Date-6) > vdtExec) do
      begin
        vDat:= '(ev.Data ='+frInvD(vdtExec)+')';
        qrProdu.Close;
        qrProdu.Sql.Clear;
        qrProdu.Sql.Add('SELECT SUM(EV.QTDEBIN) AS QTD');
        qrProdu.Sql.Add('  FROM CLASSIF EV');
        qrProdu.Sql.Add(vcodRom);
        qrProdu.Sql.Add('   AND '+ vDat);
        qrProdu.Open;
        if not qrProdu.Eof then
          vValor := qrProdu.Fields[0].asFloat
        else
          vValor := 0;
        Chart1.Series[vGraf].Add(StrToFloat(FormatFloat('0',vValor)), ' '+DateToStr(vdtExec));
        vdtExec := vdtExec + 1;
      end;
      chart1.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp');
      QRImage2.Picture.LoadFromFile(xDirSi+'Relatorio\GrafProducao.bmp');

      //3ª Semana
      vGraf    := 0;
      vGrafIni := 0;
      Chart1.Title.Caption := vVarie + ' - 3º Semana';
      Chart1.Series[vGraf].Clear;

      vdtExec := ED5.Date-20;
      while ((ED5.Date-13) > vdtExec) do
      begin
        vDat:= '(ev.Data ='+frInvD(vdtExec)+')';
        qrProdu.Close;
        qrProdu.Sql.Clear;
        qrProdu.Sql.Add('SELECT SUM(EV.QTDEBIN) AS QTD');
        qrProdu.Sql.Add('  FROM CLASSIF EV');
        qrProdu.Sql.Add(vcodRom);
        qrProdu.Sql.Add('   AND '+ vDat);
        qrProdu.Open;
        if not qrProdu.Eof then
          vValor := qrProdu.Fields[0].asFloat
        else
          vValor := 0;
        Chart1.Series[vGraf].Add(StrToFloat(FormatFloat('0',vValor)), ' '+DateToStr(vdtExec));
        vdtExec := vdtExec + 1;
      end;
      chart1.SaveToBitmapFile(xDirSi+'Relatorio\GrafProducao.bmp');
      QRImage3.Picture.LoadFromFile(xDirSi+'Relatorio\GrafProducao.bmp');

//Print
      PrinterSettings.PrinterIndex:=fImpr('imp1');
      if TComponent(Sender).Tag=0 then Preview else Print;
    end;
  end;

end;

end.


