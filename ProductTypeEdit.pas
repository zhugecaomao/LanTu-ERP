unit ProductTypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ADODB, Mask, DBCtrls, DBGridEh, BaseInfoEdit,
  DBCtrlsEh;

type
  TProductTypeEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
   { Private declarations }
   protected

  public

    { Public declarations }
  end;

procedure ShowProductTypeEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ProductType;

{$R *.dfm}

procedure ShowProductTypeEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProductTypeEditForm: TProductTypeEditForm;
begin
{  ProductTypeEditForm:= TProductTypeEditForm.Create(Nil);
  ProductTypeEditForm.ADOQuery1:= ADOQuery;

    if State1 = 'dsEdit' then
      if not ProductTypeEditForm.ADOQuery1.IsEmpty then
        ProductTypeEditForm.ADOQuery1.Edit;

    if State1 = 'dsInsert' then
      ProductTypeEditForm.ADOQuery1.Append;
  ProductTypeEditForm.ShowModal;}

end;

procedure TProductTypeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited

end;

procedure TProductTypeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
