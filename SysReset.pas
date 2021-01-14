unit SysReset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, StdCtrls, Buttons;

type
  TSysResetForm = class(TBaseForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    bbOk: TBitBtn;
    bbNo: TBitBtn;
    procedure bbNoClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    bReturn: Boolean;
    procedure LoadGrid;
    procedure DeleteData;
    procedure MainShow;
    procedure LoadData;
  public
    { Public declarations }
  end;

function SysResetFormShow: Boolean;

implementation

uses SysPublic, DataM;

{$R *.dfm}

function SysResetFormShow: Boolean;
var
  SysResetForm: TSysResetForm;
begin
  SysResetForm := TSysResetForm.Create(Application);
  with SysResetForm do
  begin
    MainShow;
    Result := bReturn;
    Free;
  end;
end;


procedure TSysResetForm.DeleteData;
var
  sSql: string;
begin
  sSql := 'DELETE FROM 部门资料';
  if CheckBox1.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 员工资料';
  if CheckBox2.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 会员卡级';
  if CheckBox3.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 项目类别';
  if CheckBox4.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 服务项目';
  if CheckBox5.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 产品类别';
  if CheckBox6.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 产品资料';
  if CheckBox7.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 会员资料';
  if CheckBox8.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 项目产品单主表';
  if CheckBox9.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 预约单';
  if CheckBox10.Checked = True then
    ExecSql(sSql);
  sSql := 'DELETE FROM 开单主表';
  if CheckBox11.Checked = True then
    ExecSql(sSql);
end;

procedure TSysResetForm.LoadData;
begin

end;

procedure TSysResetForm.LoadGrid;
begin
  bReturn := False;
end;

procedure TSysResetForm.MainShow;
begin
  LoadGrid;
  LoadData;
  ShowModal;
end;

procedure TSysResetForm.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TSysResetForm.bbOkClick(Sender: TObject);
begin
  inherited;
  if MsgBox('数据删除后不可恢复，确认要删除？', MB_OKCancel) = IDOK then
  begin
    try
      DeleteData;
    except
      ShowMessage('系统重建失败请退出后重试！');
      exit;
    end;
    ShowMsg('系统重建成功！');
    bReturn := True;
    Close;
  end;
end;

end.
