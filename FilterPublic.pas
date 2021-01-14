unit FilterPublic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  BaseNormal, DBGridEh, ComCtrls, DB;

type
  TFilterPublicForm = class(TBaseNormalForm)
    bbClear: TBitBtn;
    bbYes: TBitBtn;
    bbNo: TBitBtn;
    chkSensitive: TCheckBox;
    chkPartial: TCheckBox;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtRow1: TComboBox;
    edtFieldValue: TComboBox;
    edtCompValue: TComboBox;
    edtComp1: TComboBox;
    edtValue1: TEdit;
    edtAnd2: TComboBox;
    edtAndValue: TComboBox;
    edtAnd3: TComboBox;
    edtAnd4: TComboBox;
    edtAnd5: TComboBox;
    edtAnd6: TComboBox;
    edtRow2: TComboBox;
    edtRow3: TComboBox;
    edtRow4: TComboBox;
    edtRow5: TComboBox;
    edtRow6: TComboBox;
    edtComp2: TComboBox;
    edtComp3: TComboBox;
    edtComp4: TComboBox;
    edtComp5: TComboBox;
    edtComp6: TComboBox;
    edtValue2: TEdit;
    edtValue3: TEdit;
    edtValue4: TEdit;
    edtValue5: TEdit;
    edtValue6: TEdit;
    edtDate1: TDateTimePicker;
    edtDate2: TDateTimePicker;
    edtDate3: TDateTimePicker;
    edtDate4: TDateTimePicker;
    edtDate5: TDateTimePicker;
    edtDate6: TDateTimePicker;
    procedure edtValue1Change(Sender: TObject);
    procedure edtValue2Change(Sender: TObject);
    procedure edtValue3Change(Sender: TObject);
    procedure edtValue4Change(Sender: TObject);
    procedure edtValue5Change(Sender: TObject);
    procedure bbNoClick(Sender: TObject);
    procedure bbYesClick(Sender: TObject);
    procedure edtRow1Change(Sender: TObject);
    procedure edtDate1Change(Sender: TObject);
    procedure edtDate2Change(Sender: TObject);
    procedure edtDate3Change(Sender: TObject);
    procedure edtDate4Change(Sender: TObject);
    procedure edtDate5Change(Sender: TObject);
    procedure edtDate6Change(Sender: TObject);
    procedure edtRow2Change(Sender: TObject);
    procedure edtRow3Change(Sender: TObject);
    procedure edtRow4Change(Sender: TObject);
    procedure edtRow5Change(Sender: TObject);
    procedure edtRow6Change(Sender: TObject);
    procedure bbClearClick(Sender: TObject);
  private
    { Private declarations }
    bReturn: Boolean;
    gridGrid1: TDBGridEh;
    DBSet1: TDataSet;
    procedure MainShow;
    procedure LoadEdit;
    procedure LoadData;
    function GetFilterType(sFilter: string): string;
    function GetFilterString: string;
  public
    { Public declarations }
  end;

function FilterPublicShow(Grid1: TDBGridEh): Boolean;

implementation

uses SysPublic;

{$R *.DFM}

function FilterPublicShow(Grid1: TDBGridEh): Boolean;
var
  FilterPublicForm: TFilterPublicForm;
begin
  FilterPublicForm := TFilterPublicForm.Create(Application);
  with FilterPublicForm do
  begin
    gridGrid1 := Grid1;
    MainShow;
    Result := bReturn;
    Free;
  end;
end;

procedure TFilterPublicForm.MainShow;
begin
  bOperateLog := False;
  LoadEdit;
  LoadData;
  ShowModal;
end;

procedure TFilterPublicForm.LoadEdit;
var
  lCol: Integer;
  sCaption, sField: string;
begin
  sCaption := '';
  DBSet1 := gridGrid1.DataSource.DataSet;
  //得到GRID的列名称
  for lCol := 0 to gridGrid1.Columns.Count - 1 do
    if gridGrid1.Columns[lCol].Visible = true then
    begin
      sCaption := sCaption + gridGrid1.Columns[lCol].Title.Caption + #13;
      sField := sField + gridGrid1.Columns[lCol].FieldName + #13;
    end;
  edtRow1.Items.Text := sCaption;
  edtRow2.Items.Text := sCaption;
  edtRow3.Items.Text := sCaption;
  edtRow4.Items.Text := sCaption;
  edtRow5.Items.Text := sCaption;
  edtRow6.Items.Text := sCaption;

  edtFieldValue.Items.Text := sField;

  edtRow1.ItemIndex := 0;
  edtComp1.ItemIndex := 0;
