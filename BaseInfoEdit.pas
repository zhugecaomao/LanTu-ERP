unit BaseInfoEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, StdCtrls, Buttons, Mask, DBCtrls, DBGridEh, DB,
  BaseNormal, BaseEdit, ADODB, DBCtrlsEh, DBLookupEh, ComCtrls;

type
  TBaseInfoEditForm = class(TBaseEditForm)
    btnIns: TBitBtn;
    btnOK: TBitBtn;
    btnNO: TBitBtn;
    sbFirst: TSpeedButton;
    spPrior: TSpeedButton;
    spNext: TSpeedButton;
    spLast: TSpeedButton;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnNOClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbFirstClick(Sender: TObject);
    procedure spPriorClick(Sender: TObject);
    procedure spNextClick(Sender: TObject);
    procedure spLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SetGroupBoxDisenable;

    procedure DBEditEhEnter(Sender: TObject);
    procedure DBEditEhExit(Sender: TObject);
    procedure DBLookupComboboxEhEnter(Sender: TObject);
    procedure DBLookupComboboxEhExit(Sender: TObject);
    procedure DBComboBoxEhEnter(Sender: TObject);
    procedure DBComboBoxEhExit(Sender: TObject);
    procedure DBDateTimeEditEhEnter(Sender: TObject);
    procedure DBDateTimeEditEhExit(Sender: TObject);

    procedure EditEnter(Sender: TObject);
    procedure EditExit(Sender: TObject);
    procedure ComboBoxEnter(Sender: TObject);
    procedure ComboBoxExit(Sender: TObject);
    procedure ListBoxEnter(Sender: TObject);
    procedure ListBoxExit(Sender: TObject);
    procedure RadioButtonEnter(Sender: TObject);
    procedure RadioButtonExit(Sender: TObject);

    procedure SetDBLookupComboboxEhState;
    procedure SetDBEditEhColor;
    { Private declarations }
  protected

  public
    { Public declarations }

  end;

var
  BaseInfoEditForm: TBaseInfoEditForm;
  EnterEhColor, ExitEhColor: TColor;

implementation

uses SysPublic;

{$R *.dfm}

procedure TBaseInfoEditForm.btnInsClick(Sender: TObject);
//var
//  i: integer;
//  Temp: TComponent;
begin
  inherited;
//  for i:=0 to ComponentCount-1 do
//  begin
//    Temp := Components[I];
//    if (Temp is TWinControl) then
//    begin
//      if TWinControl(components[i]).TabOrder= 0 then
//        TWinControl(components[i]).SetFocus;
//    end;
//  end;
  FADOQuery.Append;
end;

procedure TBaseInfoEditForm.btnOKClick(Sender: TObject);
begin
  inherited;
  if FADOQuery.State in [dsEdit, dsInsert] then
    FADOQuery.Post;
  Close;
end;

procedure TBaseInfoEditForm.btnNOClick(Sender: TObject);
begin
  inherited;
  if FADOQuery.State in [dsInsert, dsEdit] then
     FADOQuery.Cancel;
  Close;
end;

procedure TBaseInfoEditForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if FADOQuery.State in [dsInsert,dsEdit] then
  begin
    ShowMsg('数据正在编辑状态，不能退出！');
    Abort;
  end;
end;

procedure TBaseInfoEditForm.SetGroupBoxDisenable;
var
  i, j: integer;
begin
{  for i :=0 to  ComponentCount -1 do
  begin
    if Components[i] is TGroupBox then
    begin
      for j:=0  to  do

    end;

  end;}

end;

procedure TBaseInfoEditForm.sbFirstClick(Sender: TObject);
begin
  inherited;
  if not FADOQuery.Active then Exit;
  if FADOQuery.State in [dsInsert] then
  begin
    if MsgBox('你没有保存数据，确定要继续吗？', MB_OKCANCEL) <> IDOK then Exit;
    FADOQuery.Cancel;
  end;
  FADOQuery.First;
end;

