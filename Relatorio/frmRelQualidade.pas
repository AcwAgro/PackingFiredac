unit frmRelQualidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Db, DBTables, RzPanel;

type
  TFfrmRelQualidade = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    rzpnlFiltro: TRzPanel;
    rzFiltro: TRzPanel;
    OPRB6: TRadioButton;
    OPRB5: TRadioButton;
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
    GP5: TGroupBox;
    GBRB1: TRadioButton;
    GBRB2: TRadioButton;
    GBRB3: TRadioButton;
    TPesq: TTimer;
    OPRB7: TRadioButton;
    OPRB8: TRadioButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FfrmRelQualidade: TFfrmRelQualidade;

implementation

uses Menu, Data, Rotina, Pesq, rlMovBin, rlMovTar, rlMovEnt,
  rlResumo, rlResGer, rlResSal, rlResAmo, rlMovAmo, rlSalBins, rlResEntVar,
  rlCamMov, rlPrevis, rlPrevisGru, rlDefeito, rlPrevisBin, rlResAmoGer,
  rlResEntGer, rlMovAmoEnt, rlMovQuadra, rlResGru, rlPrevisGer, rlPDLoteMov,
  rlProdClasMov, rlSalBinsTipo, rlMovAmoSem, rlResAmoSem, rlResAmoGerSem,
  rlMovDefSem, rlResDefSem, rlResDefGerSem, rlResumoEnt_Clas, rlResumoEnt_Clas_Ger,
  rlResumoEnt_Clas_var, rlResumoEnt_Clas_Ger_var, rlResumoEnt_Clas_Grupo;

{$R *.DFM}
procedure TFfrmRelQualidade.ED44Change(Sender: TObject);
begin
  if not(ed44.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelQualidade.ED4Change(Sender: TObject);
begin
  if not(ed4.DroppedDown) then
    keybd_event(39, 0, 0, 0);

end;

procedure TFfrmRelQualidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FfrmRelQualidade);
end;

procedure TFfrmRelQualidade.FormCreate(Sender: TObject);
begin
  ED4.Date:=StrToDate('01/01/'+Copy(DateToStr(Now),7,4));
  ED44.Date:=Now;
end;

procedure TFfrmRelQualidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then begin key:=0;
      Selectnext((Sender As TWinControl),True,True); end
  else if key=38 then begin
      Selectnext((Sender As TWinControl),False,True); end;
end;

procedure TFfrmRelQualidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;
     Selectnext((Sender As TWinControl),True,True); end;
end;

procedure TFfrmRelQualidade.SBP1Click(Sender: TObject);
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
  end;
  xpqpesq:=TComponent(Sender).Tag;
  TPesq.Enabled:=True;
end;

procedure TFfrmRelQualidade.TPesqTimer(Sender: TObject);
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
     end;
  end;
end;

procedure TFfrmRelQualidade.SB6Click(Sender: TObject);
var vTag:Integer; vtip,vdia,vvar,vpro,vdat:String;
begin
  vTag:=TComponent(Sender).Tag;
    if (OPRB5.Checked and GBRB2.Checked) or (OPRB5.Checked and GBRB1.Checked) then begin // Resumo amostra
       vVar:='vv.VarieCod>='+Ed2.Text+' and vv.VarieCod<='+Ed22.Text;
       vPro:='re.ProdCod>='+Ed1.Text+' and re.ProdCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='re.ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrResAmo<>Nil then qrResAmo.Destroy; Application.CreateForm(TqrResAmo,qrResAmo);
       with qrResAmo do begin
          QRLabel16.Caption:='Resumo Amostra '+vdia;
          QRLabel13.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc=vv.Lanc) and ('+vDat+') and ('+vPro+') and ('+vVar+')';
          qrMovim.Open;
          vVarie:='(am.VarieCod>='+Ed2.Text+' and am.VarieCod<='+Ed22.Text+')';
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB5.Checked and GBRB3.Checked) then begin // Resumo Amostra
       vVar:='vv.VarieCod>='+Ed2.Text+' and vv.VarieCod<='+Ed22.Text;
       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrResAmoGer<>Nil then qrResAmoGer.Destroy; Application.CreateForm(TqrResAmoGer,qrResAmoGer);
       with qrResAmoGer do begin
          QRLabel16.Caption:='Resumo Geral Amostra '+vdia;
          QRLabel5.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc=vv.Lanc) and ('+vDat+') and ('+vVar+')';
          qrMovim.Open;
          vVarie:='(am.VarieCod>='+Ed2.Text+' and am.VarieCod<='+Ed22.Text+')';
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;