end;

procedure TFilterPublicForm.LoadData;
begin
  edtRow1Change(nil);
end;

function TFilterPublicForm.GetFilterType(sFilter: string): string;
begin
  Result := GetFieldType(gridGrid1.FieldColumns[sFilter].Field);
end;

function TFilterPublicForm.GetFilterString: string;
var
  sFilter: string;
  sz: string;
begin
  sFilter := '';
  sz := '';
  if (edtValue1.Enabled) and (edtValue1.Text <> '') then
  begin
    if GetFilterType(edtFieldValue.Items.Strings[edtRow1.ItemIndex]) = 'Str' then
      sz := '*';
    sFilter := edtFieldValue.Items.Strings[edtRow1.ItemIndex] +
      edtCompValue.Items.Strings[edtComp1.ItemIndex] +
      #39 + sz + Trim(edtValue1.Text) + sz + #39;
  end;
  if (edtValue2.Enabled) and (edtValue2.Text <> '') then
  begin
    if GetFilterType(edtFieldValue.Items.Strings[edtRow2.ItemIndex]) = 'Str' then
      sz := '*';
    sFilter := sFilter +
      edtAndValue.Items.Strings[edtAnd2.ItemIndex] +
      edtFieldValue.Items.Strings[edtRow2.ItemIndex] +
      edtCompValue.Items.Strings[edtComp2.ItemIndex] +
      #39 + sz + Trim(edtValue2.Text) + sz + #39;
  end;
  if (edtValue3.Enabled) and (edtValue3.Text <> '') then
  begin
    if GetFilterType(edtFieldValue.Items.Strings[edtRow3.ItemIndex]) = 'Str' then
      sz := '*';
    sFilter := sFilter +
      edtAndValue.Items.Strings[edtAnd3.ItemIndex] +
      edtFieldValue.Items.Strings[edtRow3.ItemIndex] +
      edtCompValue.Items.Strings[edtComp3.ItemIndex] +
      #39 + sz + Trim(edtValue3.Text) + sz + #39;
  end;
  if (edtValue4.Enabled) and (edtValue4.Text <> '') then
  begin
    if GetFilterType(edtFieldValue.Items.Strings[edtRow4.ItemIndex]) = 'Str' then
      sz := '*';
    sFilter := sFilter +
      edtAndValue.Items.Strings[edtAnd4.ItemIndex] +
      edtFieldValue.Items.Strings[edtRow4.ItemIndex] +
      edtCompValue.Items.Strings[edtComp4.ItemIndex] +
      #39 + sz + Trim(edtValue4.Text) + sz + #39;
  end;
  if (edtValue5.Enabled) and (edtValue5.Text <> '') then
  begin
    if GetFilterType(edtFieldValue.Items.Strings[edtRow5.ItemIndex]) = 'Str' then
      sz := '*';
    sFilter := sFilter +
      edtAndValue.Items.Strings[edtAnd5.ItemIndex] +
      edtFieldValue.Items.Strings[edtRow5.ItemIndex] +
      edtCompValue.Items.Strings[edtComp5.ItemIndex] +
      #39 + sz + Trim(edtValue5.Text) + sz + #39;
  end;
  if (edtValue6.Enabled) and (edtValue6.Text <> '') then
  begin
    if GetFilterType(edtFieldValue.Items.Strings[edtRow6.ItemIndex]) = 'Str' then
      sz := '*';
    sFilter := sFilter +
      edtAndValue.Items.Strings[edtAnd6.ItemIndex] +
      edtFieldValue.Items.Strings[edtRow6.ItemIndex] +
      edtCompValue.Items.Strings[edtComp6.ItemIndex] +
      #39 + sz + Trim(edtValue6.Text) + sz + #39;
  end;

  Result := sFilter;
end;

procedure TFilterPublicForm.edtValue1Change(Sender: TObject);
begin
  inherited;
  if Trim(edtValue1.Text) <> '' then
  begin
    edtRow2.ItemIndex := 0;
    edtComp2.ItemIndex := 0;
    edtAnd2.ItemIndex := 0;
    bbYes.Enabled := true;
    edtValue2.Enabled := true;
    edtRow2.Enabled := true;
    edtComp2.Enabled := true;
    edtAnd2.Enabled := true;
  end
  else
  begin
    bbYes.Enabled := False;
    edtValue2.Enabled := False;
    edtRow2.Enabled := False;
    edtComp2.Enabled := False;
    edtAnd2.Enabled := False;
  end;