procedure TBaseInfoEditForm.spPriorClick(Sender: TObject);
begin
  inherited;
  if not FADOQuery.Active then Exit;
  if FADOQuery.State in [dsInsert] then
  begin
    if MsgBox('你没有保存数据，确定要继续吗？', MB_OKCANCEL) <> IDOK then Exit;
    FADOQuery.Cancel;
  end;
  FADOQuery.Prior;
end;

procedure TBaseInfoEditForm.spNextClick(Sender: TObject);
begin
  inherited;
  if not FADOQuery.Active then Exit;
  if FADOQuery.State in [dsInsert] then
  begin
    if MsgBox('你没有保存数据，确定要继续吗？', MB_OKCANCEL) <> IDOK then Exit;
    FADOQuery.Cancel;
  end;
  FADOQuery.Next;
end;

procedure TBaseInfoEditForm.spLastClick(Sender: TObject);
begin
  inherited;
  if not FADOQuery.Active then Exit;
  if FADOQuery.State in [dsInsert] then
  begin
    if MsgBox('你没有保存数据，确定要继续吗？', MB_OKCANCEL) <> IDOK then Exit;
    FADOQuery.Cancel;
  end;
  FADOQuery.Last;
end;

procedure TBaseInfoEditForm.FormCreate(Sender: TObject);
begin
  inherited;
  EnterEhColor:= clInfoBk;
  ExitEhColor:=  clWhite;
  SetDBEditEhColor;
  SetDBLookupComboboxEhState;
end;

procedure TBaseInfoEditForm.ComboBoxEnter(Sender: TObject);
begin
  TComboBox(Sender).Color := EnterEhColor;
end;

