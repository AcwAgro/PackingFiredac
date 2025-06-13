unit FrmCadSincronizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, RzPanel, DBTables, DB,
  Gauges, DBClient, Provider;

type
  TFCadSincronizar = class(TForm)
    RzPanel1: TRzPanel;
    rzpMenu: TRzPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox2: TGroupBox;
    meBaseCC: TMaskEdit;
    lblBase: TLabel;
    sbSalvar: TSpeedButton;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Label1: TLabel;
    dnGestaoCopia: TDatabase;
    Session3: TSession;
    sqlDados: TQuery;
    dspDados: TDataSetProvider;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    CheckBox5: TCheckBox;
    sqlQuery: TQuery;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox0: TCheckBox;
    qrSqlBusSin: TQuery;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarClick(Sender: TObject);
    procedure meBaseCCExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function fBusSin(vSessao: Integer; vSql: array of String; vLinha: Integer): Variant;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FCadSincronizar: TFCadSincronizar;

implementation

{$R *.dfm}
uses Data, Rotina, Menu;

procedure TFCadSincronizar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//  FreeAndNil(FCadSincronizar);

end;

procedure TFCadSincronizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F5 then sbSalvar.OnClick(sbSalvar);
  if key = VK_F6 then Close;
  if (key = 40) or (key = VK_TAB) then
    Perform(WM_NEXTDLGCTL, 0, 0)
  else if key = 38 then
    Selectnext((Sender As TWinControl),False,True);
end;

procedure TFCadSincronizar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key  := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFCadSincronizar.FormShow(Sender: TObject);
begin

  if meBaseCC.CanFocus then
    meBaseCC.SetFocus;

end;