//Previsao
    if (OPRB6.Checked and GBRB1.Checked) then begin // Previsão
       vPro:='pp.ProdCod>='+Ed1.Text+' and pp.ProdCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='pp.ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       vVar:='cc.VarieCod>='+Ed2.Text+' and cc.VarieCod<='+Ed22.Text;
       if qrPrevis<>Nil then qrPrevis.Destroy; Application.CreateForm(TqrPrevis,qrPrevis);
       with qrPrevis do begin
          QRLabel16.Caption:='Previsão Safra '+Copy(DateTostr(Ed4.Date),7,4);
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where pp.Lanc=cc.Lanc and ('+vPro+') and ('+vVar+') and (pp.Safra = '+QuotedStr(Copy(DateTostr(Ed4.Date),7,4))+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB6.Checked and GBRB2.Checked) then begin // Previsão
       vPro:='pp.ProdCod>='+Ed1.Text+' and pp.ProdCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='pp.ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       if qrPrevisGru<>Nil then qrPrevisGru.Destroy; Application.CreateForm(TqrPrevisGru,qrPrevisGru);
       with qrPrevisGru do begin
          QRLabel16.Caption:='Previsão por Grupo Safra '+Copy(DateTostr(Ed4.Date),7,4);
//          vVar:='DuplicaCod>='+Ed2.Text+' and DuplicaCod<='+Ed22.Text;
          if Length(Trim(Ed2.Text)) < 2 then
            vVar:='DuplicaCod ='+Trim(Ed2.Text)+'0'
          else
            vVar:='DuplicaCod ='+Ed2.Text;

          fSql(1,1,['Select Codigo, Descricao From CadVarie',
                    'Where '+vvar,
                    'Order by Codigo'],3);
          qrLabel10.Caption:=dm.qrSql1.Fields[1].Text;
          dm.qrSql1.First;
          if dm.qrSql1.IsEmpty then
            vVar:='cc.VarieCod=0'
          else begin
            vdat:='(';
            while not dm.qrSql1.Eof do begin
               vdat:=vdat+'cc.VarieCod='+dm.qrSql1.Fields[0].Text+' or ';
               dm.qrSql1.Next;
            end;
            vVar:=Copy(vdat,1,Length(vdat)-4)+')';
          end;
          dm.qrSql1.Close;
          vVaried:=vVar;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where pp.Lanc=cc.Lanc and ('+vPro+') and (pp.Safra = '+QuotedStr(Copy(DateTostr(Ed4.Date),7,4))+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB6.Checked and GBRB3.Checked) then begin // Previsão Geral
       vVar:='cc.VarieCod>='+Ed2.Text+' and cc.VarieCod<='+Ed22.Text;
       if qrPrevisGer<>Nil then qrPrevisGer.Destroy; Application.CreateForm(TqrPrevisGer,qrPrevisGer);
       with qrPrevisGer do begin
          QRLabel16.Caption:='Previsão Geral Variedade Safra '+Copy(DateTostr(Ed4.Date),7,4);
          vVaried:=vVar;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where pp.Lanc=cc.Lanc and ('+vVar+') and (pp.Safra = '+QuotedStr(Copy(DateTostr(Ed4.Date),7,4))+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;

//AMOSTRA SOMENTE
    if (OPRB7.Checked and GBRB1.Checked) then begin // Amostra
       vVar:='re.VarieCod>='+Ed2.Text+' and re.VarieCod<='+Ed22.Text;
       vPro:='re.ProdCod>='+Ed1.Text+' and re.ProdCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='re.ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrMovAmoSem<>Nil then qrMovAmoSem.Destroy; Application.CreateForm(TqrMovAmoSem,qrMovAmoSem);
       with qrMovAmoSem do begin
          QRLabel16.Caption:='Movimento Amostra '+vdia;
          QRLabel13.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc > 0) and ('+vDat+') and ('+vPro+') and ('+vVar+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB7.Checked and GBRB2.Checked) then begin // Resumo amostra
       vVar:='re.VarieCod>='+Ed2.Text+' and re.VarieCod<='+Ed22.Text;
       vPro:='re.ProdCod>='+Ed1.Text+' and re.ProdCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='re.ProdCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrResAmoSem<>Nil then qrResAmoSem.Destroy; Application.CreateForm(TqrResAmoSem,qrResAmoSem);
       with qrResAmoSem do begin
          QRLabel16.Caption:='Resumo Amostra '+vdia;
          QRLabel13.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc > 0) and ('+vDat+') and ('+vPro+') and ('+vVar+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB7.Checked and GBRB3.Checked) then begin // Resumo Amostra
       vVar:='re.VarieCod>='+Ed2.Text+' and re.VarieCod<='+Ed22.Text;
       vPro:='re.ProdCod>='+Ed1.Text+' and re.ProdCod<='+Ed11.Text;
       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrResAmoGerSem<>Nil then qrResAmoGerSem.Destroy; Application.CreateForm(TqrResAmoGerSem,qrResAmoGerSem);
       with qrResAmoGerSem do begin
          QRLabel16.Caption:='Resumo Geral Amostra '+vdia;
          QRLabel5.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc > 0) and ('+vDat+') and ('+vVar+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;

//DEFEITO
    if (OPRB8.Checked and GBRB1.Checked) then begin // Amostra
       vVar:='re.VarCod>='+Ed2.Text+' and re.VarCod<='+Ed22.Text;
       vPro:='re.ForCod>='+Ed1.Text+' and re.ForCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='re.ForCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrMovDefSem<>Nil then qrMovDefSem.Destroy; Application.CreateForm(TqrMovDefSem,qrMovDefSem);
       with qrMovDefSem do begin
          QRLabel16.Caption:='Movimento Defeitos '+vdia;
          QRLabel13.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc > 0) and ('+vDat+') and ('+vPro+') and ('+vVar+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB8.Checked and GBRB2.Checked) then begin // Resumo amostra
       vVar:='re.VarCod>='+Ed2.Text+' and re.VarCod<='+Ed22.Text;
       vPro:='re.ForCod>='+Ed1.Text+' and re.ForCod<='+Ed11.Text;
       if (Length(xRelMarca) > 3) then
         vPro:='re.ForCod IN (' + Copy(xRelMarca, 1, Length(xRelMarca)-1)+')';

       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrResDefSem<>Nil then qrResDefSem.Destroy; Application.CreateForm(TqrResDefSem,qrResDefSem);
       with qrResDefSem do begin
          QRLabel16.Caption:='Resumo Defeitos '+vdia;
          QRLabel13.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc > 0) and ('+vDat+') and ('+vPro+') and ('+vVar+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
    if (OPRB8.Checked and GBRB3.Checked) then begin // Resumo Amostra
       vVar:='re.VarCod>='+Ed2.Text+' and re.VarCod<='+Ed22.Text;
       vDat:='re.Data>='+frInvD(Ed4.Date)+' and re.Data<'+frInvD(Ed44.Date+1);
       if qrResDefGerSem<>Nil then qrResDefGerSem.Destroy; Application.CreateForm(TqrResDefGerSem,qrResDefGerSem);
       with qrResDefGerSem do begin
          QRLabel16.Caption:='Resumo Geral Defeitos '+vdia;
          QRLabel5.Caption:='Geral';
          qrAmos.Close; qrAmos.Open;
          qrMovim.Close;
          qrMovim.Sql.Strings[2]:='Where (re.Lanc > 0) and ('+vDat+') and ('+vVar+')';
          qrMovim.Open;
          PrinterSettings.PrinterIndex := fImpr('Imp1');
          if qrMovim.RecordCount<1 then ShowMessage('Sem Dados...')
          else begin if vTag=0 then Preview else Print; end;
       end;
    end;
end;

end.