procedure TBaseInfoEditForm.ComboBoxExit(Sender: TObject);
begin
  TComboBox(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.DBComboBoxEhEnter(Sender: TObject);
begin
  TDBComboBoxEh(Sender).Color:= EnterEhColor;
end;

procedure TBaseInfoEditForm.DBComboBoxEhExit(Sender: TObject);
begin
  TDBComboBoxEh(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.DBDateTimeEditEhEnter(Sender: TObject);
begin
  TDBDateTimeEditEh(Sender).Color:= EnterEhColor;
end;

procedure TBaseInfoEditForm.DBDateTimeEditEhExit(Sender: TObject);
begin
  TDBDateTimeEditEh(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.DBEditEhEnter(Sender: TObject);
begin
  TDBEditEh(Sender).Color := EnterEhColor;
end;

procedure TBaseInfoEditForm.DBEditEhExit(Sender: TObject);
begin
  TDBEditEh(Sender).Color := ExitEhColor;
end;

procedure TBaseInfoEditForm.DBLookupComboboxEhEnter(Sender: TObject);
begin
  TDBLookupComboboxEh(Sender).Color:= EnterEhColor;
end;

procedure TBaseInfoEditForm.DBLookupComboboxEhExit(Sender: TObject);
begin
  TDBLookupComboboxEh(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.EditEnter(Sender: TObject);
begin
  TEdit(Sender).Color := EnterEhColor;
end;

procedure TBaseInfoEditForm.EditExit(Sender: TObject);
begin
  TEdit(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.ListBoxEnter(Sender: TObject);
begin
  TListBox(Sender).Color := EnterEhColor;
end;

procedure TBaseInfoEditForm.ListBoxExit(Sender: TObject);
begin
  TListBox(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.RadioButtonEnter(Sender: TObject);
begin
  TRadioButton(Sender).Color := EnterEhColor;
end;

procedure TBaseInfoEditForm.RadioButtonExit(Sender: TObject);
begin
  TRadioButton(Sender).Color:= ExitEhColor;
end;

procedure TBaseInfoEditForm.SetDBEditEhColor;
var
  i: integer;
  sHint: string;
begin
  sHint:= '万商会员消费管理系统'+#13+'请您输入：';
  for i:=0 to ComponentCount-1 do  { 遍历Form组件 }
  begin
    if Components[i] is TDBEditEh then
    begin
      (Components[i] as TDBEditEh).OnEnter:=DBEditEhEnter;
      (Components[i] as TDBEditEh).OnExit:= DBEditEhExit;
      (Components[i] as TDBEditEh).Hint:=sHint + (Components[i] as TDBEditEh).DataField;
      (Components[i] as TDBEditEh).ShowHint:= True;
    end;
    if Components[i] is TDBLookupComboboxEh then
    begin
      (Components[i] as TDBLookupComboboxEh).OnEnter:=DBLookupComboboxEhEnter;
      (Components[i] as TDBLookupComboboxEh).OnExit:= DBLookupComboboxEhExit;
      (Components[i] as TDBLookupComboboxEh).Hint := sHint + (Components[i] as TDBLookupComboboxEh).DataField;
      (Components[i] as TDBLookupComboboxEh).ShowHint := True;
    end;
    if (Components[i] is TDBComboBoxEh) then
    begin
      (Components[i] as TDBComboBoxEh).OnEnter:=DBComboBoxEhEnter;
      (Components[i] as TDBComboBoxEh).OnExit:= DBComboBoxEhExit;
      (Components[i] as TDBComboBoxEh).Hint:= sHint +(Components[i] as TDBComboBoxEh).DataField;
      (Components[i] as TDBComboBoxEh).ShowHint := True;
    end;
    if (Components[i] is TDBDateTimeEditEh) then
    begin
      (Components[i] as TDBDateTimeEditEh).OnEnter:=DBDateTimeEditEhEnter;
      (Components[i] as TDBDateTimeEditEh).OnExit:= DBDateTimeEditEhExit;
      (Components[i] as TDBDateTimeEditEh).Hint:= sHint +(Components[i] as TDBDateTimeEditEh).DataField;
      (Components[i] as TDBDateTimeEditEh).ShowHint := True;
    end;
{    if (Components[i] is TRadioButton) then
    begin
      (Components[i] as TRadioButton).OnEnter := RadioButtonEnter;
      (Components[i] as TRadioButton).OnExit := RadioButtonExit;
    end;

    if (Components[i] is TEdit) then
    begin
      (Components[i] as TEdit).OnEnter := EditEnter;
      (Components[i] as TEdit).OnExit := EditExit;
    end;

    if (Components[i] is TComboBox) then
    begin
      (Components[i] as TComboBox).OnEnter := ComboBoxEnter;
      (Components[i] as TComboBox).OnExit := ComboBoxExit;
    end;

    if (Components[i] is TListBox) then
    begin
      (Components[i] as TListBox).OnEnter := ListBoxEnter;
      (Components[i] as TListBox).OnExit := ListBoxExit;
    end;}

  end;
end;

procedure TBaseInfoEditForm.SetDBLookupComboboxEhState;
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do  { 遍历Form组件 }
  begin
    if Components[i] is TDBLookupComboboxEh then
    begin
      (Components[i] as TDBLookupComboboxEh).DropDownBox.ShowTitles:= True;
      (Components[i] as TDBLookupComboboxEh).DropDownBox.Sizable := True;
      (Components[i] as TDBLookupComboboxEh).DropDownBox.Width :=200;

      //if dlgColLinesEh in (Components[i] as TDBLookupComboboxEh).DropDownBox.options then
      //  (Components[i] as TDBLookupComboboxEh).DropDownBox.options:=(Components[i] as TDBLookupComboboxEh).DropDownBox.options-[dlgColLinesEh]
      //else
        (Components[i] as TDBLookupComboboxEh).DropDownBox.options:=(Components[i] as TDBLookupComboboxEh).DropDownBox.options+[dlgColLinesEh];

      //if dlgRowLinesEh in (Components[i] as TDBLookupComboboxEh).DropDownBox.options then
      //  (Components[i] as TDBLookupComboboxEh).DropDownBox.options:=(Components[i] as TDBLookupComboboxEh).DropDownBox.options-[dlgRowLinesEh]
      //else
        (Components[i] as TDBLookupComboboxEh).DropDownBox.options:=(Components[i] as TDBLookupComboboxEh).DropDownBox.options+[dlgRowLinesEh];

    end;
  end;
end;

end.