end;

procedure TFilterPublicForm.edtValue2Change(Sender: TObject);
begin
  inherited;
  if Trim(edtValue2.Text) <> '' then
  begin
    edtRow3.ItemIndex := 0;
    edtComp3.ItemIndex := 0;
    edtAnd3.ItemIndex := 0;
    edtValue3.Enabled := true;
    edtRow3.Enabled := true;
    edtComp3.Enabled := true;
    edtAnd3.Enabled := true;
  end
  else
  begin
    edtValue3.Enabled := False;
    edtRow3.Enabled := False;
    edtComp3.Enabled := False;
    edtAnd3.Enabled := False;
  end;
end;

procedure TFilterPublicForm.edtValue3Change(Sender: TObject);
begin
  inherited;
  if Trim(edtValue3.Text) <> '' then
  begin
    edtRow4.ItemIndex := 0;
    edtComp4.ItemIndex := 0;
    edtAnd4.ItemIndex := 0;
    edtValue4.Enabled := true;
    edtRow4.Enabled := true;
    edtComp4.Enabled := true;
    edtAnd4.Enabled := true;
  end
  else
  begin
    edtValue4.Enabled := False;
    edtRow4.Enabled := False;
    edtComp4.Enabled := False;
    edtAnd4.Enabled := False;
  end;
end;

procedure TFilterPublicForm.edtValue4Change(Sender: TObject);
begin
  inherited;
  if Trim(edtValue4.Text) <> '' then
  begin
    edtRow5.ItemIndex := 0;
    edtComp5.ItemIndex := 0;
    edtAnd5.ItemIndex := 0;
    edtValue5.Enabled := true;
    edtRow5.Enabled := true;
    edtComp5.Enabled := true;
    edtAnd5.Enabled := true;
  end
  else
  begin
    edtValue5.Enabled := False;
    edtRow5.Enabled := False;
    edtComp5.Enabled := False;
    edtAnd5.Enabled := False;
  end;
end;

procedure TFilterPublicForm.edtValue5Change(Sender: TObject);
begin
  inherited;
  if Trim(edtValue5.Text) <> '' then
  begin
    edtRow6.ItemIndex := 0;
    edtComp6.ItemIndex := 0;
    edtAnd6.ItemIndex := 0;
    edtValue6.Enabled := true;
    edtRow6.Enabled := true;
    edtComp6.Enabled := true;
    edtAnd6.Enabled := true;
  end
  else
  begin
    edtValue6.Enabled := False;
    edtRow6.Enabled := False;
    edtComp6.Enabled := False;
    edtAnd6.Enabled := False;
  end;
end;

procedure TFilterPublicForm.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFilterPublicForm.bbYesClick(Sender: TObject);
begin
  inherited;
  try
    DBSet1.Filter := GetFilterString;
  except
    Exit;
  end;
  if Trim(DBSet1.Filter) <> '' then
  try
    DBSet1.Filtered := True;
  except
  end;
  Close;
end;

procedure TFilterPublicForm.edtDate1Change(Sender: TObject);
begin
  inherited;
///  edtValue1.Text := edtDate1.Text;
  edtValue1Change(nil);
end;

procedure TFilterPublicForm.edtDate2Change(Sender: TObject);
begin
  inherited;
  edtValue2.Text := DateToStr(edtDate2.Date);
  edtValue2Change(nil);
end;

procedure TFilterPublicForm.edtDate3Change(Sender: TObject);
begin
  inherited;
  edtValue3.Text := DateToStr(edtDate3.Date);
  edtValue3Change(nil);
end;

procedure TFilterPublicForm.edtDate4Change(Sender: TObject);
begin
  inherited;
  edtValue4.Text := DateToStr(edtDate4.Date);
  edtValue4Change(nil);
end;

procedure TFilterPublicForm.edtDate5Change(Sender: TObject);
begin
  inherited;
  edtValue5.Text := DateToStr(edtDate5.Date);
  edtValue5Change(nil);
end;

procedure TFilterPublicForm.edtDate6Change(Sender: TObject);
begin
  inherited;
  edtValue6.Text := DateToStr(edtDate6.Date);
end;

