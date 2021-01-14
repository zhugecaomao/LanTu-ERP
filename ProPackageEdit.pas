unit ProPackageEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, DBCtrlsEh, DBLookupEh, Mask,
  DBCtrls, DB, ADODB;

type
  TProPackageEditForm = class(TBaseInfoEditForm)
    Label13: TLabel;
    Label14: TLabel;
    GroupBox1: TGroupBox;
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
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    procedure DBComboBoxEh1Change(Sender: TObject);
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProPackageEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ProPackage, BaseProjectSelect;

{$R *.dfm}

procedure ShowProPackageEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProPackageEditForm: TProPackageEditForm;
begin
  ProPackageEditForm:= TProPackageEditForm.Create(Nil);
  ProPackageEditForm.FADOQuery:= ADOQuery;

    if State1 = 'dsEdit' then
//      if not ServerEditForm.ADOQuery1.IsEmpty then
        ProPackageEditForm.FADOQuery.Edit;

    if State1 = 'dsInsert' then
      ProPackageEditForm.FADOQuery.Append;

  ProPackageEditForm.ShowModal;

end;

procedure TProPackageEditForm.DBComboBoxEh1Change(Sender: TObject);
begin
  inherited;
  if DBComboBoxEh1.Text ='计时' then
    Label14.Caption:= '分    钟'
  else
    Label14.Caption :='次    数';
end;

procedure TProPackageEditForm.DBEditEh1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  inherited;
  ShowBaseProjectSelectForm(FADOQuery);
end;

procedure TProPackageEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label13.Name, Label14.Name], [DBComboBoxEh1.Name, DBEditEh13.Name])
    then Exit;
  inherited;

end;

procedure TProPackageEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label13.Name, Label14.Name], [DBComboBoxEh1.Name, DBEditEh13.Name])
    then Exit;
  inherited;

end;

end.