procedure TFCadSincronizar.meBaseCCExit(Sender: TObject);
var vbase1, vbase2, vnome, valias, vdirdb: String;
begin

  lblBase.Caption := '';
  vbase1 := Trim('01');
  vbase2 := Trim(meBaseCC.Text);
  if (vbase1 = vbase2) or (vbase2 = '00') then
  begin

    ShowMessage('Tem que ser uma bases diferentes da conectada ou válida!');
    Exit;

  end;

  vNome  := 'BDFrutis' + vBase2+'.mdb';
  vAlias := 'ACWebFruits'+vBase2;

  vdirdb := xDirSi + 'dados\' +vNome;
  if not FileExists(vdirdb) then
  begin
    ShowMessage('Arquivo não encontrado!'+#13+', Contacte o Técnico.' +#13+ vdirdb);
    Exit;
  end;
  try
    Session3.Active := False;
    dnGestaoCopia.Connected := False;
    dnGestaoCopia.Params.Clear;
    dnGestaoCopia.Params.Add('PASSWORD=acwebdobrasil');
    dnGestaoCopia.Params.Add('ODBC DSN=ACWebFruits' + vBase2);
    dnGestaoCopia.AliasName := vAlias;
    if frOBDC(vDirDB, 'ACWebFruits' + vBase2) then
      dnGestaoCopia.Connected := True;
  except
    dnGestaoCopia.Connected := False;
    ShowMessage('Arquivo não carregado!'+#13+', Contacte o Técnico.' +#13+ vdirdb);
    Exit;
  end;

  //empresa
  sqlDados.Close;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  sqlDados.SQL.Add('SELECT descricao FROM Empresa');
  cdsDados.Open;
  lblBase.Caption := cdsDados.Fields[0].AsString;
  cdsDados.Close;

end;

procedure TFCadSincronizar.sbSalvarClick(Sender: TObject);
var vcc, vi, vf, vlanc, vlancit: Integer;
    vnn, vfil, vcap, vcampo: String;
    vdtS: String;
    vdtD: TDate;
begin

  CheckBox3.SetFocus;

  if not frPerg('Deseja sincronizar ?') then
    exit;

  GroupBox1.Visible := True;

  //Parte Inserir
  if (CheckBox0.Checked) then
  begin
    sqlDados.Close;
    cdsDados.Close;
    sqlDados.Sql.Clear;
    sqlDados.SQL.Add('UPDATE CADCLIEN SET ACESOCOD = 0');
    sqlDados.ExecSQL;
    sqlDados.Close;
    sqlDados.Sql.Clear;
    sqlDados.SQL.Add('UPDATE CADFORNE SET ACESOCOD = 0');
    sqlDados.ExecSQL;
    cdsDados.Close;
    sqlDados.Sql.Clear;
    sqlDados.SQL.Add('UPDATE CADPLANO SET LANCIT = 0');
    sqlDados.ExecSQL;
    cdsDados.Close;
  end;

  for vcc := 0 to 9 do
  begin
    vnn := '';
    if (vcc = 0) and (CheckBox1.Checked) then
    begin
      vnn  := 'CADPLANO';
      vcap := 'Plano';
      vcampo := 'REDUZ';
    end;
    if (vcc = 1) and (CheckBox2.Checked) then
    begin
      vnn  := 'CADPRODU';
      vcap := 'Produto';
      vcampo := 'CODIGO';
    end;
    if (vcc = 2) and (CheckBox3.Checked) then
    begin
      vnn  := 'CADCLIEN';
      vcap := 'Cliente';
      vcampo := 'CPF';
    end;
    if (vcc = 3) and (CheckBox4.Checked) then
    begin
      vnn  := 'CADFORNE';
      vcap := 'Fornecedor';
      vcampo := 'CPF';
    end;

    if (vcc = 4) and (CheckBox5.Checked) then
    begin
      vnn  := 'NFVENDA';
      vcap := 'Nota';
      vcampo := 'LANC';
    end;
    if (vcc = 5) and (CheckBox5.Checked) then
    begin
      vnn  := 'NFVENDCO';
      vcap := 'Nota item';
      vcampo := 'LANCIT';
    end;

    if (vcc = 6) and (CheckBox5.Checked) then
    begin
      vnn  := 'FIPAVE';
      vcap := 'Nota Financeiro';
      vcampo := 'LANCIT';
    end;

    if (vcc = 7) and (CheckBox6.Checked) then
    begin
      vnn  := 'FIBAIREC';
      vcap := 'Receber';
      vcampo := 'LANC';
    end;

    if (vcc = 8) and (CheckBox7.Checked) then
    begin
      vnn  := 'FIBAIPAG';
      vcap := 'Pagar';
      vcampo := 'LANC';
    end;

    if (vcc = 9) and (CheckBox8.Checked) then
    begin
      vnn  := 'CXBANCO';
      vcap := 'Caixa';
      vcampo := 'LANC';
    end;

    if (vnn <> '') then
    begin

      GroupBox1.Caption := ' Sincronização registros '+vcap;

      //Parte Inserir
      sqlDados.Close;
      cdsDados.Close;
      sqlDados.Sql.Clear;
      sqlDados.SQL.Add('SELECT * FROM '+vnn);
      cdsDados.Open;

      fSql(1,1,['SELECT * FROM '+vnn],1);
      Gauge1.MaxValue := dm.qrSql1.RecordCount;
      Gauge1.Progress := 0;
      dm.qrSql1.First;
      while not dm.qrSql1.Eof do
      begin

        Gauge1.Progress := Gauge1.Progress + 1;
        Application.ProcessMessages;

        //Procura caso exista só editar

        if (vnn = 'CADPLANO') then
        begin
          if not cdsDados.Locate(vcampo, dm.qrSql1.FieldByName(vcampo).AsString, []) then
          begin
            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;
                if (vfil = 'REDUZ') then
                  cdsDados.FieldByName(vfil).AsInteger := dm.qrSql1.FieldByName('REDUZ').Value //frGenerator('CADPRODU','CODIGO',1)
                else if (vfil = 'LANCIT') then
                  cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName('REDUZ').Value
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;
              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Plano Insert: ' + E.Message, mtError, [mbOk], 0);
            end;
          end
          else begin
            try
              cdsDados.Edit;
              cdsDados.FieldByName('LANCIT').AsInteger :=  dm.qrSql1.FieldByName('REDUZ').Value;
              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Plano Edit: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'CADPRODU') then
        begin
          if not cdsDados.Locate(vcampo, dm.qrSql1.FieldByName(vcampo).AsString, []) then
          begin
            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;
                if (vfil = 'CODIGO') then
                  cdsDados.FieldByName(vfil).AsInteger := dm.qrSql1.FieldByName('CODIGO').Value //frGenerator('CADPRODU','CODIGO',1)
                else if (vfil = 'ACESOCOD') then
                  cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;
              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Produto Insert: ' + E.Message, mtError, [mbOk], 0);
            end;
          end
          else begin
            try
              cdsDados.Edit;
              cdsDados.FieldByName('ACESOCOD').AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value;
              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Produto Edit: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'CADCLIEN') then
        begin
          {if (not cdsDados.Locate(vcampo, dm.qrSql1.FieldByName(vcampo).AsString, []))
          or (Trim(dm.qrSql1.FieldByName(vcampo).AsString) = '')
          then
          begin
            if not cdsDados.Locate('DESCRICAO', dm.qrSql1.FieldByName('DESCRICAO').AsString, []) then
            begin
              try
                cdsDados.Append;

                for vi := 0 to dm.qrSql1.FieldCount - 1 do
                begin

                  vfil := dm.qrSql1.Fields[vi].FieldName;
                  if (vfil = 'CODIGO') then
                    cdsDados.FieldByName(vfil).AsInteger := frGenerator('CADCLIEN','CODIGO',1)
                  else if (vfil = 'ACESOCOD') then
                    cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value
                  else begin
                    if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                    begin
                      if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                      begin
                        vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                        try
                          if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                            vdtD := StrToDate(vdts)
                          else
                            vdtD := StrToDate('01/01/2023');
                          cdsDados.FieldByName(vfil).Value := vdtD;
                        except
                        end;
                      end
                      else
                        cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                    end;
                  end;

                end;

                cdsDados.Post;
                cdsDados.ApplyUpdates(0);
              except
                on E:Exception do
                  MessageDlg('Cliente Insert: ' + E.Message, mtError, [mbOk], 0);
              end;
            end
            }
            if (Trim(dm.qrSql1.FieldByName(vcampo).AsString) <> '') then
            begin
              if (cdsDados.Locate(vcampo, dm.qrSql1.FieldByName(vcampo).AsString, [])) then
              begin
                try
                  cdsDados.Edit;

                  for vi := 0 to dm.qrSql1.FieldCount - 1 do
                  begin

                    vfil := dm.qrSql1.Fields[vi].FieldName;
                    if (vfil = 'CODIGO') then
                      vfil := dm.qrSql1.Fields[vi].FieldName
                    else if (vfil = 'ACESOCOD') then
                      cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value
                    else begin
                      if (not dm.qrSql1.FieldByName(vfil).IsNull) and
                         (dm.qrSql1.FieldByName(vfil).AsString <> '') then
                      begin
                        if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                        begin
                          vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                          try
                            if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                              vdtD := StrToDate(vdts)
                            else
                              vdtD := StrToDate('01/01/2023');
                            cdsDados.FieldByName(vfil).Value := vdtD;
                          except
                          end;
                        end
                        else
                          cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                      end;
                    end;

                  end;
                  cdsDados.Post;
                  cdsDados.ApplyUpdates(0);
                except
                  on E:Exception do
                    MessageDlg('Cliente Edit: ' + E.Message, mtError, [mbOk], 0);
                end;
              end;
            end;
{          end
          else begin
            try
              cdsDados.Edit;
              cdsDados.FieldByName('ACESOCOD').AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value;
              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Cliente Edit: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;}
        end;

        if (vnn = 'CADFORNE') then
        begin
          if (not cdsDados.Locate(vcampo, dm.qrSql1.FieldByName(vcampo).AsString, []))
          or (Trim(dm.qrSql1.FieldByName(vcampo).AsString) = '')
          then
          begin
            if not cdsDados.Locate('DESCRICAO', dm.qrSql1.FieldByName('DESCRICAO').AsString, []) then
            begin
              try
                cdsDados.Append;

                for vi := 0 to dm.qrSql1.FieldCount - 1 do
                begin

                  vfil := dm.qrSql1.Fields[vi].FieldName;

                  if (vfil = 'CODIGO') then
                    cdsDados.FieldByName(vfil).AsInteger := frGenerator('CADFORNE','CODIGO',1)
                  else if (vfil = 'ACESOCOD') then
                    cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value
                  else begin
                    if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                    begin
                      if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                      begin
                        vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                        try
                          if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                            vdtD := StrToDate(vdts)
                          else
                            vdtD := StrToDate('01/01/2023');
                          cdsDados.FieldByName(vfil).Value := vdtD;
                        except
                        end;
                      end
                      else
                        cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                    end;
                  end;

                end;

                cdsDados.Post;
                cdsDados.ApplyUpdates(0);
              except
                on E:Exception do
                  MessageDlg('Fornecedor Insert: ' + E.Message, mtError, [mbOk], 0);
              end;
            end
            else begin
              try
                cdsDados.Edit;
                cdsDados.FieldByName('ACESOCOD').AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value;
                cdsDados.Post;
                cdsDados.ApplyUpdates(0);
              except
                on E:Exception do
                  MessageDlg('Fornecedor Edit: ' + E.Message, mtError, [mbOk], 0);
              end;
            end;
          end
          else begin
            try
              cdsDados.Edit;
              cdsDados.FieldByName('ACESOCOD').AsInteger :=  dm.qrSql1.FieldByName('CODIGO').Value;
              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Fornecedor Edit: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'NFVENDA') then
        begin
          vlanc := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

          if not cdsDados.Locate(vcampo, vlanc, []) then
          begin
            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;

                if (vfil = 'LANC') then
                  cdsDados.FieldByName(vfil).AsInteger := vlanc
                else if (vfil = 'ACESOCOD') then
                  cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName(vcampo).Value
                else if (vfil = 'CODIGO') then
                begin
                  vdtS := dm.qrSql1.FieldByName(vfil).AsString;
                  if (dm.qrSql1.FieldByName('DIF').AsString = 'S') then
                    vdtS := fBusSin(1, ['Select codigo from cadclien where acesocod = 0'+vdtS],1)
                  else
                    vdtS := fBusSin(1, ['Select codigo from cadforne where acesocod = 0'+vdtS],1);
                  if (StrToIntDef(vdts,0) > 0) then
                    cdsDados.FieldByName(vfil).AsInteger := StrToIntDef(vdts,0)
                end
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;

              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('NFVenda: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'NFVENDCO') then
        begin
          vlancit := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

          if not cdsDados.Locate(vcampo, vlancit, []) then
          begin

            vlanc := dm.qrSql1.FieldByName('lanc').AsInteger + 20000;

            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;

                if (vfil = 'LANCIT') then
                  cdsDados.FieldByName(vfil).AsInteger := vlancit
                else if (vfil = 'LANC') then
                  cdsDados.FieldByName(vfil).AsInteger := vlanc
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;

              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('NFVenda Item: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'FIPAVE') then
        begin
          vlancit := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

          if not cdsDados.Locate(vcampo, vlancit, []) then
          begin

            vlanc := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

            try

              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;

                if (vfil = 'LANCIT') then
                  cdsDados.FieldByName(vfil).AsInteger := vlancit
                else if (vfil = 'LANC') then
                  cdsDados.FieldByName(vfil).AsInteger := vlanc
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;

              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('NFVenda Finan: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'FIBAIREC') then
        begin
          vlanc := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

          if not cdsDados.Locate(vcampo, vlanc, []) then
          begin
            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;

                if (vfil = 'LANC') then
                  cdsDados.FieldByName(vfil).AsInteger := vlanc
                else if (vfil = 'ACESOCOD') then
                  cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName(vcampo).Value
                else if (vfil = 'CODIGO') then
                begin
                  vdtS := dm.qrSql1.FieldByName(vfil).AsString;
                  vdtS := fBusSin(1, ['Select codigo from cadclien where acesocod = 0'+vdtS],1);
                  if (StrToIntDef(vdts,0) > 0) then
                    cdsDados.FieldByName(vfil).AsInteger := StrToIntDef(vdts,0)
                end
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;

              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Receber: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'FIBAIPAG') then
        begin
          vlanc := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

          if not cdsDados.Locate(vcampo, vlanc, []) then
          begin
            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;

                if (vfil = 'LANC') then
                  cdsDados.FieldByName(vfil).AsInteger := vlanc
                else if (vfil = 'ACESOCOD') then
                  cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName(vcampo).Value
                else if (vfil = 'CODIGO') then
                begin
                  vdtS := dm.qrSql1.FieldByName(vfil).AsString;
                  vdtS := fBusSin(1, ['Select codigo from cadforne where acesocod = 0'+vdtS],1);
                  if (StrToIntDef(vdts,0) > 0) then
                    cdsDados.FieldByName(vfil).AsInteger := StrToIntDef(vdts,0)
                end
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;

              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Pagar: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        if (vnn = 'CXBANCO') then
        begin
          vlanc := dm.qrSql1.FieldByName(vcampo).AsInteger + 20000;

          if not cdsDados.Locate(vcampo, vlanc, []) then
          begin
            try
              cdsDados.Append;

              for vi := 0 to dm.qrSql1.FieldCount - 1 do
              begin

                vfil := dm.qrSql1.Fields[vi].FieldName;

                if (vfil = 'LANC') then
                  cdsDados.FieldByName(vfil).AsInteger := vlanc
                else if (vfil = 'ACESOCOD') then
                  cdsDados.FieldByName(vfil).AsInteger :=  dm.qrSql1.FieldByName(vcampo).Value
                else if (vfil = 'FAVORCOD') then
                begin
                  //Cliente ou fornecedor
                  vdtS := dm.qrSql1.FieldByName(vfil).AsString;
                  if (dm.qrSql1.FieldByName('FORMADES').AsString = 'C') then
                    vdtS := fBusSin(1, ['Select codigo from cadclien where acesocod = 0'+vdtS],1)
                  else
                    vdtS := fBusSin(1, ['Select codigo from cadforne where acesocod = 0'+vdtS],1);
                  if (StrToIntDef(vdts,0) > 0) then
                    cdsDados.FieldByName(vfil).AsInteger := StrToIntDef(vdts,0)
                end
                else if (vfil = 'REDUZ') then
                begin
                  //Cliente ou fornecedor
                  vdtS := dm.qrSql1.FieldByName(vfil).AsString;
                  if (dm.qrSql1.FieldByName(vfil).AsString <> '') then
                    vdtS := fBusSin(1, ['Select reduz from cadplano where lancit = 0'+vdtS],1);
                  if (StrToIntDef(vdts,0) > 0) then
                    cdsDados.FieldByName(vfil).AsInteger := StrToIntDef(vdts,0)
                end
                else begin
                  if (not dm.qrSql1.FieldByName(vfil).IsNull) then
                  begin
                    if dm.qrSql1.Fields[vi].DataType in [ftDate, ftDateTime] then
                    begin
                      vdtS := DateToStr(dm.qrSql1.FieldByName(vfil).Value);
                      try
                        if (StrToIntDef(FormatDateTime('yyyy', dm.qrSql1.FieldByName(vfil).Value),0) > 2000) then
                          vdtD := StrToDate(vdts)
                        else
                          vdtD := StrToDate('01/01/2023');
                        cdsDados.FieldByName(vfil).Value := vdtD;
                      except
                      end;
                    end
                    else
                      cdsDados.FieldByName(vfil).Value := dm.qrSql1.FieldByName(vfil).Value;
                  end;
                end;
              end;

              cdsDados.Post;
              cdsDados.ApplyUpdates(0);
            except
              on E:Exception do
                MessageDlg('Caixa/Banco: ' + E.Message, mtError, [mbOk], 0);
            end;
          end;
        end;

        dm.qrSql1.Next;

      end;

      dm.qrSql1.Close;
      cdsDados.Close;
    end;

  end;

  GroupBox1.Visible := False;
  frPerg('Processo finalizado!');

end;

function TFCadSincronizar.fBusSin(vSessao: Integer; vSql: Array of String; vLinha: Integer): Variant;
var
  vlin: Integer;
  vqrBus: TQuery;
begin
  vqrBus := qrSqlBusSin;
  vqrBus.Close;
  vqrBus.Sql.Clear;
//  vqrBus.SessionName := 'Sesao3';
//  vqrBus.DatabaseName := 'JaeAdminCopia';

  for vlin := 0 to vLinha - 1 do
    vqrBus.Sql.Add(vSql[vlin]);
  vqrBus.Open;
  if vqrBus.Fields[0].DataType = ftString then
    Result := vqrBus.Fields[0].asString
  else if vqrBus.Fields[0].DataType = ftFloat then
    Result := vqrBus.Fields[0].asString
  else if vqrBus.Fields[0].DataType = ftMemo then
    Result := vqrBus.Fields[0].asString
  else
    Result := vqrBus.Fields[0].asInteger;
end;

end.
