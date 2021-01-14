unit SuppleCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCard, Buttons, StdCtrls, Mask, DBCtrls, DBCtrlsEh, ExtCtrls,
  ADODB, DB, BaseEdit, BaseSingleEdit;

type
  TSuppleCardForm = class(TBaseCardForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure btnExecute1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnContentClick(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
//    FADOQryTmp: TADOQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowSuppleCardForm;

implementation

uses SysPublic, MemberInfo, MemberManage;

{$R *.dfm}

procedure ShowSuppleCardForm;
var
  SuppleCardForm: TSuppleCardForm;
begin
  SuppleCardForm:= TSuppleCardForm.Create(Nil);
  SuppleCardForm.ShowModal;
end;

procedure TSuppleCardForm.Edit1Change(Sender: TObject);
begin
  inherited;
  with FADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * From 会员资料 where 会员名称=:Param');
    Parameters.ParamByName('Param').Value := Edit1.Text;
    Open;
  end;
  if FADOQuery.RecordCount <1 then exit;
end;

procedure TSuppleCardForm.Edit2Change(Sender: TObject);
begin
  inherited;
  with FADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * From 会员资料 where 会员编号=:Param');
    Parameters.ParamByName('Param').Value := Edit2.Text;
    Open;
  end;
  if FADOQuery.RecordCount <1 then exit;
end;

procedure TSuppleCardForm.btnExecute1Click(Sender: TObject);
var
  ADOQryTmp: TADOQuery;
  s: string;
begin
  inherited;

  if not FADOQuery.Active then exit;
//  if not FADOQryTmp.Active then exit;
  if (Edit3.Text='') or (Edit4.Text='') or (Edit5.Text='') then
  begin
    ShowMsg('口令，卡号，补卡费不能为空！');
    Exit;
  end;

  s:= Trim(Edit4.Text);

  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From 会员资料 Where 卡号=' + QuotedStr(s));
  ADOQryTmp.Open;

  if ADOQryTmp.RecordCount >=1 then
  begin
    ShowMsg('此卡号在系统中已经存在！');
    Exit;
  end;

  ADOQryTmp.Close;
  ADOQryTmp.Free; 

  if FADOQuery.FieldByName('口令').AsString = Trim(Edit3.Text) then
  begin
    FADOQuery.Edit;
    if trim(FADOQuery.FieldByName('历史卡号').AsString) ='' then
      FADOQuery.FieldByName('历史卡号').AsString:= FADOQuery.FieldByName('卡号').AsString
    else
      FADOQuery.FieldByName('历史卡号').AsString:= FADOQuery.FieldByName('历史卡号').AsString + ','+ FADOQuery.FieldByName('卡号').AsString;
    FADOQuery.FieldByName('卡号').AsString:= Edit4.Text;
    FADOQuery.FieldByName('补卡费').AsFloat := StrToFloat(Edit5.Text);
    FADOQuery.Post;
    ShowMsg('会员补卡成功！');
    Close;
  end
  else
    ShowMsg('密码错误，会员补卡失败！');

end;

procedure TSuppleCardForm.FormShow(Sender: TObject);
begin
  inherited;
  btnExecute1.Caption:= '补  卡';
  btnExecute2.Caption:= '退  出';
end;

procedure TSuppleCardForm.btnContentClick(Sender: TObject);
begin
  inherited;
  ShowMemberInfoForm(FADOQuery);
end;

procedure TSuppleCardForm.Edit2Exit(Sender: TObject);
begin
  inherited;
  if not FADOQuery.Active then exit;
  if FADOQuery.RecordCount <1 then exit;
  Edit1.Text:= '';
  Edit1.Text:= FADOQuery.FieldByName('会员名称').AsString;
end;

procedure TSuppleCardForm.Edit1Exit(Sender: TObject);
begin
  inherited;
  if not FADOQuery.Active then exit;
  if FADOQuery.RecordCount <1 then exit;
  Edit2.Text:= '';
  Edit2.Text:= FADOQuery.FieldByName('会员编号').AsString;
end;

procedure TSuppleCardForm.Edit4Change(Sender: TObject);
begin
  inherited;
{  with FADOQryTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * From 会员资料 where 会员编号=:Param');
    Parameters.ParamByName('Param').Value := Edit4.Text;
    Open;
  end;
  if FADOQryTmp.RecordCount <1 then exit;}
end;

procedure TSuppleCardForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //只能输入数字和小数点
  if (Key in ['0'..'9']=false) and (Key<> '.') and (key<>#8) then
    key:=#0
end;

end.
