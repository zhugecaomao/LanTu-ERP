unit ProductPackageEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, ADODB, DB,
  DBCtrlsEh, DBLookupEh;

type
  TProductPackageEditForm = class(TBaseInfoEditForm)
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBEditEh11: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBEditEh14: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProductPackageEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ProductPackage, ProductEdit, BaseProductSelect;

{$R *.dfm}

procedure ShowProductPackageEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProductPackageEditForm: TProductPackageEditForm;
begin
{  ProductPackageEditForm:= TProductPackageEditForm.Create(Nil);
  ProductPackageEditForm.ADOQuery1:= ADOQuery;

    if State1 = 'dsEdit' then
      if not ProductPackageEditForm.ADOQuery1.IsEmpty then
        ProductPackageEditForm.ADOQuery1.Edit;

    if State1 = 'dsInsert' then
      ProductPackageEditForm.ADOQuery1.Append;
  ProductPackageEditForm.ShowModal;}
end;

procedure TProductPackageEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label14.Name], [DBEditEh14.Name])
    then Exit;
  inherited;

end;

procedure TProductPackageEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label14.Name], [DBEditEh14.Name])
    then Exit;
  inherited;

end;

procedure TProductPackageEditForm.DBEditEh1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  inherited;
//  ShowBaseProductSelectForm(ADOQuery1);
end;

end.
