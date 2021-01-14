unit FindPublic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Base, StdCtrls, Buttons, DBGridEh, BaseNormal;

type
  TFindPublicForm = class(TBaseForm)
    Label4: TLabel;
    edtName: TEdit;
    GroupBox1: TGroupBox;
    edtField: TComboBox;
    edtCaption: TComboBox;
    edtDirection: TComboBox;
    checkAll: TCheckBox;
    bbFind: TBitBtn;
    bbFindDown: TBitBtn;
    bbNo: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure bbNoClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure bbFindDownClick(Sender: TObject);
  private
    { Private declarations }
    bReturn: Boolean;
    sPubText: string;
    lPubFiled: Integer;
    gridGrid1: TDBGridEh;
    procedure MainShow;
    procedure LoadData;
    function GridFind(lDirect: Integer): Boolean;
  public
    { Public declarations }
  end;

function FindPublicShow(Grid1: TDBGridEh; var sText: string; var
  lFiled: Integer): Boolean;

implementation

uses SysPublic;

{$R *.DFM}

function FindPublicShow(Grid1: TDBGridEh; var sText: string; var
  lFiled: Integer): Boolean;
var
  FindPublicForm: TFindPublicForm;
begin
  FindPublicForm := TFindPublicForm.Create(Application);
  with FindPublicForm do
  begin
    gridGrid1 := Grid1;
    sPubText := sText;
    lPubFiled := lFiled;
    MainShow;
    sText := sPubText;
    lFiled := lPubFiled;
    Result := bReturn;
    Free;
  end;
end;

procedure TFindPublicForm.MainShow;
begin
  bOperateLog := False;
  LoadData;
  ShowModal;
end;

procedure TFindPublicForm.LoadData;
var
  lCol: Integer;
  sCaption, sField: string;
begin
  sCaption := '';
  edtDirection.ItemIndex := 0;
  edtName.Text := sPubText;
  //得到GRID的列名称
  for lCol := 0 to gridGrid1.Columns.Count - 1 do
    if gridGrid1.Columns[lCol].Visible = true then
    begin
      sCaption := sCaption + gridGrid1.Columns[lCol].Title.Caption + #13;
      sField := sField + gridGrid1.Columns[lCol].FieldName + #13;
    end;
  edtField.Items.Text := sField;
  edtCaption.Items.Text := sCaption;
  if edtCaption.items.Count > 0 then
    edtCaption.ItemIndex := 0;
  if lPubFiled >= 0 then
    edtCaption.ItemIndex := lPubFiled;
end;

procedure TFindPublicForm.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

function TFindPublicForm.GridFind(lDirect: Integer): Boolean;
var
  bFind: Boolean;
  lRow: Integer;
begin
  bFind := false;
  lPubFiled := edtCaption.ItemIndex;
  sPubText := edtName.Text;
  lRow := gridGrid1.DataSource.DataSet.RecNo;
  if lDirect = 0 then
    gridGrid1.DataSource.DataSet.First
  else
    gridGrid1.DataSource.DataSet.RecNo := lRow + 1;
  while not gridGrid1.DataSource.DataSet.Eof do
  begin
    if checkAll.Checked then
    begin
      if edtName.Text <>
        gridGrid1.FieldColumns[edtField.Items.Strings[edtCaption.ItemIndex]].Field.AsString then
        gridGrid1.DataSource.DataSet.Next
      else
      begin
        bFind := true;
        break;
      end;
    end
    else
    begin
      if Pos(edtName.Text,
        gridGrid1.FieldColumns[edtField.Items.Strings[edtCaption.ItemIndex]].Field.AsString) = 0 then
        gridGrid1.DataSource.DataSet.Next
      else
      begin
        bFind := true;
        break;
      end;
    end;
  end;

  if not bFind then
  begin
    gridGrid1.DataSource.DataSet.RecNo := lRow;
    MsgBox('数据没找到，请重新输入条件！', MB_OK);
  end;
  Result := bFind;
end;

procedure TFindPublicForm.bbFindClick(Sender: TObject);
begin
  inherited;
  if GridFind(edtDirection.ItemIndex) then
    Close;
end;

procedure TFindPublicForm.bbFindDownClick(Sender: TObject);
begin
  inherited;
  GridFind(1);
end;

end.

