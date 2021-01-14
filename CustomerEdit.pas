unit CustomerEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, ComCtrls, Mask, DBCtrlsEh, ADODB;

type
  TCustomerEditForm = class(TBaseInfoEditForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
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
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    Label4: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEditEh14: TDBEditEh;
    DBEditEh15: TDBEditEh;
    DBEditEh16: TDBEditEh;
    DBEditEh17: TDBEditEh;
    DBEditEh18: TDBEditEh;
    DBEditEh19: TDBEditEh;
    DBEditEh20: TDBEditEh;
    Label20: TLabel;
    DBEditEh5: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DBEditEh4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowCustomerEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Customer, Area;

{$R *.dfm}

procedure ShowCustomerEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  CustomerEditForm: TCustomerEditForm;
begin
  CustomerEditForm:= TCustomerEditForm.Create(Application);

  CustomerEditForm.FADOQuery:= ADOQryTmp;
  if sState= sEdit then
    CustomerEditForm.FADOQuery.Edit;
  if sState = sInsert then
    CustomerEditForm.FADOQuery.Insert;
  CustomerEditForm.ShowModal;
end;

procedure TCustomerEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TCustomerEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;
end;

procedure TCustomerEditForm.DBEditEh4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  s: string;
begin
  inherited;
  S:= ShowAreaForm(1, DBEditEh4.Text);
  if S <> '' then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('µØÇø±àºÅ').AsString := S;
  end;
end;

end.
