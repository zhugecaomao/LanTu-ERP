unit Employee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TEmployeeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TIntegerField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TIntegerField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TDateTimeField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner7: TIntegerField;
    QBaseInfoDSDesigner8: TIntegerField;
    QBaseInfoDSDesigner9: TWideStringField;
    QBaseInfoDSDesigner10: TWideStringField;
    QBaseInfoDSDesigner11: TMemoField;
    QBaseInfoDSDesigner12: TBCDField;
    QBaseInfoDSDesigner13: TWideStringField;
    QBaseInfoDSDesigner14: TDateTimeField;
    QBaseInfoDSDesigner15: TWideStringField;
    QBaseInfoDSDesigner16: TWideStringField;
    QBaseInfoDSDesigner17: TWideStringField;
    QBaseInfoDSDesigner18: TWideStringField;
    QBaseInfoDSDesigner19: TWideStringField;
    QBaseInfoDSDesigner20: TWideStringField;
    QBaseInfoDSDesigner21: TWideStringField;
    QBaseInfoDSDesigner22: TBooleanField;
    ADOQryEmployeetype: TADOQuery;
    dsEmployeetype: TDataSource;
    QBaseInfoField: TStringField;
    ADOQryDepart: TADOQuery;
    dsDepart: TDataSource;
    QBaseInfoField2: TStringField;
    ADOQryDegree: TADOQuery;
    dsDegree: TDataSource;
    QBaseInfoField3: TStringField;
    procedure tbSelClick(Sender: TObject);
    procedure QBaseInfoDSDesigner2Validate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
  private
    sFilter: string;
    lSelect: Integer;
    procedure ToolShow;
    procedure FilterData;
    procedure LoadData;
    procedure MainShow;
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowEmployeeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, EmployeeEdit;

{$R *.dfm}

{ TEmployeeForm }

function ShowEmployeeForm(lSelect1: integer; sFilter1: string=''): string;
var
  EmployeeForm: TEmployeeForm;
begin
  EmployeeForm:= TEmployeeForm.Create(Application);
  with EmployeeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TEmployeeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('员工编号',sFilter,[]);
end;

procedure TEmployeeForm.LoadData;
var
  sSql, sSql1, sSql2, sSql3: string;
begin
  sSql1:= 'Select ID,类别名称 From 员工类别 Order by ID';
  OpenDataSet(ADOQryEmployeetype, sSql1);

  sSql2:= 'Select ID,部门名称 From 部门资料 Order by ID';
  OpenDataSet(ADOQryDepart, sSql2);

  sSql3:= 'Select ID,学历名称 From 学历资料 Order by ID';
  OpenDataSet(ADOQryDegree, sSql3);

  sSql:= 'Select * From 员工资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TEmployeeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TEmployeeForm.ToolShow;
begin
  if lSelect= 0 then
  begin
    tbSel.Visible:= False;
    tbDel.Visible := True;
  end
  else
  begin
    tbSel.Visible:= True;
    tbDel.Visible := False;
  end;
end;

procedure TEmployeeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('员工编号').AsString;
    Close;
  end;
end;

procedure TEmployeeForm.QBaseInfoDSDesigner2Validate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TEmployeeForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('员工编号').AsString:= SetID('yg','员工编号', '员工资料', 3,6);
end;

procedure TEmployeeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowEmployeeEditForm(QBaseInfo, sInsert);
end;

procedure TEmployeeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowEmployeeEditForm(QBaseInfo, sEdit);
end;

end.
