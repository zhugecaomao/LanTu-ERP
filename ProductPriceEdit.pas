unit ProductPriceEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB,
  DBCtrlsEh, DBLookupEh;

type
  TProductPriceEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProductPriceEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses ProductPrice;

{$R *.dfm}

procedure ShowProductPriceEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProductPriceEditForm: TProductPriceEditForm;
begin
{  ProductPriceEditForm:= TProductPriceEditForm.Create(Nil);
  ProductPriceEditForm.ADOQuery1:= ADOQuery;

    if State1 = 'dsEdit' then
      if not ProductPriceEditForm.ADOQuery1.IsEmpty then
        ProductPriceEditForm.ADOQuery1.Edit;

    if State1 = 'dsInsert' then
      ProductPriceEditForm.ADOQuery1.Append;
  ProductPriceEditForm.ShowModal;}
end;

procedure TProductPriceEditForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

end.
