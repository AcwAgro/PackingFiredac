unit zComandos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, DBCtrls, Grids, DBGrids, ExtCtrls,
  Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmComandos = class(TForm)
    dsDados: TDataSource;
    cdsDados: TClientDataSet;
    dspDados: TDataSetProvider;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    mcmd: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    lbTables: TListBox;
    lbFields: TListBox;
    BitBtn2: TBitBtn;
    lbLog: TListBox;
    BitBtn3: TBitBtn;
    sqlDados: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbTablesClick(Sender: TObject);
    procedure lbFieldsDblClick(Sender: TObject);
    procedure lbTablesDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure lbLogDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComandos: TfrmComandos;

implementation

{$R *.dfm}
uses Data;

procedure TfrmComandos.BitBtn1Click(Sender: TObject);
begin
  if (Trim(mcmd.Lines.Text) = '') then exit;
  sqlDados.Close;
  cdsDados.Close;
  sqlDados.Sql.Clear;
  try
    sqlDados.Sql.Add(mcmd.Lines.Text);
    if (UpperCase(Copy(mcmd.Lines.Text,1,6))='SELECT') then cdsDados.Open
    else sqlDados.ExecSql;
    lbLog.Items.Add(mcmd.Lines.Text);
  except
    ShowMessage('comando invalido!');
    sqlDados.Close;
    cdsDados.Close;
  end;
end;

procedure TfrmComandos.BitBtn2Click(Sender: TObject);
begin
  sqlDados.Close;
  cdsDados.Close;
  mcmd.Lines.Clear;
end;

procedure TfrmComandos.FormShow(Sender: TObject);
begin
  lbTables.Clear;
  dm.JaeAdmin.GetTableNames(lbTables.Items,false);
end;

procedure TfrmComandos.lbFieldsDblClick(Sender: TObject);
begin
  if (mcmd.Lines.Text = '') then
    mcmd.Lines.Text := 'Select '+lbFields.Items[lbFields.itemindex]
  else
    mcmd.Lines.Text := mcmd.Lines.Text + ', '+lbFields.Items[lbFields.itemindex];
end;

procedure TfrmComandos.lbTablesClick(Sender: TObject);
begin
  lbFields.Clear;
  dm.JaeAdmin.GetFieldNames(lbTables.Items[lbTables.itemindex],lbFields.Items);
end;

procedure TfrmComandos.lbTablesDblClick(Sender: TObject);
begin
  if (pos('From', mcmd.Lines.Text) > 0) then mcmd.Lines.Clear;

  if (mcmd.Lines.Text = '') then
    mcmd.Lines.Text := 'Select * From '+lbTables.Items[lbTables.itemindex]
  else
    mcmd.Lines.Text := mcmd.Lines.Text + ' From '+ lbTables.Items[lbTables.itemindex];
end;

procedure TfrmComandos.lbLogDblClick(Sender: TObject);
begin
  mcmd.Lines.Text := lbLog.Items[lbLog.itemindex];
end;

procedure TfrmComandos.BitBtn3Click(Sender: TObject);
var vconf:String;
    vArq:TextFile;
    vi,vf:Integer;
    vtxt, vtab, vff: String;
begin
//    mcmd.Lines.Text := 'Select * From '+lbTables.Items[lbTables.itemindex]

  try
    vconf := ExtractFilePath(Application.ExeName) + 'ScriptBase.txt';
    AssignFile(varq,vconf);
    Rewrite(varq);
    for vi := 0 to lbTables.Count - 1 do
    begin
      fSql(1,1,['Select first 1 * From '+lbTables.Items[vi]],1);

      Writeln(varq, 'CREATE TABLE ' +lbTables.Items[vi]+ '(');
      Writeln(varq, vtxt);
      vtab := lbTables.Items[vi];
      vff := '';

      for vf:= 0 to dm.qrSql1.FieldCount - 1 do
      begin
        vtxt := dm.qrSql1.Fields[vf].FieldName;

        if dm.qrSql1.Fields[vf].DataType in [ftSmallint, ftInteger, ftWord] then
          vtxt := vtxt + ' INTEGER'
        else if dm.qrSql1.Fields[vf].DataType in [ftFloat, ftCurrency, ftBCD, ftFMTBcd] then
          vtxt := vtxt + ' NUMERIC(15,4)'
        else if dm.qrSql1.Fields[vf].DataType in [ftDate, ftDateTime] then
          vtxt := vtxt + ' DATE'
        else if dm.qrSql1.Fields[vf].DataType in [ftBoolean] then
          vtxt := vtxt + ' CHAR(1)'
        else if dm.qrSql1.Fields[vf].DataType in [ftMemo, ftBlob] then
          vtxt := vtxt + ' VARCHAR(1000)'
        else
          vtxt := vtxt + ' VARCHAR(' + IntToStr(dm.qrSql1.Fields[vf].DataSize-1) +')';

        if (vf >= dm.qrSql1.FieldCount - 1) then
        begin
          vtxt := vtxt + ', ';
          vtxt := 'REGLOG VARCHAR(1000), ';
          Writeln(varq, vtxt);
          vtxt := 'REG_ID INTEGER ';
          Writeln(varq, vtxt);
          vtxt := vtxt + #13#10+ ');'
        end
        else
          vtxt := vtxt + ', ';

        Writeln(varq, vtxt);

      end;

      Writeln(varq, 'COMMIT;');
      Writeln(varq, '');
     end;
    CloseFile(varq);
    Application.ProcessMessages;
    Sleep(500);
  except
  end;
  showmessage('Termino: '+vconf);



