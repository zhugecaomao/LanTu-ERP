unit ColSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DB, ADODB, Grids, Buttons, StdCtrls;

type
  TColSetupForm = class(TForm)
    dsSource: TDataSource;
    sbRevert: TSpeedButton;
    sbUnName: TSpeedButton;
    sbVisible: TSpeedButton;
    sbUp: TSpeedButton;
    sbDown: TSpeedButton;
    bbOk: TBitBtn;
    bbExit: TBitBtn;
    DBGridEh1: TDBGridEh;
    DataSet: TADOQuery;
    procedure sbRevertClick(Sender: TObject);
    procedure sbUnNameClick(Sender: TObject);
    procedure sbVisibleClick(Sender: TObject);
    procedure sbUpClick(Sender: TObject);
    procedure sbDownClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
  private
    bReturn: Boolean;
    sCaption1: string;
    Grid1: TDBGridEh;
    lInit1: Integer;
    function InitData: Boolean;
    function UpdateGrid: Boolean;
    function RevertGrid(s: string; lUp: integer): Boolean;
    function GetColumnID(sField: string): Integer;
    procedure MainShow;
    function LoadData: Boolean;
    function ReturnSQL(Mode: string): string;
  public
    { Public declarations }
  end;

function ColSetupFormShow(sCaption: string; Grid: TDBGridEh; lInit: Integer):
  Boolean;
function SaveColWidth(sCaption: string; Grid: TDBGridEh): Boolean;

implementation

uses DataM, SysPublic;
{$R *.dfm}

function ColSetupFormShow(sCaption: string; Grid: TDBGridEh; lInit: Integer):
  Boolean;
var
  ColSetupForm: TColSetupForm;
begin
  ColSetupForm := TColSetupForm.Create(Application);
  with ColSetupForm do
  begin
    sCaption1 := sCaption;
    Grid1 := Grid;
    lInit1 := lInit;
    MainShow;
    Result := bReturn;
    Free;
  end;
end;

function SaveColWidth(sCaption: string; Grid: TDBGridEh): Boolean;
var
  sSql, sFieldName: string;
  lWidth, i: Integer;
