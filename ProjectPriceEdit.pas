unit ProjectPriceEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, DBCtrlsEh, DBLookupEh, Mask,
  DBCtrls, DB, ADODB;

type
  TProjectPriceEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProjectPriceEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ProjectPrice;

{$R *.dfm}

procedure ShowProjectPriceEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProjectPriceEditForm: TProjectPriceEditForm;
begin
  ProjectPriceEditForm:= TProjectPriceEditForm.Create(Nil);
  ProjectPriceEditForm.FADOQuery:= ADOQuery;

  if State1 = 'dsEdit' then
    ProjectPriceEditForm.FADOQuery.Edit;

  if State1 = 'dsInsert' then
    ProjectPriceEditForm.FADOQuery.Append;

  ProjectPriceEditForm.ShowModal;
end;

procedure TProjectPriceEditForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

procedure TProjectPriceEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label3.Name], [DBLookupComboboxEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
