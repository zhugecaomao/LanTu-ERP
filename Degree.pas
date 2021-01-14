unit Degree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TDegreeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    procedure tbSelClick(Sender: TObject);
    procedure QBaseInfoIDValidate(Sender: TField);
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

function ShowDegreeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, DegreeEdit;

{$R *.dfm}

function ShowDegreeForm(lSelect1: integer; sFilter1: string=''): string;
var
  DegreeForm: TDegreeForm;
begin
  DegreeForm:= TDegreeForm.Create(Application);
  with DegreeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TDegreeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TDegreeForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TDegreeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TDegreeForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 学历资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TDegreeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TDegreeForm.ToolShow;
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

procedure TDegreeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowDegreeEditForm(QBaseInfo, sInsert);
end;

procedure TDegreeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowDegreeEditForm(QBaseInfo, sEdit);
end;

end.
