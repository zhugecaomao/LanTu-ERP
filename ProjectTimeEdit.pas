unit ProjectTimeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, ADODB, DBCtrlsEh;

type
  TProjectTimeEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProjectTimeEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ProjectTime;

{$R *.dfm}

procedure ShowProjectTimeEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProjectTimeEditForm: TProjectTimeEditForm;
begin
  ProjectTimeEditForm:= TProjectTimeEditForm.Create(Nil);
  ProjectTimeEditForm.FADOQuery:= ADOQuery;

    if State1 = 'dsEdit' then
        ProjectTimeEditForm.FADOQuery.Edit;

    if State1 = 'dsInsert' then
      ProjectTimeEditForm.FADOQuery.Append;

  ProjectTimeEditForm.ShowModal;
end;

procedure TProjectTimeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TProjectTimeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
