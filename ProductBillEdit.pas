unit ProductBillEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseBillEdit, PrintForm, StdCtrls, Buttons, Grids, DBGridEh,
  ExtCtrls, ADODB, DBCtrlsEh, Mask, DBCtrls;

type
  TProductBillEditForm = class(TBaseBillEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditEh1: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Edit1: TEdit;
    DBEditEh2: TDBEditEh;
    Label5: TLabel;
    DBEditEh3: TDBEditEh;
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProductBillEditForm(ADOMaster1, ADOList1: TADOQuery; State1: string);

implementation

uses SysPublic, ProductBill, ProductSelect;

{$R *.dfm}

procedure ShowProductBillEditForm(ADOMaster1, ADOList1: TADOQuery; State1: string);
var
  ProductBillEditForm: TProductBillEditForm;
begin
  ProductBillEditForm:= TProductBillEditForm.Create(Nil);
  ProductBillEditForm.ADOMaster:= ADOMaster1;
  ProductBillEditForm.ADOList := ADOList1;
    if State1 = 'dsEdit' then
        ProductBillEditForm.ADOMaster.Edit;

    if State1 = 'dsInsert' then
//      ProductBillEditForm.ADOMaster.Insert;
  IDGen(ProductBillEditForm.ADOMaster, 'XC', 'New产品单主表', '单据编号', '录单日期', 11, 4);

  ProductBillEditForm.ShowModal;
end;

procedure TProductBillEditForm.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  inherited;
  ShowProductSelectForm(ADOList);
end;

procedure TProductBillEditForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  IDGen(ADOMaster, 'XC', 'New产品单主表', '单据编号', '录单日期', 11, 4);
end;

end.
