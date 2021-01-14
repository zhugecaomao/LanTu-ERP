unit ShopInfoEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TShopInfoEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowShopInfoEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, ShopInfo;

{$R *.dfm}

procedure ShowShopInfoEditForm(ADOQuery: TADOQuery; State1: string);
var
  ShopInfoEditForm: TShopInfoEditForm;
begin
  ShopInfoEditForm:= TShopInfoEditForm.Create(Nil);
  ShopInfoEditForm.FADOQuery:= ADOQuery;

  if State1 = 'dsEdit' then
    ShopInfoEditForm.FADOQuery.Edit;

  if State1 = 'dsInsert' then
    ShopInfoEditForm.FADOQuery.Insert;

  ShopInfoEditForm.ShowModal; 
end;

procedure TShopInfoEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TShopInfoEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
