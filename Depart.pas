unit Depart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TDepartForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure QBaseInfoIDValidate(Sender: TField);
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

function ShowDepartForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, DepartEdit;

{$R *.dfm}

function ShowDepartForm(lSelect1: integer; sFilter1: string=''): string;
var
  DepartForm: TDepartForm;
begin
  DepartForm:= TDepartForm.Create(Application);
  with DepartForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TDepartForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowDepartEditForm(QBaseInfo, sInsert);
end;

procedure TDepartForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowDepartEditForm(QBaseInfo, sEdit);
end;

procedure TDepartForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 部门资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TDepartForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TDepartForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TDepartForm.ToolShow;
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

procedure TDepartForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TDepartForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

end.
