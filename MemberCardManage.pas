unit MemberCardManage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCard, Buttons, StdCtrls, Mask, DBCtrls, DBCtrlsEh, ADODB, DB,
  BaseSingleEdit;

type
  TMemberCardManageForm = class(TBaseCardForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure btnContentClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowMemberCardManageForm(ADOQuery: TADOQuery);

implementation

uses SysPublic, DataM, MemberManage, DepartEdit, MemberInfo;

{$R *.dfm}

procedure ShowMemberCardManageForm(ADOQuery: TADOQuery);
var
  MemberCardManageForm: TMemberCardManageForm;
begin
{  MemberCardManageForm:= TMemberCardManageForm.Create(Nil);
  MemberCardManageForm.ADOQuery1:= ADOQuery;
  MemberCardManageForm.ADOQuery1.Edit;
  if MemberCardManageForm.ADOQuery1.FieldByName('卡号').AsString = '' then
  begin
    MemberCardManageForm.ShowModal;
  end
  else
  begin
    ShowMsg('已经发过卡！');
    Exit;
  end;}
end;

procedure TMemberCardManageForm.BitBtn1Click(Sender: TObject);
var
  SaveMoney: Double;
  s: string;
  ADOQryTmp: TADOQuery;
begin
  inherited;
  s:= Trim(Edit1.Text);

  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From 会员资料 Where 卡号='+ QuotedStr(S));
  ADOQryTmp.Open;

  if ADOQryTmp.RecordCount >=1 then
  begin
    ShowMsg('此卡号在系统中有使用！');
    Exit;
  end;
  ADOQryTmp.Close;
  ADOQryTmp.Free;

  if (Trim(Edit1.Text)='') and (Trim(Edit3.Text)='') then
    ShowMsg('卡号口令都不能为空！');
  SaveMoney:= FADOQuery.FieldByName('押金').AsFloat+ StrToFloat(Edit2.Text);
  try
    if FADOQuery.State in [dsEdit] then
    begin
      FADOQuery.FieldByName('卡号').AsString := Trim(Edit1.Text);
      FADOQuery.FieldByName('押金').AsFloat := SaveMoney;
      FADOQuery.FieldByName('口令').AsString := Trim(Edit3.Text);
      FADOQuery.Post;
      ShowMsg('发卡成功!');
    end;
    Close;
  finally
  end;
end;

procedure TMemberCardManageForm.FormShow(Sender: TObject);
begin
  inherited;
  btnExecute1.Caption:= '发  卡';
  btnExecute2.Caption:= '退  出'; 
end;

procedure TMemberCardManageForm.Edit1Change(Sender: TObject);
begin
  inherited;
{  FADOQuery.Close;
  FADOQuery.SQL.Clear;
  FADOQuery.SQL.add('Select * From 会员资料 Where 卡号=:Param');
  FADOQuery.Parameters.ParamByName('param').Value := Edit1.Text;
  FADOQuery.Open;

 if FADOQuery.RecordCount<1 then exit;}
end;

procedure TMemberCardManageForm.Edit1Exit(Sender: TObject);
begin
  inherited;
{  if not FADOQuery.Active then Exit;
  if FADOQuery.RecordCount >=1 then
  begin
    Edit2.Text:= '';
    Edit2.Text:= FADOQuery.FieldByName('积分').AsString;
  end;}
end;

procedure TMemberCardManageForm.btnContentClick(Sender: TObject);
begin
  inherited;
  ShowMemberInfoForm(FADOQuery);
end;

procedure TMemberCardManageForm.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //只能输入数字和小数点
  if (Key in ['0'..'9']=false) and (Key<> '.') and (key<>#8) then
    key:=#0
end;

end.
