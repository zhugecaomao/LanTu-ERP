unit AreaEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, DBCtrlsEh, ADODB,
  Grids, DBGridEh;

type
  TAreaEditForm = class(TBaseInfoEditForm)
    Label2: TLabel;
    DBEditEh2: TDBEditEh;
    Label11: TLabel;
    DBEditEh1: TDBEditEh;
    Label1: TLabel;
    DBEditEh3: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowAreaEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Area;

{$R *.dfm}

procedure ShowAreaEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  AreaEditForm: TAreaEditForm;
begin
  AreaEditForm:= TAreaEditForm.Create(Application);
  with AreaEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TAreaEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;
end;

procedure TAreaEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;
end;

end.
