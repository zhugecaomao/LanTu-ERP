unit ProTypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, ADODB, Mask, DBCtrls, DBCtrlsEh;

type
  TProTypeEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProTypeEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ProType;

{$R *.dfm}

procedure ShowProTypeEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProTypeEditForm: TProTypeEditForm;
begin
  ProTypeEditForm:= TProTypeEditForm.Create(Nil);
  ProTypeEditForm.FADOQuery:= ADOQuery;

    if State1 = 'dsEdit' then
        ProTypeEditForm.FADOQuery.Edit;

    if State1 = 'dsInsert' then
      ProTypeEditForm.FADOQuery.Append;

  ProTypeEditForm.ShowModal;
end;

procedure TProTypeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TProTypeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