begin
  for i := 1 to Grid.Columns.Count-1 do
  begin
    sFieldName := Grid.Columns[i].FieldName;
    lWidth := Grid.Columns[i].Width;
    sSql := ' Update ColSetup Set Width=' + IntToStr(lWidth) +
      ' Where Caption=''' + Trim(sCaption) + ''' and FieldName=''' +
      Trim(sFieldName) + '''';
    ExecSql(sSql);
  end;
  Result := True;
end;

procedure TColSetupForm.MainShow;
begin
  if not LoadData then
    Exit;
  if lInit1 = 0 then
    ShowModal
  else
    UpdateGrid;
  DataSet.Close;
end;

function TColSetupForm.LoadData: Boolean;
begin
  Result := False;
  bReturn := false;
  Caption := '通用表格列设置';
  if not OpenDataSet(DataSet, ReturnSQL('S')) then
    Exit;
  Result := True;
end;

function TColSetupForm.ReturnSQL(Mode: string): string;
begin
  if Mode = 'S' then
    Result := 'Select * from ColSetup Where Caption=''' + Trim(sCaption1) +
      ''' ORDER BY ColOrder'
  else if Mode = 'D' then
    Result := 'Delete from ColSetup Where Caption=''' + Trim(sCaption1) + '''';
end;

function TColSetupForm.InitData: Boolean;
var
  sFieldName, sSysName, sUserName: string;
  lWidth, i: Integer;
begin
  Result := False;
  ExecSql(ReturnSQL('D'));
  if not OpenDataSet(DataSet, ReturnSQL('S')) then
    Exit;
  for i := 1 to Grid1.Columns.Count - 1 do
  begin
    sFieldName := Grid1.Columns[i].FieldName;
    sSysName := Grid1.Columns[i].Title.Caption;
    lWidth := Grid1.Columns[i].Width;
    sUserName := sSysName;
    DataSet.Append;
    DataSet.FieldByName('Caption').AsString := Trim(sCaption1);
    DataSet.FieldByName('FieldName').AsString := Trim(sFieldName);
    DataSet.FieldByName('SysName').AsString := Trim(sSysName);
    DataSet.FieldByName('UserName').AsString := sUserName;
    DataSet.FieldByName('Width').AsInteger := lWidth;
    DataSet.FieldByName('Visible').AsBoolean := True;
    DataSet.FieldByName('ColOrder').AsInteger := Grid1.Columns[i].Index;
  end;
  SaveDataSet(DataSet, True);
  DataSet.First;
  Result := True;
end;

function TColSetupForm.UpdateGrid: Boolean;
var
  i: Integer;
begin
  Result := False;
  try
    begin
      if DataSet.RecordCount <> Grid1.Columns.Count - 1 then
        InitData;
      DataSet.First;
      while not DataSet.Eof do
      begin
        i := GetColumnID(DataSet.FieldByName('FieldName').AsString);
        if i < 0 then
        begin
          DataSet.Next;
          Continue;
        end;
        Grid1.Columns[i].Title.Caption := DataSet.FieldByName('UserName').AsString;
        Grid1.Columns[i].Width := DataSet.FieldByName('Width').AsInteger;
        if DataSet.FieldByName('Visible').AsBoolean =False then
          Grid1.Columns[i].Visible := False
        else
          Grid1.Columns[i].Visible := True;
        Grid1.Columns[i].Index := DataSet.FieldByName('ColOrder').AsInteger;
        DataSet.Next;
      end;
      DataSet.First;
    end;
  except
    Exit;
  end;
  Result := True;
end;

function TColSetupForm.GetColumnID(sField: string): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 1 to Grid1.Columns.Count - 1 do
    if Trim(sField) = Trim(Grid1.Columns[i].FieldName) then
    begin
      Result := i;
      Exit;
    end;
end;

procedure TColSetupForm.sbRevertClick(Sender: TObject);
begin
  inherited;
  RevertGrid('A', 0);
end;

procedure TColSetupForm.bbOkClick(Sender: TObject);
begin
  inherited;
  SaveDataSet(DataSet, True);
  UpdateGrid;
  Close;
end;

procedure TColSetupForm.bbExitClick(Sender: TObject);
begin
  inherited;
  DataSet.CancelUpdates;
  Close;
end;

function TColSetupForm.RevertGrid(s: string; lUp: integer): Boolean;
var
  SavePlace: TBookmark;
  i1, i2: Integer;
begin
  Result := False;
  if Trim(s) = 'A' then
  begin
 If Application.Messagebox('你确定要恢复所有改变,回到原始设置吗?？','提示信息',Mb_YesNo+Mb_IconQuestion)=Mryes Then
    begin
      ExecSql(ReturnSQL('D'));
      Close;
    end;
  end
  else if (Trim(s) = 'V') or (Trim(s) = 'N') then
    with DataSet do
    begin
      SavePlace := GetBookmark;
      First;
      while not Eof do
      begin
        Edit;
        if Trim(s) = 'V' then
          FieldByName('Visible').AsBoolean := True
        else if Trim(s) = 'N' then
          FieldByName('UserName').AsString := FieldByName('SysName').AsString;
        Next;
      end;
      try
        GotoBookmark(SavePlace);
      finally
        FreeBookmark(SavePlace);
      end;
    end
  else if Trim(s) = 'M' then
    with DataSet do
    begin
      SavePlace := GetBookmark;
      i1 := FieldByName('ColOrder').AsInteger;
      if lUp = 0 then
        Next
      else
        Prior;
      if (lUp = 0) and Eof then
        Exit;
      if (lUp = 1) and Bof then
        Exit;
      i2 := FieldByName('ColOrder').AsInteger;
      Edit;
      FieldByName('ColOrder').AsInteger := i1;
      if lUp = 0 then
        Prior
      else
        Next;
      if (lUp = 0) and Eof then
        Exit;
      if (lUp = 1) and Bof then
        Exit;
      Edit;
      FieldByName('ColOrder').AsInteger := i2;
      SaveDataSet(DataSet, True);
      if not OpenDataSet(DataSet, ReturnSQL('S')) then
        Exit;
      try
        GotoBookmark(SavePlace);
      finally
        FreeBookmark(SavePlace);
      end;
      if lUp = 0 then
        Next
      else
        Prior;
    end;
  Result := True;
end;

procedure TColSetupForm.sbVisibleClick(Sender: TObject);
begin
  inherited;
  RevertGrid('V', 0);
end;

procedure TColSetupForm.sbUnNameClick(Sender: TObject);
begin
  inherited;
  RevertGrid('N', 0);
end;

procedure TColSetupForm.sbUpClick(Sender: TObject);
begin
  inherited;
  RevertGrid('M', 1);
end;

procedure TColSetupForm.sbDownClick(Sender: TObject);
begin
  inherited;
  RevertGrid('M', 0);
end;

end.
