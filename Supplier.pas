unit Supplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TSupplierForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner7: TWideStringField;
    QBaseInfoDSDesigner8: TWideStringField;
    QBaseInfoDSDesigner9: TWideStringField;
    QBaseInfoDSDesigner10: TWideStringField;
    QBaseInfoDSDesigner11: TBCDField;
    QBaseInfoDSDesigner12: TMemoField;
    QBaseInfoDSDesigner13: TWideStringField;
    QBaseInfoDSDesigner14: TWideStringField;
    QBaseInfoDSDesigner15: TWideStringField;
    QBaseInfoDSDesigner16: TWideStringField;
    QBaseInfoDSDesigner17: TWideStringField;
    QBaseInfoDSDesigner18: TWideStringField;
    QBaseInfoDSDesigner19: TWideStringField;
    QAreaInfo: TADOQuery;
    dsAreaInfo: TDataSource;
    QBaseInfoField: TStringField;
    procedure QBaseInfoDSDesigner2Validate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure tbSelClick(Sender: TObject);
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

function ShowSupplierForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, SupplierEdit;

{$R *.dfm}

function ShowSupplierForm(lSelect1: integer; sFilter1: string=''): string;
var
  SupplierForm: TSupplierForm;
begin
  SupplierForm:= TSupplierForm.Create(Application);
  with SupplierForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TSupplierForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('供应商编号',sFilter,[]);
end;

procedure TSupplierForm.LoadData;
var
  sSql, sSql1: string;
begin
  sSql1:= 'Select * From 地区资料 Order by ID';
  OpenDataSet(QAreaInfo, sSql1);
  sSql:= 'Select * From 供应商资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TSupplierForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TSupplierForm.QBaseInfoDSDesigner2Validate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TSupplierForm.ToolShow;
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

procedure TSupplierForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('供应商编号').AsString:= SetID('gy','供应商编号', '供应商资料', 3,6);
end;

procedure TSupplierForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowSupplierEditForm(QBaseInfo, sInsert);
end;

procedure TSupplierForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowSupplierEditForm(QBaseInfo, sEdit);
end;

procedure TSupplierForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('供应商编号').AsString;
    Close;
  end;
end;

end.
