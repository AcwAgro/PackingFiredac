unit frmRelProducao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, RzPanel,
  RzDTP, RzDBDTP, RzEdit, Variants;

type
  TFfrmRelProducao = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    OPRB1: TRadioButton;
    OPRB4: TRadioButton;
    GP1: TGroupBox;
    Label1: TLabel;
    SBP1: TSpeedButton;
    SBP2: TSpeedButton;
    ED1: TMaskEdit;
    ED11: TMaskEdit;
    GP4: TGroupBox;
    Label4: TLabel;
    ED4: TDateTimePicker;
    ED44: TDateTimePicker;
    GP2: TGroupBox;
    Label2: TLabel;
    SBP22: TSpeedButton;
    SBP222: TSpeedButton;
    ED2: TMaskEdit;
    ED22: TMaskEdit;
    GP3: TGroupBox;
    Label3: TLabel;
    SBP3: TSpeedButton;
    SBP33: TSpeedButton;
    ED3: TMaskEdit;
    ED33: TMaskEdit;
    GP5: TGroupBox;
    GBRB1: TRadioButton;
    GBRB2: TRadioButton;
    GBRB3: TRadioButton;
    OPRB3: TRadioButton;
    OPRB2: TRadioButton;
    TPesq: TTimer;
    OPRB9: TRadioButton;
    OPRB10: TRadioButton;
    GP8: TGroupBox;
    Label5: TLabel;
    SBP8: TSpeedButton;
    SBP88: TSpeedButton;
    ED8: TMaskEdit;
    ED88: TMaskEdit;
    chkbGrupo: TCheckBox;
    chkbSoMovim: TCheckBox;
    GP9: TGroupBox;
    Label6: TLabel;
    SBP9: TSpeedButton;
    ED9: TMaskEdit;
    OPRB11: TRadioButton;
    OPRB41: TRadioButton;
    RadioButton1: TRadioButton;
    OPRB12: TRadioButton;
    GP10: TGroupBox;
    Label7: TLabel;
    lbTables: TListBox;
    EDH1: TRzDateTimeEdit;
    EdH11: TRzDateTimeEdit;
    rzpUtilitario: TRzPanel;
    sb6: TSpeedButton;
    sb7: TSpeedButton;
    RzPanel4: TRzPanel;
    OPRB42: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBP1Click(Sender: TObject);
    procedure TPesqTimer(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure OPRB1Click(Sender: TObject);
    procedure GBRB2Click(Sender: TObject);
    procedure ED4Change(Sender: TObject);
    procedure ED44Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure pGeraResumoEmbalador;

  public
    { Public declarations }
  end;

var
  FfrmRelProducao: TFfrmRelProducao;

implementation

uses Menu, Data, Rotina, Pesq, rlMovBin, rlMovTar, rlMovEnt,
  rlResumo, rlResGer, rlResSal, rlResAmo, rlMovAmo, rlSalBins, rlResEntVar,
  rlCamMov, rlPrevis, rlPrevisGru, rlDefeito, rlPrevisBin, rlResAmoGer,
  rlResEntGer, rlMovAmoEnt, rlMovQuadra, rlResGru, rlPrevisGer, rlPDLoteMov,
  rlProdClasMov, rlSalBinsTipo, rlMovAmoSem, rlResAmoSem, rlResAmoGerSem,
  rlMovDefSem, rlResDefSem, rlResDefGerSem, rlResumoEnt_Clas, rlResumoEnt_Clas_Ger,
  rlResumoEnt_Clas_var, rlResumoEnt_Clas_Ger_var, rlResumoEnt_Clas_Grupo,
  rlPDLoteMovEmb, rlProdClasMovEmb, rlProdClasMovEmbTot, rlPDLoteMovKg, rlProdClasMovKg,
  rlPDLoteResEmb;
  
{$R *.DFM}
procedure TFfrmRelProducao.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelProducao.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);
end;

procedure TFfrmRelProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelProducao);
end;

procedure TFfrmRelProducao.FormCreate(Sender: TObject);
begin

  ED4.Date   := StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date  := Now;
  EdH1.Time  := StrToTime('18:00:00');
  EdH11.Time := StrToTime('23:00:00');
end;

procedure TFfrmRelProducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelProducao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelProducao.GBRB2Click(Sender: TObject);
begin
  GP8.Visible := (GBRB2.Checked and OPRB3.Checked) or (GBRB2.Checked and OPRB9.Checked);
  chkbSoMovim.Visible := (GBRB2.Checked and OPRB3.Checked);
  GP9.Visible := (OPRB1.Checked or OPRB4.Checked);
end;

procedure TFfrmRelProducao.OPRB1Click(Sender: TObject);
begin
  xRelMarca := '';
  GP9.Visible := (OPRB1.Checked or OPRB4.Checked or OPRB9.Checked or OPRB10.Checked);
  GP8.Visible := (GBRB2.Checked and OPRB3.Checked);
  GP5.Visible := (not (OPRB12.Checked or OPRB9.Checked or OPRB10.Checked));
  GP3.Visible := (not (OPRB41.Checked or OPRB9.Checked or OPRB10.Checked));
  GP2.Visible := (not OPRB12.Checked);
  GP10.Visible := (OPRB12.Checked);
  chkbSoMovim.Visible := (GBRB2.Checked and OPRB3.Checked);

  if (OPRB11.Checked or OPRB12.Checked) then
  begin
    label1.Caption := 'Embalador(a)                             à';
    sbp1.tag := 11;
    sbp2.tag := 111;
  end
  else begin
    label1.Caption := 'Produtor Inicial                         à';
    sbp1.tag := 0;
    sbp2.tag := 1;
  end;