procedure TFilterPublicForm.edtRow1Change(Sender: TObject);
begin
  inherited;
  edtDate1.Date := Date;
  if (edtRow1.ItemIndex >= 0) and
    (GetFilterType(edtFieldValue.Items.Strings[edtRow1.ItemIndex]) = 'Date') then
  begin
    edtDate1.Visible := true;
    edtValue1.visible := false;
  end
  else
  begin
    edtDate1.Visible := false;
    edtValue1.visible := True;
    if GetFilterType(edtFieldValue.Items.Strings[edtRow1.ItemIndex]) = 'Str' then
    begin
      edtComp1.ItemIndex := 0;
      edtComp1.Enabled := False;
    end
    else
      edtComp1.Enabled := True;
  end;
end;

procedure TFilterPublicForm.edtRow2Change(Sender: TObject);
begin
  inherited;
  edtDate2.Date := Date;
  if GetFilterType(edtFieldValue.Items.Strings[edtRow2.ItemIndex]) = 'Date' then
  begin
    edtDate2.Visible := true;
    edtValue2.visible := false;
  end
  else
  begin
    edtDate2.Visible := false;
    edtValue2.visible := True;
    if GetFilterType(edtFieldValue.Items.Strings[edtRow2.ItemIndex]) = 'Str' then
    begin
      edtComp2.ItemIndex := 0;
      edtComp2.Enabled := False;
    end
    else
      edtComp2.Enabled := True;
  end;
end;

procedure TFilterPublicForm.edtRow3Change(Sender: TObject);
begin
  inherited;
  edtDate3.Date := Date;
  if GetFilterType(edtFieldValue.Items.Strings[edtRow3.ItemIndex]) = 'Date' then
  begin
    edtDate3.Visible := true;
    edtValue3.visible := false;
  end
  else
  begin
    edtDate3.Visible := false;
    edtValue3.visible := True;
    if GetFilterType(edtFieldValue.Items.Strings[edtRow4.ItemIndex]) = 'Str' then
    begin
      edtComp3.ItemIndex := 0;
      edtComp3.Enabled := False;
    end
    else
      edtComp3.Enabled := True;
  end;
end;

procedure TFilterPublicForm.edtRow4Change(Sender: TObject);
begin
  inherited;
  edtDate4.Date := Date;
  if GetFilterType(edtFieldValue.Items.Strings[edtRow4.ItemIndex]) = 'Date' then
  begin
    edtDate4.Visible := true;
    edtValue4.visible := false;
  end
  else
  begin
    edtDate4.Visible := false;
    edtValue4.visible := True;
    if GetFilterType(edtFieldValue.Items.Strings[edtRow4.ItemIndex]) = 'Str' then
    begin
      edtComp4.ItemIndex := 0;
      edtComp4.Enabled := False;
    end
    else
      edtComp4.Enabled := True;
  end;
end;

procedure TFilterPublicForm.edtRow5Change(Sender: TObject);
begin
  inherited;
  edtDate5.Date := Date;
  if GetFilterType(edtFieldValue.Items.Strings[edtRow5.ItemIndex]) = 'Date' then
  begin
    edtDate5.Visible := true;
    edtValue5.visible := false;
  end
  else
  begin
    edtDate5.Visible := false;
    edtValue5.visible := True;
    if GetFilterType(edtFieldValue.Items.Strings[edtRow5.ItemIndex]) = 'Str' then
    begin
      edtComp5.ItemIndex := 0;
      edtComp5.Enabled := False;
    end
    else
      edtComp5.Enabled := True;
  end;
end;

procedure TFilterPublicForm.edtRow6Change(Sender: TObject);
begin
  inherited;
  edtDate6.Date := Date;
  if GetFilterType(edtFieldValue.Items.Strings[edtRow6.ItemIndex]) = 'Date' then
  begin
    edtDate6.Visible := true;
    edtValue6.visible := false;
  end
  else
  begin
    edtDate6.Visible := false;
    edtValue6.visible := True;
    if GetFilterType(edtFieldValue.Items.Strings[edtRow6.ItemIndex]) = 'Str' then
    begin
      edtComp6.ItemIndex := 0;
      edtComp6.Enabled := False;
    end
    else
      edtComp6.Enabled := True;
  end;
end;

procedure TFilterPublicForm.bbClearClick(Sender: TObject);
begin
  inherited;
  DBSet1.Filter := '';
  edtValue1.Text := '';
  edtValue2.Text := '';
  edtValue3.Text := '';
  edtValue4.Text := '';
  edtValue5.Text := '';
  edtValue6.Text := '';
  bbYes.Enabled := True;
end;

end.

