unit EmployeeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, ComCtrls, DBCtrls, Mask, ADODB,
  DBCtrlsEh, DBLookupEh, DB;

type
  TEmployeeEditForm = class(TBaseInfoEditForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    ADOQryEmployeetype: TADOQuery;
    dsEmployeetype: TDataSource;
    ADOQryDepart: TADOQuery;
    dsDepart: TDataSource;
    ADOQryDegree: TADOQuery;
    dsDegree: TDataSource;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBEditEh14: TDBEditEh;
    DBEditEh15: TDBEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboboxEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowEmployeeEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Employeetype, Depart, Degree;

{$R *.dfm}

procedure ShowEmployeeEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  EmployeeEditForm: TEmployeeEditForm;
begin
  EmployeeEditForm:= TEmployeeEditForm.Create(Application);
  with EmployeeEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TEmployeeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TEmployeeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TEmployeeEditForm.FormShow(Sender: TObject);
begin
  inherited;
  if not ADOQryEmployeetype.Active then
    ADOQryEmployeetype.Open;

  if not ADOQryDepart.Active then
    ADOQryDepart.Open;

  if not ADOQryDegree.Active then
    ADOQryDegree.Open;
end;

procedure TEmployeeEditForm.DBLookupComboboxEh1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
var
  s: string;
begin
  inherited;
  S:= ShowEmployeetypeForm(1, DBLookupComboboxEh1.Field.AsString);
  if S <> '' then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('类别编号').AsString := S;
  end;
end;

procedure TEmployeeEditForm.DBLookupComboboxEh2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
var
  s: string;
begin
  inherited;
  S:= ShowDepartForm(1, DBLookupComboboxEh2.Field.AsString);
  if S <> '' then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('部门编号').AsString := S;
  end;
end;

procedure TEmployeeEditForm.DBLookupComboboxEh3EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
var
  s: string;
begin
  inherited;
  S:= ShowDegreeForm(1, DBLookupComboboxEh3.Field.AsString);
  if S <> '' then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('学历编号').AsString := S;
  end;
end;

end.
