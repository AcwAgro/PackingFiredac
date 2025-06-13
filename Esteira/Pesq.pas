unit Pesq;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Db, DBTables, Buttons, Menus, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPesq = class(TForm)
    DBGrid1: TDBGrid;
    DSPesq: TDataSource;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    SB4: TSpeedButton;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    lblMarcar: TLabel;
    qrPesq: TFDQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SB4Click(Sender: TObject);
  private
  public
  end;

var
  FPesq: TFPesq;

implementation

uses Data, Rotina;

{$R *.DFM}
procedure TFPesq.Edit1KeyPress(Sender: TObject; var Key: Char);
var vxx,vCol:Integer; vcar,vdes:String;
begin
  if key=#13 then begin key:=#0;
     Edit1.Text:=UpperCase(Trim(Edit1.Text));
     if Trim(xpqWhere)='' then vdes:='Where '
     else vdes:=xpqWhere+' and ';
     vcar:=Edit1.Text;
     if frEnum(Edit1.Text) then vcar:=frInvS(Trim(Edit1.Text));
     with qrPesq do begin
       if lblMarcar.Visible then vxx := 2
       else vxx := 1;

       for vCol:=0 to (DBGrid1.Columns.Count - vxx) do begin
         if Fields[vCol].DataType=ftString then
            vdes:=vdes+'Upper('+DBGrid1.Columns[vCol].FieldName+') Like '+
                                QuotedStr('%'+vcar+'%')+' or '
         else if (Fields[vCol].DataType=ftInteger) or
                 (Fields[vCol].DataType=ftCurrency) or
                 (Fields[vCol].DataType=ftSmallint) or
                 (Fields[vCol].DataType=ftFloat) then begin
            if frEnum(Edit1.Text) then
              vdes:=vdes+DBGrid1.Columns[vCol].FieldName+'='+vcar+' or '
         end else vdes:=vdes+'';
       end;
       vdes:=Copy(vdes,1,Length(vdes)-4);
//       vdes:=vdes+' and '+xFiltro1;
       Close;
       if vcar='' then Sql.Strings[2]:=xpqWhere else Sql.Strings[2]:=vdes;
       Open;
       Label2.Caption:='Itens: '+IntToStr(RecordCount);
       DBGrid1.Enabled:=False;
       if RecordCount<1 then ShowMessage(Edit1.Text+' não foi encontrado!')
       else begin
        DBGrid1.Enabled:=True; DBGrid1.SetFocus;
       end;
     end;
     for vCol:=0 to xpqColuna-1 do DBGrid1.Columns[vCol].Title.Caption:=xpqTitulo[vCol];
  end;
  if key=#27 then Close;
end;

procedure TFPesq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var vcod: String;
begin
  if key=#13 then begin key:=#0; Close; end //DBGrid1DblClick(Sender); end
  else if key=#27 then Close
  else if (key=#32) or (key='') then
  begin
    if lblMarcar.Visible then
    begin
      vcod := qrPesq.Fields[0].asString+',';
      if xrelmarca = '' then xrelmarca := '0,';
      if pos(','+vcod, xrelmarca) = 0 then
        xrelmarca := xrelmarca + vcod;
      lblMarcar.Caption := 'ESPAÇO - Seleciona.('+xrelmarca+')';
    end;
  end;
end;

procedure TFPesq.FormActivate(Sender: TObject);
begin
  Align:=alRight; Align:=alNone;
  Edit1.Text:=''; Edit1.SetFocus;
end;

procedure TFPesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not qrPesq.Active then exit;
  if qrPesq.RecordCount>0 then xpqResul:=qrPesq.Fields[0].Text
  else xpqResul:='0';
end;

procedure TFPesq.DBGrid1CellClick(Column: TColumn);
begin
  if not lblMarcar.Visible then
    Close;
end;

procedure TFPesq.DBGrid1DblClick(Sender: TObject);
begin
  if not lblMarcar.Visible then
    Close;
end;

procedure TFPesq.PopupMenu1Popup(Sender: TObject);
var vdes:String; vCol:Integer;
begin
  vDes:=DBGrid1.SelectedField.FieldName;
  qrPesq.Close;
  qrPesq.Sql.Strings[3]:='Order by '+vdes;
  qrPesq.Open;
  Label2.Caption:='Itens: '+IntToStr(qrPesq.RecordCount);
//coluna Titulo
  for vCol:=0 to xpqColuna-1 do  DBGrid1.Columns[vCol].Title.Caption:=xpqTitulo[vCol];
end;

procedure TFPesq.SB4Click(Sender: TObject);
begin
  Close;
end;

end.
