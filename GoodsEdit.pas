unit GoodsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, ComCtrls, DBCtrls, DBCtrlsEh,
  Mask, ADODB;

type
  TGoodsEditForm = class(TBaseInfoEditForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
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
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBEditEh14: TDBEditEh;
    DBEditEh15: TDBEditEh;
    DBEditEh16: TDBEditEh;
    DBEditEh17: TDBEditEh;
    DBEditEh18: TDBEditEh;
    DBEditEh19: TDBEditEh;
    DBEditEh20: TDBEditEh;
    DBEditEh21: TDBEditEh;
    DBEditEh22: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DBEditEh4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBEditEh8EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowGoodsEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Goods, GoodsType, CalculateUnit;

{$R *.dfm}

procedure ShowGoodsEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  GoodsEditForm: TGoodsEditForm;
begin
  GoodsEditForm:= TGoodsEditForm.Create(Application);
  GoodsEditForm.FADOQuery:= ADOQryTmp;
  if sState= sEdit then
    GoodsEditForm.FADOQuery.Edit;
  if sState = sInsert then
    GoodsEditForm.FADOQuery.Insert;
  GoodsEditForm.ShowModal; 
end;

procedure TGoodsEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TGoodsEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TGoodsEditForm.DBEditEh4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  s: string;
begin
  inherited;
  S:= ShowGoodsTypeForm(1, DBEditEh4.Text);
  if S <> '' then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('类别编号').AsString := S;
  end;
end;

procedure TGoodsEditForm.DBEditEh8EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  s: string;
begin
  inherited;
  S:= ShowCalculateUnitForm(1, DBEditEh4.Text);
  if S <> '' then
  begin
    FADOQuery.Edit;
    FADOQuery.FieldByName('单位编号').AsString := S;
  end;
end;

end.