end;

procedure TFfrmRelProducao.SBP1Click(Sender: TObject);
begin
  Case TComponent(Sender).Tag of
     0: fPqForneCooper;
     1: fPqForneCooper;
     2: fPqVariedade;
     3: fPqVariedade;
     4: fPqBins;
     5: fPqBins;
     8: fPqForneGrupo;
    88: fPqForneGrupo;
     9: fPqLocal;
    11: fPqEmbalador;
   111: fPqEmbalador;
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelProducao.TPesqTimer(Sender: TObject);
begin
  if xpqResul<>'0'then begin
     TPesq.Enabled :=False;
     if xpqpesq = 0 then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if xpqpesq = 1 then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
     else if xpqpesq = 2 then begin
       Ed2.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed2.SetFocus;
     end
     else if xpqpesq = 3 then begin
       Ed22.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed22.SetFocus;
     end
     else if xpqpesq = 4 then begin
       Ed3.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed3.SetFocus;
     end
     else if xpqpesq = 5 then begin
       Ed33.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed33.SetFocus;
     end
     else if xpqpesq = 8 then begin
       Ed8.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed8.SetFocus;
     end
     else if xpqpesq = 88 then begin
       Ed88.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed88.SetFocus;
     end
     else if xpqpesq = 9 then begin
       Ed9.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed9.SetFocus;
     end;
     if xpqpesq = 11 then begin
       Ed1.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed1.SetFocus;
     end
     else if xpqpesq = 111 then begin
       Ed11.Text:=fPesq.qrpesq.Fields[0].Text;
       Ed11.SetFocus;
     end
  end;
end;

procedure TFfrmRelProducao.SB6Click(Sender: TObject);
var vTag:Integer;
    vtip,vdia,vvar,vpro,vdat,vloc,vlocdes,vhora:String;
begin
  vTag:=TComponent(Sender).Tag;
  if (StrToIntDef(Trim(ed9.Text),0) > 0) then
  begin
    vloc := ' and (LocalCod = '+Trim(ed9.Text)+')';
    vlocDes := ' - Local: '+fBus(1,['Select descricao from cadlocal where codigo = 0'+Trim(ed9.Text)],1);
  end
  else begin
    vloc := '';
    vlocDes := '';
  end;

  //Custo por data -> dtpClaFim.Date
  fSql(1,3,['select Max(lanc) from cadcategcus where data < '+frInvD(ed44.Date+1)],1);
  xCategCustoLanc := dm.qrSql3.Fields[0].AsInteger;
  fSql(1,3,['select Max(lanc) from cadvariecus where data < '+frInvD(ed44.Date+1)],1);
  xVarieCustoLanc := dm.qrSql3.Fields[0].AsInteger;
  dm.qrSql3.Close;

