unit Cashbank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGridEh;

type
  TCashbankForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
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

function ShowCashbankForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, CashbankEdit;

{$R *.dfm}

{ TCashbankForm }

function ShowCashbankForm(lSelect1: integer; sFilter1: string=''): string;
var
  CashbankForm: TCashbankForm;
begin
  CashbankForm:= TCashbankForm.Create(Application);
  with CashbankForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TCashbankForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TCashbankForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 现金银行 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TCashbankForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TCashbankForm.ToolShow;
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

procedure TCashbankForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TCashbankForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TCashbankForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowCashbankEditForm(QBaseInfo, sInsert);
end;

procedure TCashbankForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowCashbankEditForm(QBaseInfo, sEdit);
end;

end.
