unit CashbankEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TCashbankEditForm = class(TBaseInfoEditForm)
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
  public
    { Public declarations }
  end;

procedure ShowCashbankEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Cashbank;

{$R *.dfm}

procedure ShowCashbankEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  CashbankEditForm: TCashbankEditForm;
begin
  CashbankEditForm:= TCashbankEditForm.Create(Application);
  with CashbankEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TCashbankEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TCashbankEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
