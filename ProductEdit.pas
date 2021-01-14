unit ProductEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, ADODB, DB,
  DBCtrlsEh, DBLookupEh;

type
  TProductEditForm = class(TBaseInfoEditForm)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    QBaseInfo: TADOQuery;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner3: TStringField;
    dsBaseInfo: TDataSource;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEditEh3: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBEditEh11: TDBEditEh;
    Label12: TLabel;
    DBEditEh4: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    procedure FormShow(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProductEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, Product;

{$R *.dfm}

procedure ShowProductEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProductEditForm: TProductEditForm;
begin
{  ProductEditForm:= TProductEditForm.Create(Nil);
  ProductEditForm.ADOQuery1:= ADOQuery;

    if State1 = 'dsEdit' then
      if not ProductEditForm.ADOQuery1.IsEmpty then
        ProductEditForm.ADOQuery1.Edit;

    if State1 = 'dsInsert' then
      ProductEditForm.ADOQuery1.Append;
  ProductEditForm.ShowModal;}
end;


procedure TProductEditForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

procedure TProductEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TProductEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
