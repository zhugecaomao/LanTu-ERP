unit Employeetype;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TEmployeetypeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TMemoField;
    procedure tbSelClick(Sender: TObject);
    procedure QBaseInfoIDValidate(Sender: TField);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
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

function ShowEmployeetypeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, EmployeetypeEdit;

{$R *.dfm}

{ TEmployeetypeForm }
function ShowEmployeetypeForm(lSelect1: integer; sFilter1: string=''): string;
var
  EmployeetypeForm: TEmployeetypeForm;
begin
  EmployeetypeForm:= TEmployeetypeForm.Create(Application);
  with EmployeetypeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TEmployeetypeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TEmployeetypeForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 员工类别 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TEmployeetypeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TEmployeetypeForm.ToolShow;
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

procedure TEmployeetypeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TEmployeetypeForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TEmployeetypeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowEmployeetypeEditForm(QBaseInfo, sInsert);
end;

procedure TEmployeetypeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowEmployeetypeEditForm(QBaseInfo, sEdit);
end;

end.
