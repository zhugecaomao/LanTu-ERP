unit Customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TCustomerForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner7: TWideStringField;
    QBaseInfoDSDesigner8: TWideStringField;
    QBaseInfoDSDesigner9: TWideStringField;
    QBaseInfoDSDesigner10: TWideStringField;
    QBaseInfoDSDesigner11: TWideStringField;
    QBaseInfoDSDesigner12: TBCDField;
    QBaseInfoDSDesigner13: TWideStringField;
    QBaseInfoDSDesigner14: TWideStringField;
    QBaseInfoDSDesigner15: TWideStringField;
    QBaseInfoDSDesigner16: TWideStringField;
    QBaseInfoDSDesigner17: TWideStringField;
    QBaseInfoDSDesigner18: TWideStringField;
    QBaseInfoDSDesigner19: TWideStringField;
    QBaseInfoDSDesigner20: TWideStringField;
    QBaseInfoDSDesigner4: TWideStringField;
    QAreaInfo: TADOQuery;
    dsAreaInfo: TDataSource;
    QBaseInfoField: TStringField;
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure tbSelClick(Sender: TObject);
  private
    { Private declarations }
    sFilter: string;
    lSelect: Integer;
    procedure ToolShow;
    procedure FilterData;
    procedure LoadData;
    procedure MainShow;
  public
    { Public declarations }
  end;

function ShowCustomerForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, CustomerEdit;

{$R *.dfm}

function ShowCustomerForm(lSelect1: integer; sFilter1: string=''): string;
var
  CustomerForm: TCustomerForm;
begin
  CustomerForm:= TCustomerForm.Create(Application);
  with CustomerForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TCustomerForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TCustomerForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('客户编号').AsString:= SetID('dq','客户编号', '客户资料', 3,6);
end;

procedure TCustomerForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowCustomerEditForm(QBaseInfo, sInsert);
end;

procedure TCustomerForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowCustomerEditForm(QBaseInfo, sEdit);
end;

procedure TCustomerForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible = True then
  begin
    sReturn := QBaseInfo.FieldByName('客户编号').AsString;
    Close;
  end;
end;

procedure TCustomerForm.LoadData;
var
  sSql, sSql1: string;
begin
  sSql1:= 'Select ID,地区编号,地区名称 From 地区资料 Order by ID';
  OpenDataSet(QAreaInfo, sSql1);
  
  sSql:= 'Select * From 客户资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TCustomerForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('客户编号',sFilter,[]);
end;

procedure TCustomerForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TCustomerForm.ToolShow;
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

end.
