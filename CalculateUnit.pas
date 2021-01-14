unit CalculateUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TCalculateUnitForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TMemoField;
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure tbSelClick(Sender: TObject);
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

function ShowCalculateUnitForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, CalculateUnitEdit;

{$R *.dfm}

function ShowCalculateUnitForm(lSelect1: integer; sFilter1: string=''): string;
var
  CalculateUnitForm: TCalculateUnitForm;
begin
  CalculateUnitForm:= TCalculateUnitForm.Create(Application);
  with CalculateUnitForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TCalculateUnitForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('单位编号',sFilter,[]);
end;

procedure TCalculateUnitForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 计量单位 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TCalculateUnitForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TCalculateUnitForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TCalculateUnitForm.ToolShow;
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

procedure TCalculateUnitForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('单位编号').AsString;
    Close;
  end;
end;

procedure TCalculateUnitForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('单位编号').AsString:= SetID('jd','单位编号', '计量单位', 3,6);
end;

procedure TCalculateUnitForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowCalculateUnitEditForm(QBaseInfo, sInsert);
end;

procedure TCalculateUnitForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowCalculateUnitEditForm(QBaseInfo, sEdit);
end;

end.
