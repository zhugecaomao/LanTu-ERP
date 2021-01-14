unit User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo1, PrintForm, DB, ADODB, ExtCtrls, Grids, DBGridEh,
  ComCtrls, ToolWin, StdCtrls, Buttons;

type
  TUserForm = class(TBaseInfo1Form)
    QBaseInfoID: TAutoIncField;
    QBaseInfofCode: TWideStringField;
    QBaseInfofName: TWideStringField;
    QBaseInfofPWD: TWideStringField;
    QBaseInfofGroupID: TIntegerField;
    QBaseInfofStatus: TBooleanField;
    QBaseInfofNotes: TWideStringField;
    QBaseInfofFlag: TBooleanField;
    BitBtn1: TBitBtn;
    procedure QBaseInfofCodeValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserForm: TUserForm;

implementation

{$R *.dfm}

procedure TUserForm.QBaseInfofCodeValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    showmessage('用户编号重复，请重新输入');
    abort;
  end;
end;

end.
