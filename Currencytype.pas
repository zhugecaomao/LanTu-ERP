unit Currencytype;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGridEh;

type
  TCurrencytypeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TFloatField;
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

function ShowCurrencytypeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, CurrencytypeEdit;

{$R *.dfm}

{ TCurrencytypeForm }

function ShowCurrencytypeForm(lSelect1: integer; sFilter1: string=''): string;
var
  CurrencytypeForm: TCurrencytypeForm;
begin
  CurrencytypeForm:= TCurrencytypeForm.Create(Application);
  with CurrencytypeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TCurrencytypeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TCurrencytypeForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From Õ‚±“÷÷¿‡ Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TCurrencytypeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TCurrencytypeForm.ToolShow;
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

procedure TCurrencytypeForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TCurrencytypeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TCurrencytypeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowCurrencytypeEditForm(QBaseInfo, sInsert);
end;

procedure TCurrencytypeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowCurrencytypeEditForm(QBaseInfo, sEdit);
end;

end.
