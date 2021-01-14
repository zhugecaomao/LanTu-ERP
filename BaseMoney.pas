unit BaseMoney;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCard, ExtCtrls, Grids, DBGridEh, DB, ADODB, StdCtrls, Buttons,
  BaseMdi;

type
  TBaseMoneyForm = class(TBaseCardForm)
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure Edit1Change(Sender: TObject);
    procedure btnExecute1Click(Sender: TObject);
    procedure btnContentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseMoneyForm: TBaseMoneyForm;

implementation

uses SysPublic, DataM, MemberInfo;

{$R *.dfm}

procedure TBaseMoneyForm.Edit1Change(Sender: TObject);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('Select * From 会员资料 where 卡号 =:Param');
  ADOQuery1.Parameters.ParamByName('Param').Value := Edit1.Text;
  ADOQuery1.Open;
end;

procedure TBaseMoneyForm.btnExecute1Click(Sender: TObject);
begin
  inherited;
  if not ADOQuery1.Active then
  begin
    ShowMsg('请输入卡号!');
    Exit;
  end;
end;

procedure TBaseMoneyForm.btnContentClick(Sender: TObject);
begin
  inherited;
  ShowMemberInfoForm(ADOQuery1);
end;

end.
