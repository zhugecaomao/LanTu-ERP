unit PlanOperation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMoney, DB, ADODB, Grids, DBGridEh, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, DBCtrlsEh, DBLookupEh;

type
  TPlanOperationForm = class(TBaseMoneyForm)
    ADOQuery2ID: TAutoIncField;
    ADOQuery2DSDesigner: TWideStringField;
    ADOQuery2DSDesigner2: TWideStringField;
    ADOQuery2DSDesigner3: TIntegerField;
    ADOQuery2DSDesigner4: TIntegerField;
    ADOQuery2DSDesigner5: TDateTimeField;
    ADOQuery2DSDesigner6: TWideStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    QBaseInfo: TADOQuery;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner10: TStringField;
    dsBaseInfo: TDataSource;
    QBaseInfoID: TAutoIncField;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure ADOQuery2NewRecord(DataSet: TDataSet);
    procedure bbExeClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanOperationForm: TPlanOperationForm;

implementation

uses SysPublic;

{$R *.dfm}

procedure TPlanOperationForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

procedure TPlanOperationForm.ADOQuery2NewRecord(DataSet: TDataSet);
begin
  inherited;
  ADOQuery2.FieldByName('会员编号').AsString := ADOQuery1.FieldByName('会员编号').AsString;
  ADOQuery2.FieldByName('使用日期').AsString := DateTimeToStr(Now);
end;

procedure TPlanOperationForm.bbExeClick(Sender: TObject);
begin
  inherited;
  try
    ADOQuery2.Append;
    ShowMsg('计次操作成功！');
  except
    ADOQuery2.Close;
    ShowMsg('操作失败！');
  end;
end;

procedure TPlanOperationForm.Edit1Exit(Sender: TObject);
begin
  inherited;
  Edit2.Text:= ADOQuery1.FieldByName('会员编号').AsString;
end;

end.
