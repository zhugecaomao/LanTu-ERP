unit UserEditPass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, StdCtrls, Buttons, ADODB;

type
  TUserEditPassForm = class(TBaseNormalForm)
    bbOk: TBitBtn;
    bbNo: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    procedure bbOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowUserEditPassForm;

implementation

uses SysPublic;

{$R *.dfm}

procedure ShowUserEditPassForm;
var
  UserEditPassForm: TUserEditPassForm;
begin
  UserEditPassForm:= TUserEditPassForm.Create(Nil);
  UserEditPassForm.ShowModal;
end;

procedure TUserEditPassForm.bbOkClick(Sender: TObject);
var
  ADOQryTmp: TADOQuery;
begin
  inherited;
  try
    ADOQryTmp:= TADOQuery.Create(Nil);
    GetConn(ADOQryTmp);

    ADOQryTmp.Close;
    ADOQryTmp.SQL.Clear;
    ADOQryTmp.SQL.Add('Select * From 员工资料 Where 员工编号=' + QuotedStr(LoginEmployeCode));
    ADOQryTmp.Open;

    if Trim(ADOQryTmp.FieldByName('员工密码').AsString)= EncryptPassword(Trim(Edit1.Text)) then
    begin
      if Trim(Edit2.Text)= Trim(Edit3.Text) then
      begin
        ADOQryTmp.Edit;
        ADOQryTmp.FieldByName('员工密码').AsString := EncryptPassword(Trim(Edit2.Text));
        ADOQryTmp.Post;
        ShowMsg('修改密码成功！');
        Close;
      end
      else
      begin
        ShowMsg('两次确认密码不符！');
        Exit;
      end;
    end
    else
    begin
      ShowMsg('原密码不正确！');
      Exit;
    end;
  finally
    ADOQryTmp.Close;
    ADOQryTmp.Free;
  end;
end;

procedure TUserEditPassForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case KEY of
    VK_RETURN: perform(WM_NEXTDLGCTL, 0, 0);
    VK_ESCAPE: Close;
  end;
end;

procedure TUserEditPassForm.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
