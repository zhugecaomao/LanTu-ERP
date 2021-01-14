unit SumExpense;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSingleEdit, Buttons, StdCtrls, Mask, DBCtrls, ADODB, DB,
  BaseEdit;

type
  TSumExpenseForm = class(TBaseSingleEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    bbCard: TBitBtn;
    bbNO: TBitBtn;
    Edit4: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure bbCardClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure bbNOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowSumExpenseForm(ADOQuery: TADOQuery);

implementation

uses SysPublic, MemberManage;

{$R *.dfm}

procedure ShowSumExpenseForm(ADOQuery: TADOQuery);
var
  SumExpenseForm: TSumExpenseForm;
begin
  SumExpenseForm:= TSumExpenseForm.Create(Nil);
  SumExpenseForm.FADOQuery:= ADOQuery;
  SumExpenseForm.FADOQuery.Edit;
  SumExpenseForm.ShowModal;
end;

procedure TSumExpenseForm.Edit1Change(Sender: TObject);
begin
  inherited;
  FADOQuery.Close;
  FADOQuery.SQL.Clear;
  FADOQuery.SQL.Add('Select * From 会员资料 where 卡号 like :Param');
  FADOQuery.Parameters.ParamByName('Param').Value := '%'+Trim(Edit1.Text)+'%';
  FADOQuery.Open;
end;

procedure TSumExpenseForm.bbCardClick(Sender: TObject);
begin
  inherited;
  if FADOQuery.IsEmpty then
  begin
    ShowMsg('系统中没有此卡号！');
    Exit;
  end;
  if (Trim(Edit4.Text)='') or (StrToFloat(Trim(Edit4.Text ))<=0) then
  begin
    ShowMsg('输入消费积分不合法！');
    Exit;
  end;
  if FADOQuery.FieldByName('口令').AsString = Trim(Edit2.Text) then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('积分').AsFloat := FADOQuery.FieldByName('积分').AsFloat- StrToFloat(Edit4.Text);
    FADOQuery.Post;
    ShowMsg('积分消费成功！');
    Close;
  end
  else
    ShowMsg('密码错误，会员退卡失败！');
end;

procedure TSumExpenseForm.Edit3Exit(Sender: TObject);
begin
  inherited;
  Edit3.Text := FloatToStr(FADOQuery.FieldByName('积分').AsFloat);
end;

procedure TSumExpenseForm.bbNOClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
