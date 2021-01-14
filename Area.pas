unit Area;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, PrintForm, Menus, DB, ADODB, Grids, DBGridEh,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin;
type
  TAreaForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
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

function ShowAreaForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, AreaEdit;

{$R *.dfm}

function ShowAreaForm(lSelect1: integer; sFilter1: string=''): string;
var
  AreaForm: TAreaForm;
begin
  AreaForm:= TAreaForm.Create(Application);
  with AreaForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TAreaForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowAreaEditForm(QBaseInfo, sInsert);
end;

procedure TAreaForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowAreaEditForm(QBaseInfo, sEdit);
end;

procedure TAreaForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TAreaForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('地区编号').AsString:= SetID('dq','地区编号', '地区资料', 3,6);
end;

procedure TAreaForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('地区编号').AsString;
    Close;
  end;
end;

procedure TAreaForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('地区编号',sFilter,[]);
end;

procedure TAreaForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 地区资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TAreaForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TAreaForm.ToolShow;
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