//CLASSIFICACAO
  if (OPRB4.Checked) then begin // RESUMO classificacao
    vVar:='(ee.ProdCod>='+frPree(Trim(Ed2.Text),7,'0',1)+' and ee.ProdCod<='+frPree(Trim(Ed22.Text),7,'9',1)+')';
    vPro:='(cc.Codigo>='+Ed1.Text+' and cc.Codigo<='+Ed11.Text+')';
    if (Length(xRelMarca) > 3) then
      vPro:='cc.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

    vDat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
    vDia:='Período '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
    if (GBRB1.Checked)  then begin // Classificação
       if qrPDLoteMov<>Nil then qrPDLoteMov.Destroy; Application.CreateForm(TqrPDLoteMov,qrPDLoteMov);
       with qrPDLoteMov do begin
          QRLabel16.Caption:='Classificação  '+vdia+vlocDes;
          qrDados.Close;
          qrDados.Sql.Strings[2]:='Where (cc.Lanc=ee.Lanc) and (PesoReal<>0) and '+vdat
                                  +' and '+vpro+' and '+vvar+vloc;
          qrDados.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrDados.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (GBRB2.Checked) or (GBRB3.Checked) then begin // RESUMO classificacao
       if qrProdClasMov<>Nil then qrProdClasMov.Destroy; Application.CreateForm(TqrProdClasMov,qrProdClasMov);
       with qrProdClasMov do begin
          vDataPer :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vpcmLoc := vLoc;
          vpcmLocDes := vLocDes;
          qrVenda.Close; qrProdu.Close;
          qrVenda.Sql.Strings[0]:='SELECT ee.PRODCOD,SUM(ee.QTDEENT) AS QT,SUM(ee.PESOREAL) AS GE, AVG(PRECO) AS PR';
          qrVenda.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro+vpcmLoc;
          qrVenda.Sql.Strings[3]:='GROUP BY ee.PRODCOD';
          QRSubDetail2.Height:=13;
          ChildBand2.Color:=$00FFC4C4;
          if (GBRB2.Checked) then begin
             qrProdu.Sql.Strings[0]:='Select cc.Codigo, cc.Descricao';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro+vpcmLoc;
             qrProdu.Sql.Strings[3]:='GROUP BY cc.Codigo, cc.Descricao';
             qrProdu.Sql.Strings[4]:='ORDER BY cc.Descricao';
             vlcger:='N';
             QRLabel16.Caption:='Resumo Produtor da Classificação  no '+vdia+vLocDes;
          end else begin
             vlcger:='S';
             QRLabel16.Caption:='Resumo Geral da Classificação  no '+vdia+vLocDes;
             qrProdu.Sql.Strings[0]:='Select Sum(QtdeEnt)';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+vpcmLoc;
             qrProdu.Sql.Strings[3]:='';
             qrProdu.Sql.Strings[4]:='';
          end;
          qrVenda.Open; qrProdu.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp2');
          if qrVenda.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
       end;
    end;
  end
  //Embalador
  else if (OPRB11.Checked) then
  begin
    vPro:='(ee.EmbalCod>='+Ed1.Text+' and ee.EmbalCod<='+Ed11.Text+')';
    vVar:='(ee.ProdCod>='+frPree(Trim(Ed2.Text),7,'0',1)+' and ee.ProdCod<='+frPree(Trim(Ed22.Text),7,'9',1)+')';
    vDat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
    vDia:='Período '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
    if (GBRB1.Checked)  then begin
       if qrPDLoteMovEmb<>Nil then qrPDLoteMovEmb.Destroy; Application.CreateForm(TqrPDLoteMovEmb,qrPDLoteMovEmb);
       with qrPDLoteMovEmb do begin
          QRLabel16.Caption:='Produção embalador(a)  '+vdia;
          qrDados.Close;
          qrDados.Sql.Strings[2]:='Where (cc.Lanc=ee.Lanc) and (ee.qtde<>0) and '+vdat
                                  +' and '+vpro+' and '+vvar;
          qrDados.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrDados.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (GBRB2.Checked) then begin // RESUMO classificacao
       if qrProdClasMovEmb<>Nil then qrProdClasMovEmb.Destroy; Application.CreateForm(TqrProdClasMovEmb,qrProdClasMovEmb);
       with qrProdClasMovEmb do begin
          vDataPer :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          qrVenda.Close; qrProdu.Close;
          qrVenda.Sql.Strings[0]:='SELECT ee.PRODCOD,SUM(ee.QTDE) AS QT, SUM(ee.QTDE) AS GE, 0 AS PR';
          qrVenda.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro;
          qrVenda.Sql.Strings[3]:='GROUP BY ee.PRODCOD';
          QRSubDetail2.Height:=13;
          ChildBand2.Color:=$00FFC4C4;
          if (GBRB2.Checked) then begin
             qrProdu.Sql.Strings[0]:='Select ee.embalcod as Codigo, ee.embaldes as Descricao';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro;
             qrProdu.Sql.Strings[3]:='GROUP BY ee.embalcod, ee.embaldes';
             qrProdu.Sql.Strings[4]:='ORDER BY ee.embalcod';
             vlcgeremb:='N';
             QRLabel16.Caption:='Resumo Embalador(a) da Produção no '+vdia;
          end else begin
             vlcgeremb:='S';
             QRLabel16.Caption:='Resumo Geral Produção no '+vdia;
             qrProdu.Sql.Strings[0]:='Select Sum(Qtde)';
             qrProdu.Sql.Strings[3]:='';
             qrProdu.Sql.Strings[4]:='';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar;
          end;
          qrVenda.Open; qrProdu.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp2');
          if qrVenda.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
       end;
    end;
    if (GBRB3.Checked) then begin // RESUMO classificacao
       if qrProdClasMovEmbTot<>Nil then qrProdClasMovEmbTot.Destroy; Application.CreateForm(TqrProdClasMovEmbTot,qrProdClasMovEmbTot);
       with qrProdClasMovEmbTot do begin
          qrProdu.Close;
          //ChildBand2.Color:=$00FFC4C4;
          qrProdu.Sql.Strings[0]:='SELECT ee.EMBALCOD, ee.EMBALDES, SUM(ee.QTDE) AS QT, SUM(ee.qtde * pp.Pesoliq) AS GE, 0 AS PR';
          qrProdu.Sql.Strings[1]:='FROM roman cc, romanembal ee, cadprodu pp';
          qrProdu.Sql.Strings[2]:='WHERE (cc.Lanc=ee.Lanc) and (pp.codigo=ee.Prodcod) and '+vDat+' and '+vPro;
          qrProdu.Sql.Strings[3]:='GROUP BY ee.EMBALCOD, ee.EMBALDES';
          qrProdu.Sql.Strings[4]:='ORDER BY 4 desc';
          QRLabel16.Caption:='Resumo Total Embalador(a) no '+vdia;
          qrProdu.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp2');
          if qrProdu.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin

            vQtdeTot := 0;
            vPesoTot := 0;
            qrProdu.First;
            while not qrProdu.Eof do
            begin
              vQtdeTot := vQtdeTot + qrProdu.FieldByName('qt').asFloat;
              vPesoTot := vPesoTot + qrProdu.FieldByName('ge').asFloat;
              qrProdu.Next;
            end;
            qrProdu.First;

            if TComponent(Sender).Tag=0 then Preview else Print;

          end;
       end;
    end;
  end
  //Embalador - resumo
  else if (OPRB12.Checked) then
  begin
    vDat  :='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
    vDia  :='Período: '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
    vHora :='Horário: '+TimeToStr(EdH1.Time)+' à '+TimeToStr(EdH11.Time);

    if qrPDLoteResEmb<>Nil then qrPDLoteResEmb.Destroy; Application.CreateForm(TqrPDLoteResEmb,qrPDLoteResEmb);
    with qrPDLoteResEmb do
    begin
      QRLabel8.Caption:=vdia;
      QRLabel4.Caption:=vhora;

      pGeraResumoEmbalador;

      PrinterSettings.PrinterIndex := fImpr('Imp1');
      if qrDados.Fields[0].asString='' then ShowMessage('Sem Dados...')
      else begin if vTag=0 then Preview else Print; end;
    end;
  end
  //Outros
  else begin
    vVar:='VarieCod>='+Ed2.Text+' and VarieCod<='+Ed22.Text;
    vPro:='ProdCod>='+Ed1.Text+' and ProdCod<='+Ed11.Text;
    if (Length(xRelMarca) > 3) then
      vPro:='ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

    vTip:='BinsCod>='+Ed3.Text+' and BinsCod<='+Ed33.Text;
    vDat:='Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1);
    vDia:='Período '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