{
  try
    vconf := ExtractFilePath(Application.ExeName) + 'ScriptBase.txt';
    AssignFile(varq,vconf);
    Rewrite(varq);
    for vi := 0 to lbTables.Count - 1 do
    begin
      fSql(1,1,['Select first 1 * From '+lbTables.Items[vi]],1);

      if (UpperCase(Copy(lbTables.Items[vi],1,3)) = 'CAD') then
      begin
        Writeln(varq, 'CREATE TABLE ' +lbTables.Items[vi]+ '(');
        vtxt := 'CAD_ID BIGINT PRIMARY KEY, ';
        Writeln(varq, vtxt);
        vtab := lbTables.Items[vi];
        vff := '';
      end
      else if (UpperCase(Copy(lbTables.Items[vi],1,1)) = 'Z') then
      begin
        Writeln(varq, 'CREATE TABLE SIS' +lbTables.Items[vi]+ '(');
        vtxt := 'CAD_ID BIGINT PRIMARY KEY, ';
        Writeln(varq, vtxt);
        vtab := lbTables.Items[vi];
        vff := '';
      end
      else begin
        Writeln(varq, 'CREATE TABLE ' +lbTables.Items[vi]+ '(');
        //VERIFICA SE TEM O LANCIT
        vff := '';
        for vf:= 0 to dm.qrSql1.FieldCount - 1 do
        begin
          if dm.qrSql1.Fields[vf].FieldName = 'LANCIT' then
            vff := 'T';
        end;
        if vff <> 'T' then
        begin
          vtxt := 'MOV_ID BIGINT PRIMARY KEY, ';
          Writeln(varq, vtxt);
        end
        else begin
          vtxt := 'MOVIT_ID BIGINT PRIMARY KEY, ';
          Writeln(varq, vtxt);
          vtxt := 'ID_MOV BIGINT, ';
          Writeln(varq, vtxt);
        end;
        vtab := lbTables.Items[vi];
      end;

      if vff <> 'T' then
      begin
        vtxt := 'BASE_ID BIGINT, ';
        Writeln(varq, vtxt);
        vtxt := 'EMPRESA_ID BIGINT, ';
        Writeln(varq, vtxt);
      end;

      vtxt := 'SISLOG VARCHAR(999), ';
      Writeln(varq, vtxt);

      for vf:= 0 to dm.qrSql1.FieldCount - 1 do
      begin
        vtxt := dm.qrSql1.Fields[vf].FieldName;

        if dm.qrSql1.Fields[vf].DataType in [ftSmallint, ftInteger, ftWord] then
          vtxt := vtxt + ' INTEGER'
        else if dm.qrSql1.Fields[vf].DataType in [ftFloat, ftCurrency, ftBCD, ftFMTBcd] then
          vtxt := vtxt + ' NUMERIC(15,4)'
        else if dm.qrSql1.Fields[vf].DataType in [ftDate, ftDateTime] then
          vtxt := vtxt + ' DATE'
        else if dm.qrSql1.Fields[vf].DataType in [ftBoolean] then
          vtxt := vtxt + ' CHAR(1)'
        else if dm.qrSql1.Fields[vf].DataType in [ftMemo, ftBlob] then
          vtxt := vtxt + ' VARCHAR(999)'
        else
          vtxt := vtxt + ' VARCHAR(' + IntToStr(dm.qrSql1.Fields[vf].DataSize-1) +')';

        if (vf >= dm.qrSql1.FieldCount - 1) then
          vtxt := vtxt + #13#10+ ');'
        else
          vtxt := vtxt + ', ';

        Writeln(varq, vtxt);

      end;
      Writeln(varq, 'COMMIT;');
      Writeln(varq, '');

     //Delete emprecod, acesocod
     for vf:= 0 to dm.qrSql1.FieldCount - 1 do
      begin
        vtxt := dm.qrSql1.Fields[vf].FieldName;

        if (vtxt = 'EMPRECOD') then
        begin

          vtxt := 'ALTER TABLE ' +vtab+ ' DROP EMPRECOD;';
          Writeln(varq, vtxt);
          Writeln(varq, 'COMMIT;');

        end;

        if (vtxt = 'ACESOCOD') then
        begin

          vtxt := 'ALTER TABLE ' +vtab+ ' DROP ACESOCOD;';
          Writeln(varq, vtxt);
          Writeln(varq, 'COMMIT;');

        end;

      end;
      Writeln(varq, '');
    end;
    CloseFile(varq);
    Application.ProcessMessages;
    Sleep(500);
  except
  end;
  showmessage('Termino: '+vconf);
}


end;


end.
