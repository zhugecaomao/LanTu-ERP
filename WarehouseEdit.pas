unit WarehouseEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TWarehouseEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowWarehouseEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Warehouse;

{$R *.dfm}

procedure ShowWarehouseEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  WarehouseEditForm: TWarehouseEditForm;
begin
  WarehouseEditForm:= TWarehouseEditForm.Create(Application);
  WarehouseEditForm.FADOQuery:= ADOQryTmp;
  if sState= sEdit then
    WarehouseEditForm.FADOQuery.Edit;
  if sState = sInsert then
    WarehouseEditForm.FADOQuery.Insert;
  WarehouseEditForm.ShowModal; 
end;

procedure TWarehouseEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TWarehouseEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
