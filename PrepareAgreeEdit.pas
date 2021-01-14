unit PrepareAgreeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, ADODB;

type
  TPrepareAgreeEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowPrepareAgreeEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses PrepareAgree;

{$R *.dfm}

procedure ShowPrepareAgreeEditForm(ADOQuery: TADOQuery; State1: string);
var
  PrepareAgreeEditForm: TPrepareAgreeEditForm;
begin
  PrepareAgreeEditForm:= TPrepareAgreeEditForm.Create(Nil);
  PrepareAgreeEditForm.FADOQuery:= ADOQuery;
  PrepareAgreeEditForm.ShowModal;

    if State1 = 'dsEdit' then
        ADOQuery.Edit;

    if State1 = 'dsInsert' then
      ADOQuery.Append;

end;

end.
