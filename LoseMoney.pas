unit LoseMoney;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMoney, DB, ADODB, Grids, DBGridEh, StdCtrls, Buttons,
  ExtCtrls;

type
  TLoseMoneyForm = class(TBaseMoneyForm)
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExecute1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowLoseMoneyForm;

implementation

uses SysPublic, MoneyRecord;

{$R *.dfm}

procedure ShowLoseMoneyForm;
var
  LoseMoneyForm: TLoseMoneyForm;
begin
  LoseMoneyForm:= TLoseMoneyForm.Create(Nil);
  LoseMoneyForm.ShowModal;
end;

procedure TLoseMoneyForm.Edit3Enter(Sender: TObject);
begin
  inherited;
  if not ADOQuery1.Active then
    Exit
  else
  begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('Select * From New会员金额设置 where 会员编号 =:Param1 and 类型=''1''');
    ADOQuery2.Parameters.ParamByName('Param1').Value := ADOQuery1.FieldByName('会员编号').AsString;
    ADOQuery2.Open;
  end;
end;

procedure TLoseMoneyForm.Edit1Exit(Sender: TObject);
begin
  inherited;
  if not ADOQuery1.Active then Exit;
  if ADOQuery1.RecordCount <1 then
    exit;
end;

procedure TLoseMoneyForm.FormShow(Sender: TObject);
begin
  inherited;
  btnExecute1.Caption:= '取  款';
  btnExecute2.Caption:= '退  出';
end;

procedure TLoseMoneyForm.btnExecute1Click(Sender: TObject);
begin
  inherited;
  if (Trim(Edit3.Text)= '') or (StrToFloat(Trim(Edit3.Text)) <=0) then
  begin
    ShowMsg('取款输入值非法！');
    Exit;
  end;

  if Trim(Edit2.Text)<> FloatToStr(ADOQuery1.FieldByName('口令').AsFloat) then
  begin
    ShowMsg('口令错误！');
    Exit;
  end;
  try
  if ADOQuery1.FieldByName('余额').AsFloat >= StrToFloat(Edit3.Text) then
  begin
  ADOQuery1.Edit;
  ADOQuery1.FieldByName('余额').AsFloat:= ADOQuery1.FieldByName('余额').AsFloat - StrToFloat(Edit3.Text);
  ADOQuery1.FieldByName('总存款金额').AsFloat:= ADOQuery1.FieldByName('总存款金额').AsFloat - StrToFloat(Edit3.Text);
  ADOQuery1.Post;
  ADOQuery2.Append;
  ADOQuery2.FieldByName('会员编号').AsString := ADOQuery1.FieldByName('会员编号').AsString;
  ADOQuery2.FieldByName('会员名称').AsString := ADOQuery1.FieldByName('会员名称').AsString;
  ADOQuery2.FieldByName('日期').AsDateTime := Now;
  ADOQuery2.FieldByName('金额').AsFloat := StrToFloat(Edit3.Text);
  ADOQuery2.FieldByName('操作员编号').AsString :=LoginEmployeCode;
  ADOQuery2.FieldByName('操作员').AsString :=LoginEmployeName;
  ADOQuery2.FieldByName('类型').AsString :='1';
  ADOQuery2.Post;
  ShowMsg('取款成功！');
  Edit1.Text :='';
  Edit2.Text :='';
  Edit3.Text :='';
  end
  else
  begin
    ShowMsg('余额不足!');
    Exit;
  end;
  except
     ShowMsg('取款失败！');
  end;
end;

procedure TLoseMoneyForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //只能输入数字和小数点
  if (Key in ['0'..'9']=false) and (Key<> '.') and (key<>#8) then
    key:=#0
end;

procedure TLoseMoneyForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ShowMoneyRecordForm(ADOQuery1, 1);
end;

end.
