unit GoodsTypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TGoodsTypeEditForm = class(TBaseInfoEditForm)
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

procedure ShowGoodsTypeEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, GoodsType;

{$R *.dfm}

procedure ShowGoodsTypeEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  GoodsTypeEditForm: TGoodsTypeEditForm;
begin
  GoodsTypeEditForm:= TGoodsTypeEditForm.Create(Application);
  GoodsTypeEditForm.FADOQuery:= ADOQryTmp;
  if sState= sEdit then
    GoodsTypeEditForm.FADOQuery.Edit;
  if sState = sInsert then
    GoodsTypeEditForm.FADOQuery.Insert;
  GoodsTypeEditForm.ShowModal; 
end;

procedure TGoodsTypeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TGoodsTypeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

end.
