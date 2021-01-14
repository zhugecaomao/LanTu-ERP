unit PassMoney;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCard, Buttons, ExtCtrls, StdCtrls, DB, ADODB, BaseEdit,
  BaseSingleEdit;

type
  TPassMoneyForm = class(TBaseCardForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    ADOQryOut: TADOQuery;
    ADOQryIn: TADOQuery;
    procedure Edit1Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExecute1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure btnContentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowPassMoneyForm;

implementation

uses SysPublic, DataM, MemberInfo;

{$R *.dfm}

procedure ShowPassMoneyForm;
var
  PassMoneyForm: TPassMoneyForm;
begin
  PassMoneyForm:= TPassMoneyForm.Create(Nil);
  PassMoneyForm.ShowModal;
end;

procedure TPassMoneyForm.Edit1Change(Sender: TObject);
begin
  inherited;
  ADOQryOut.Close;
  ADOQryOut.SQL.Clear;
  ADOQryOut.SQL.Add('Select * From 会员资料 where 卡号 like :Param');
  ADOQryOut.Parameters.ParamByName('Param').Value := '%'+Trim(Edit1.Text)+'%';
  ADOQryOut.Open;
  Edit2.Text:= ADOQryOut.FieldByName('会员编号').AsString;
end;

procedure TPassMoneyForm.Edit4Change(Sender: TObject);
begin
  inherited;
  ADOQryIn.Close;
  ADOQryIn.SQL.Clear;
  ADOQryIn.SQL.Add('Select * From 会员资料 where 卡号 like :Param');
  ADOQryIn.Parameters.ParamByName('Param').Value := '%'+Trim(Edit4.Text)+'%';
  ADOQryIn.Open;
  Edit5.Text:= ADOQryIn.FieldByName('会员编号').AsString;
end;

procedure TPassMoneyForm.FormShow(Sender: TObject);
begin
  inherited;
  btnExecute1.Caption :='转  帐';
  btnExecute2.Caption:='退  出';
end;

procedure TPassMoneyForm.btnExecute1Click(Sender: TObject);
var
  DMoney: Currency;
begin
  inherited;

 if not ADOQryOut.Active then
  begin
    ShowMsg('请输入转出会员卡号!');
    Exit;
  end;

  if not ADOQryIn.Active then
  begin
    ShowMsg('请输入转入会员卡号!');
    Exit;
  end;

  if ADOQryOut.FieldByName('会员编号').AsString ='' then
  begin
    ShowMsg('没有转出会员!');
    Exit;
  end;

  if ADOQryIn.FieldByName('会员编号').AsString ='' then
  begin
    ShowMsg('没有转入会员!');
    Exit;
  end;


  if Edit3.Text <> ADOQryOut.FieldByName('口令').AsString then
  begin
    ShowMsg('口令输入错误！');
    Exit;
  end;
  if (Trim(Edit6.Text)='') or (StrToFloat(Trim(Edit6.Text))<=0) then
  begin
    ShowMsg('输入数据不合法！');
    Exit;
  end;
  try
    DMoney:= StrToFloat(Edit6.Text);
    ADOQryOut.Edit;
    ADOQryOut.FieldByName('余额').AsFloat:= ADOQryOut.FieldByName('余额').AsFloat
      -DMoney;
    ADOQryOut.Post;
    ADOQryIn.Edit;
    ADOQryIn.FieldByName('余额').AsFloat :=ADOQryIn.FieldByName('余额').AsFloat
      + DMoney;
    ADOQryIn.Post;
      ShowMsg('转帐成功！');
    Close;
  except
    ShowMsg('转帐失败！');
  end;

//  if
end;

procedure TPassMoneyForm.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //只能输入数字和小数点
  if (Key in ['0'..'9']=false) and (Key<> '.') and (key<>#8) then
    key:=#0
end;

procedure TPassMoneyForm.btnContentClick(Sender: TObject);
begin
  inherited;
  ShowMemberInfoForm(ADOQryOut);
end;

end.
