unit Billmode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGridEh;

type
  TBillmodeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TMemoField;
    procedure QBaseInfoIDValidate(Sender: TField);
    procedure tbSelClick(Sender: TObject);
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

function ShowBillmodeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, BillmodeEdit;

{$R *.dfm}

{ TBillmodeForm }

function ShowBillmodeForm(lSelect1: integer; sFilter1: string=''): string;
var
  BillmodeForm: TBillmodeForm;
begin
  BillmodeForm:= TBillmodeForm.Create(Application);
  with BillmodeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TBillmodeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TBillmodeForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 收付款方式 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TBillmodeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TBillmodeForm.ToolShow;
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

procedure TBillmodeForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TBillmodeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TBillmodeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowBillmodeEditForm(QBaseInfo, sInsert);
end;

procedure TBillmodeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowBillmodeEditForm(QBaseInfo, sEdit);
end;

end.