//TARA
    if OPRB2.Checked then begin // Tara
       if qrMovTar<>Nil then qrMovTar.Destroy; Application.CreateForm(TqrMovTar,qrMovTar);
       with qrMovTar do begin
          QRLabel16.Caption:='Movimento Tara Veículo '+vdia;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where ('+vDat+') and ('+vPro+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
//ENTRADA
    if (OPRB1.Checked and GBRB1.Checked) then begin // Entrada
       vVar:='vv.VarieCod>='+Ed2.Text+' and vv.VarieCod<='+Ed22.Text;
       if qrMovEnt<>Nil then qrMovEnt.Destroy; Application.CreateForm(TqrMovEnt,qrMovEnt);
       with qrMovEnt do begin
          qrLabel16.Caption:='Movimento Entrada de Carga '+vdia;
          qrLabel18.Caption:='Geral'+vlocDes;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (ee.Lanc=vv.Lanc) and ('+vDat+
                 ') and ('+vPro+') and ('+vVar+') and ('+vTip+')'+vloc;
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB1.Checked and GBRB2.Checked) then begin // Resumo Produtor
       if qrResEntVar<>Nil then qrResEntVar.Destroy; Application.CreateForm(TqrResEntVar,qrResEntVar);
       with qrResEntVar do begin
          QRLabel16.Caption:='Resumo Produtor '+vdia;
          vVarpro:='(vv.VarieCod>='+Ed2.Text+' and vv.VarieCod<='+Ed22.Text+')';
          vvlocal:=vloc;
          QRLabel9.Caption:='Geral'+vlocDes;
          qrEmpr.Close; qrVarie.Close;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where ('+vDat+') and ('+vPro+')';
          qrMovim.Open;
          qrEmpr.Open;
          qrVarie.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB1.Checked and GBRB3.Checked) then begin // Resumo Geral
       if qrResEntGer<>Nil then qrResEntGer.Destroy; Application.CreateForm(TqrResEntGer,qrResEntGer);
       with qrResEntGer do begin
          QRLabel16.Caption:='Resumo Geral '+vdia;
          vVarger:='(vv.VarieCod>='+Ed2.Text+' and vv.VarieCod<='+Ed22.Text+')';
          vlocger:=vloc;
          QRLabel9.Caption:='Geral'+vlocDes;
          qrEmpr.Close; qrEmpr.Open;
          qrVarie.Close; qrVarie.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where ('+vDat+') and ('+vPro+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
//BINS - EMPRESTIMO
    if (OPRB3.Checked and GBRB1.Checked) then begin // Emprestimo/Saída
       if qrMovBin<>Nil then qrMovBin.Destroy; Application.CreateForm(TqrMovBin,qrMovBin);
       with qrMovBin do begin
          QRLabel16.Caption:='Movimento Empréstimo '+vdia;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where ('+vDat+') and ('+vPro+') and ('+vTip+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB3.Checked and GBRB2.Checked) then begin // Saldo Bins
       vVar:='GrupoCod>='+Ed8.Text+' and GrupoCod<='+Ed88.Text;
       vPro:='Codigo>='+Ed1.Text+' and Codigo<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       if qrSalBin<>Nil then qrSalBin.Destroy; Application.CreateForm(TqrSalBin,qrSalBin);
       with qrSalBin do begin
          QRLabel16.Caption:='Resumo Saldo '+vdia;
          qrSoma.Close;
          qrMovim.Close;
          qrMovim.Sql.Clear;
          qrMovim.Sql.Add('Select distinct grupocod, codigo, descricao');
          qrMovim.Sql.Add('From CadForne');
          qrMovim.Sql.Add('inner join entre on entre.prodcod = cadforne.codigo and '+vdat);
          qrMovim.Sql.Add('Where  ('+vPro+')');
          qrMovim.Sql.Add('union');
          qrMovim.Sql.Add('Select distinct grupocod, codigo, descricao');
          qrMovim.Sql.Add('From CadForne');
          qrMovim.Sql.Add('inner join entrb on entrb.prodcod = cadforne.codigo and '+vdat);
          qrMovim.Sql.Add('Where  ('+vPro+')');

          if chkbSoMovim.Checked then
            vMostraSoMovim := 'S'
          else
            vMostraSoMovim := 'N';

          if not chkbGrupo.Checked then
          begin
            qrMovim.Sql.Add('Order by 3');
            vMostraGrupo := 'N';
          end
          else begin
            qrMovim.Sql.Strings[3]:= qrMovim.Sql.Strings[3] + ' and ('+vVar+')';
            qrMovim.Sql.Strings[8]:= qrMovim.Sql.Strings[8] + ' and ('+vVar+')';
            qrMovim.Sql.Add('Order by 1, 3');
            vMostraGrupo := 'S';
          end;
          qrMovim.Open;
          qrSoma.Open;
          vsbtip:='('+vTip+')';
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB3.Checked and GBRB3.Checked) then begin // Saldo Bins Tipo
       vPro:='Codigo>='+Ed3.Text+' and Codigo<='+Ed33.Text;
       if qrSalBinTipo<>Nil then qrSalBinTipo.Destroy; Application.CreateForm(TqrSalBinTipo,qrSalBinTipo);
       with qrSalBinTipo do begin
          QRLabel16.Caption:='Saldo por tipo Embalagem '+vdia;
          qrSoma.Close;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where ('+vPro+')';
          qrMovim.Open;
          qrSoma.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
{    if (OPRB3.Checked and GBRB3.Checked) then begin // Previsão de bins
       vPro:='pp.ProdCod>='+Ed1.Text+' and pp.ProdCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='pp.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       if qrPrevisBin<>Nil then qrPrevisBin.Destroy; Application.CreateForm(TqrPrevisBin,qrPrevisBin);
       with qrPrevisBin do begin
          QRLabel16.Caption:='Previsão Bins por Grupo '+vdia;
          vVar:='GrupoCod='+Ed2.Text;
          fSql(1,1,['Select Codigo, GrupoDes From CadVarie',
                      'Where '+vvar,
                      'Order by Codigo'],3);
          qrLabel10.Caption:=dm.qrSql1.Fields[1].Text;
          dm.qrSql1.First; vdat:='(';
          while not dm.qrSql1.Eof do begin
             vdat:=vdat+'cc.VarieCod='+dm.qrSql1.Fields[0].Text+' or ';
             dm.qrSql1.Next;
          end;
          vVar:=Copy(vdat,1,Length(vdat)-4)+')';
          dm.qrSql1.Close;
          vGrupo:=vVar;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where pp.Lanc=cc.Lanc and ('+vPro+') and ('+vVar+') and (pp.Safra = '+QuotedStr(Copy(DateTostr(Ed4.Date),7,4))+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;}

    //if (OPRB9.Checked) and (not GBRB3.checked) and (not chkbGrupo.checked) then begin // Resumo Produtor  - Variedade
    if (OPRB9.Checked) then begin // Resumo Produtor  - Variedade
       if qrResumoEnt_Clas<>Nil then qrResumoEnt_Clas.Destroy; Application.CreateForm(TqrResumoEnt_Clas,qrResumoEnt_Clas);
       with qrResumoEnt_Clas do begin
          QRLabel16.Caption:='Total Produtor Entrada x Classificação'+vdia+vlocdes;
          vVar_c:='(Codigo>='+Ed2.Text+' and Codigo<='+Ed22.Text+')';
          vDat_c:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vPro:='(Codigo>='+Ed1.Text+' and Codigo<='+Ed11.Text+')';
          vloc_c := vLoc;
          qrVarie.Close;
          qrProdu.Close;
          qrProdu.Sql.Clear;
          qrProdu.Sql.Add('SELECT DISTINCT CADF.CODIGO, CADF.descricao');
          qrProdu.Sql.Add('  FROM CADFORNE CADF');
          qrProdu.Sql.Add(' INNER JOIN ENTRE MOVE ON MOVE.PRODCOD = CADF.CODIGO AND '+vDat_c+vloc_c);
          qrProdu.Sql.Add(' WHERE CADF.codigo > 0 and '+vPro);
          qrProdu.Sql.Add('UNION');
          qrProdu.Sql.Add('SELECT DISTINCT CADF.CODIGO, CADF.descricao');
          qrProdu.Sql.Add('  FROM CADFORNE CADF');
          qrProdu.Sql.Add(' INNER JOIN ROMAN MOVR ON '+vDat_c+vloc_c);
          qrProdu.Sql.Add(' INNER JOIN ROMANPRO MOVP ON MOVP.LANC = MOVR.LANC AND MOVP.PRODCOD = CADF.CODIGO');
          qrProdu.Sql.Add(' WHERE CADF.codigo > 0 and '+vPro);
          qrProdu.Sql.Add('ORDER BY 1');
          qrProdu.Open;
          qrVarie.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrProdu.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
{    if (OPRB9.Checked) and (not GBRB3.checked) and (chkbGrupo.checked) then begin // Resumo Produtor  - Variedade
       if qrResumoEnt_Clas_Grupo<>Nil then qrResumoEnt_Clas_Grupo.Destroy; Application.CreateForm(TqrResumoEnt_Clas_Grupo,qrResumoEnt_Clas_Grupo);
       with qrResumoEnt_Clas_Grupo do begin
          QRLabel16.Caption:='Total Produtor por grupo Entrada x Classificação'+vdia+vlocdes;
          vVar_g:='(Codigo>='+Ed2.Text+' and Codigo<='+Ed22.Text+')';
          vDat_g:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vPro:='(Codigo>='+Ed8.Text+' and Codigo<='+Ed88.Text+')';
          vloc_g := vloc;
          qrVarie.Close; qrEntra.Close; qrRoman.Close;
          qrProdu.Close;
          qrProdu.Sql.Clear;
          qrProdu.Sql.Add('SELECT DISTINCT CADF.CODIGO, CADF.descricao');
          qrProdu.Sql.Add('  FROM CADFORNE CADF');
          qrProdu.Sql.Add(' INNER JOIN ENTRE MOVE ON MOVE.PRODCOD = CADF.CODIGO AND '+vDat_g);
          qrProdu.Sql.Add(' WHERE CADF.codigo > 0 and '+vPro);
          qrProdu.Sql.Add('UNION');
          qrProdu.Sql.Add('SELECT DISTINCT CADF.CODIGO, CADF.descricao');
          qrProdu.Sql.Add('  FROM CADFORNE CADF');
          qrProdu.Sql.Add(' INNER JOIN ROMAN MOVR ON '+vDat_g);
          qrProdu.Sql.Add(' INNER JOIN ROMANPRO MOVP ON MOVP.LANC = MOVR.LANC AND MOVP.PRODCOD = CADF.CODIGO');
          qrProdu.Sql.Add(' WHERE CADF.codigo > 0 and '+vPro);
          qrProdu.Sql.Add('ORDER BY CADF.CODIGO');
          qrProdu.Open;
          qrVarie.Open;
          qrEntra.Open;
          qrRoman.Open;
//          PrinterSettings.PrinterIndex := fImpr('Imp1');
//          if qrProdu.Fields[0].asString='' then ShowMessage('Sem Dados...')
//          else begin if vTag=0 then Preview else Print; end;
       end;
    end;

    if (OPRB9.Checked) and (GBRB3.checked) then begin // Resumo Geral Produtor  - Variedade
       if qrResumoEnt_Clas_ger<>Nil then qrResumoEnt_Clas_ger.Destroy; Application.CreateForm(TqrResumoEnt_Clas_ger,qrResumoEnt_Clas_ger);
       with qrResumoEnt_Clas_ger do begin
          QRLabel16.Caption:='Resumo Produtor Entrada x Classificação'+vdia+vlocdes;
          vVar_gg:='(VarieCod>='+Ed2.Text+' and VarieCod<='+Ed22.Text+')';
          vDat_gg:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vPro:='(Codigo>='+Ed1.Text+' and Codigo<='+Ed11.Text+')';
          vloc_gg := vloc;
          qrEmpr.Close; qrEntra.Close; qrRoman.Close;
          qrProdu.Close;
          qrProdu.Sql.Strings[2]:='Where (Codigo < 1000) and '+vPro;
          qrProdu.Open;
          qrEmpr.Open;
          qrEntra.Open;
          qrRoman.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrProdu.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
}
    //Variedade
//    if (OPRB10.Checked) and (not GBRB3.checked) then begin // Resumo Produtor  - Variedade
    if (OPRB10.Checked) then begin // Resumo Produtor  - Variedade
       if qrResumoEnt_Clas_Var<>Nil then qrResumoEnt_Clas_Var.Destroy; Application.CreateForm(TqrResumoEnt_Clas_Var,qrResumoEnt_Clas_Var);
       with qrResumoEnt_Clas_var do begin
          QRLabel16.Caption:='Total Variedade Entrada x Classificação'+vdia;
          vPro_cv:='(Codigo>='+Ed1.Text+' and Codigo<='+Ed11.Text+')';
          vDat_cv:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vVar:='(Codigo>='+Ed2.Text+' and Codigo<='+Ed22.Text+')';
          vloc_cv := vLoc;
          qrVarie.Close;
          qrProdu.Close;
          qrProdu.Sql.Clear;
          qrProdu.Sql.Add('SELECT DISTINCT CADV.CODIGO, CADV.descricao');
          qrProdu.Sql.Add('  FROM CADVARIE CADV');
          qrProdu.Sql.Add(' INNER JOIN ENTREVAR MOVV ON MOVV.VARIECOD = CADV.CODIGO');
          qrProdu.Sql.Add(' INNER JOIN ENTRE MOVE ON MOVE.LANC = MOVV.LANC AND '+vDat_cv+vloc_cv);
          qrProdu.Sql.Add(' WHERE '+vVar);
          qrProdu.Sql.Add(' UNION');
          qrProdu.Sql.Add('SELECT DISTINCT CADV.CODIGO, CADV.descricao');
          qrProdu.Sql.Add('  FROM CADVARIE CADV');
          qrProdu.Sql.Add(' INNER JOIN ROMAN MOVR ON MOVR.VARIECOD = CADV.CODIGO AND '+vDat_cv+vloc_cv);
          qrProdu.Sql.Add(' INNER JOIN ROMANPRO MOVP ON MOVP.LANC = MOVR.LANC');
          qrProdu.Sql.Add(' WHERE '+vVar);
          qrProdu.Sql.Add(' ORDER BY 1');
          qrProdu.Open;
          qrVarie.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrProdu.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
{    if (OPRB10.Checked) and (GBRB3.checked) then begin // Resumo Geral Produtor  - Variedade
       if qrResumoEnt_Clas_Ger_Var<>Nil then qrResumoEnt_Clas_Ger_Var.Destroy; Application.CreateForm(TqrResumoEnt_Clas_Ger_Var,qrResumoEnt_Clas_Ger_Var);
       with qrResumoEnt_Clas_Ger_Var do begin
          QRLabel16.Caption:='Resumo Variedade Entrada x Classificação'+vdia;
          vVar_gv:='(ProdCod>='+Ed1.Text+' and ProdCod<='+Ed11.Text+')';
          vDat_gv:='(Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vPro:='(Codigo>='+Ed2.Text+' and Codigo<='+Ed22.Text+')';
          qrEmpr.Close; qrEntra.Close; qrRoman.Close;
          qrProdu.Close;
          qrProdu.Sql.Strings[2]:='Where '+vPro;
          qrProdu.Open;
          qrEmpr.Open;
          qrEntra.Open;
          qrRoman.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrProdu.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
}
  end;


//CLASSIFICACAO POR KG
  if (OPRB41.Checked) then begin // RESUMO classificacao
    vVar:='(ee.ProdCod>='+frPree(Trim(Ed2.Text),7,'0',1)+' and ee.ProdCod<='+frPree(Trim(Ed22.Text),7,'9',1)+')';
    vPro:='(cc.Codigo>='+Ed1.Text+' and cc.Codigo<='+Ed11.Text+')';
    if (Length(xRelMarca) > 3) then
      vPro:='cc.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

    vDat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
    vDia:='Período '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
    if (GBRB1.Checked)  then begin // Classificação
       if qrPDLoteMovKg<>Nil then qrPDLoteMovKg.Destroy; Application.CreateForm(TqrPDLoteMovKg,qrPDLoteMovKg);
       with qrPDLoteMovKg do begin
          QRLabel16.Caption:='Classificação  '+vdia+vlocDes;
          qrDados.Close;
          qrDados.Sql.Strings[0]:='Select cc.Codigo, cc.Data, cc.Lote, ee.Lanc, ee.ProdCod, ee.ProdDes, '
                                 +'ee.QtdeEnt, ee.PesoReal, ee.CodiAux, '
                                 +'(select ff.descricao from cadforne ff where ff.codigo = cc.codigo) as Descricao';
          qrDados.Sql.Strings[2]:='Where (cc.Lanc=ee.Lanc) and (PesoReal<>0) and '+vdat
                                  +' and '+vpro+' and '+vvar+vloc;
          qrDados.Open;
          qrLabel4.Caption := 'Qtde.Kg';
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrDados.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;

    if (GBRB2.Checked) or (GBRB3.Checked) then begin // RESUMO classificacao
       if qrProdClasMovKg<>Nil then qrProdClasMovKg.Destroy; Application.CreateForm(TqrProdClasMovKg,qrProdClasMovKg);
       with qrProdClasMovKg do begin
          vDataPer :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vpcmLoc := vLoc;
          vpcmLocDes := vLocDes;
          qrVenda.Close; qrProdu.Close;
          qrVenda.Sql.Strings[0]:='SELECT ee.PRODCOD,SUM(ee.QTDEENT) AS QT,SUM(ee.PESOREAL) AS GE, AVG(PRECO) AS PR';
          qrVenda.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro+vpcmLoc;
          qrVenda.Sql.Strings[3]:='GROUP BY ee.PRODCOD';
          QRSubDetail2.Height:=13;
          ChildBand2.Color:=$00FFC4C4;
          if (GBRB2.Checked) then begin
             qrProdu.Sql.Strings[0]:='Select cc.Codigo, cc.Descricao';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro+vpcmLoc;
             qrProdu.Sql.Strings[3]:='GROUP BY cc.Codigo, cc.Descricao';
             qrProdu.Sql.Strings[4]:='ORDER BY cc.Descricao';
             vlcgerk:='N';
             QRLabel16.Caption:='Resumo Produtor da Classificação  no '+vdia+vLocDes;
          end else begin
             vlcgerk:='S';
             QRLabel16.Caption:='Resumo Geral da Classificação  no '+vdia+vLocDes;
             qrProdu.Sql.Strings[0]:='Select Sum(QtdeEnt)';
             qrProdu.Sql.Strings[3]:='';
             qrProdu.Sql.Strings[4]:='';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+vpcmLoc;
          end;
          qrVenda.Open; qrProdu.Open;
          qrLabel1.Caption := 'Qtde.Kg';
          PrinterSettings.PrinterIndex := fImpr('Imp2');
          if qrVenda.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
       end;
    end;
  end;

//CLASSIFICACAO POR CX
  if (OPRB42.Checked) then begin // RESUMO classificacao
    vVar:='(ee.ProdCod>='+frPree(Trim(Ed2.Text),7,'0',1)+' and ee.ProdCod<='+frPree(Trim(Ed22.Text),7,'9',1)+')';
    vPro:='(cc.Codigo>='+Ed1.Text+' and cc.Codigo<='+Ed11.Text+')';
    if (Length(xRelMarca) > 3) then
      vPro:='cc.Codigo IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

    vDat:='(cc.Data>='+frInvD(Ed4.Date)+' and cc.Data<'+frInvD(Ed44.Date+1)+')';
    vDia:='Período '+DateToStr(Ed4.Date)+' à '+DateToStr(Ed44.Date);
    if (GBRB1.Checked)  then begin // Classificação
       if qrPDLoteMovKg<>Nil then qrPDLoteMovKg.Destroy; Application.CreateForm(TqrPDLoteMovKg,qrPDLoteMovKg);
       with qrPDLoteMovKg do begin
          QRLabel16.Caption:='Classificação  '+vdia+vlocDes;
          qrDados.Close;
          qrDados.Sql.Strings[0]:='Select cc.Codigo, cc.Data, cc.Lote, ee.Lanc, ee.ProdCod, ee.ProdDes, '
                                 +'ee.QtdeEnt as PesoReal, ee.PesoReal as QtdeEnt, ee.CodiAux, '
                                 +'(select ff.descricao from cadforne ff where ff.codigo = cc.codigo) as Descricao';
          qrDados.Sql.Strings[2]:='Where (cc.Lanc=ee.Lanc) and (PesoReal<>0) and '+vdat
                                  +' and '+vpro+' and '+vvar+vloc;
          qrDados.Open;
          qrLabel4.Caption := 'Qtde.Cx';
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrDados.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;

    if (GBRB2.Checked) or (GBRB3.Checked) then begin // RESUMO classificacao
       if qrProdClasMovKg<>Nil then qrProdClasMovKg.Destroy; Application.CreateForm(TqrProdClasMovKg,qrProdClasMovKg);
       with qrProdClasMovKg do begin
          vDataPer :=' and (Data>='+frInvD(Ed4.Date)+' and Data<'+frInvD(Ed44.Date+1)+')';
          vpcmLoc := vLoc;
          vpcmLocDes := vLocDes;
          qrVenda.Close; qrProdu.Close;
          qrVenda.Sql.Strings[0]:='SELECT ee.PRODCOD,SUM(ee.QTDEENT) AS GE,SUM(ee.PESOREAL) AS QT, AVG(PRECO) AS PR';
          qrVenda.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro+vpcmLoc;
          qrVenda.Sql.Strings[3]:='GROUP BY ee.PRODCOD';
          QRSubDetail2.Height:=13;
          ChildBand2.Color:=$00FFC4C4;
          if (GBRB2.Checked) then begin
             qrProdu.Sql.Strings[0]:='Select cc.Codigo, cc.Descricao';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+' and '+vPro+vpcmLoc;
             qrProdu.Sql.Strings[3]:='GROUP BY cc.Codigo, cc.Descricao';
             qrProdu.Sql.Strings[4]:='ORDER BY cc.Descricao';
             vlcgerk:='N';
             QRLabel16.Caption:='Resumo Produtor da Classificação  no '+vdia+vLocDes;
          end else begin
             vlcgerk:='S';
             QRLabel16.Caption:='Resumo Geral da Classificação  no '+vdia+vLocDes;
             qrProdu.Sql.Strings[0]:='Select Sum(QtdeEnt)';
             qrProdu.Sql.Strings[3]:='';
             qrProdu.Sql.Strings[4]:='';
             qrProdu.Sql.Strings[2]:='Where cc.Lanc=ee.Lanc and '+vDat+' and '+vVar+vpcmLoc;
          end;
          qrVenda.Open; qrProdu.Open;
          qrLabel1.Caption := 'Qtde.Cx';
          PrinterSettings.PrinterIndex := fImpr('Imp2');
          if qrVenda.Fields[0].asString='' then ShowMessage('Sem Dados...')
          else begin if TComponent(Sender).Tag=0 then Preview else Print; end;
       end;
    end;
  end
end;

procedure TFfrmRelProducao.pGeraResumoEmbalador;
var i, vi,vcod,vreg,vlot:Integer;
    vDatax, vHorax, vEmbax, vstr:String;
begin
  vDatax:='(DataLanc >= '+frInvD(Ed4.Date)+' and DataLanc < '+frInvD(Ed44.Date+1)+')';
  vHorax:='(HoraLanc >= '+frInvH('i',TimeToStr(EdH1.Time))+' and HoraLanc < '+frInvH('f',TimeToStr(EdH11.Time))+')';
  vEmbax:='(EmbalCod >= '+frStrZero(Ed1.Text,5)+' and EmbalCod <= '+frStrZero(Ed11.Text,5)+')';

  with qrPDLoteResEmb do
  begin
    qrDados.close;
    qrDados.CreateDataSet;
    qrDados.Open;

    lbTables.Clear;
    dm.JaeAdmin.GetTableNames(lbTables.Items,false);
  //  for vi := 0 to lbTables.Count - 1 do
    for vi := lbTables.Count - 1 DownTo 0 do
    begin
      vstr := lbTables.Items[vi];
      i := pos('ESTEIRAC',vstr);
      if (i > 0) then
      begin

        if (vstr <> '') then
        begin
          fSql(5,1,['Select EmbalCod, Codigo, Descricao, Sum(Qtde) as vqtd ',
                    '  From '+vstr,
                    ' Where '+vdatax,
                    '   and '+vhorax,
                    '   and '+vembax,
                    ' Group By EmbalCod, Codigo, Descricao'],6);
          dm.qrSql1.First;
          while not dm.qrSql1.Eof do
          begin

            if (dm.qrSql1.Fields[2].AsString <> '') and (dm.qrSql1.Fields[3].asInteger > 0) then
            begin

              if qrDados.Locate('Codigo;Prodcod', VarArrayOf([dm.qrSql1.Fields[0].asInteger,dm.qrSql1.Fields[1].asInteger]), []) then
                qrDados.Edit

              else begin
                qrDados.Append;
                qrDadosCodigo.AsInteger  := dm.qrSql1.Fields[0].asInteger;
                qrDadosDescricao.AsString:= fBus(1,['Select descricao From cadembal where codigo = '+dm.qrSql1.Fields[0].asString],1);
                qrDadosProdCod.AsInteger := dm.qrSql1.Fields[1].asInteger;
                qrDadosProdDes.AsString  := dm.qrSql1.Fields[2].asString;
              end;

              qrDadosQtde.AsInteger    := qrDadosQtde.AsInteger  + dm.qrSql1.Fields[3].asInteger;
              qrDados.Post;

            end;

            dm.qrSql1.Next;

          end;
        end;
      end;
    end;
  end;
end;

end.
