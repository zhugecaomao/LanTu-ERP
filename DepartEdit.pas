unit DepartEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TDepartEditForm = class(TBaseInfoEditForm)
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

procedure ShowDepartEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Depart;

{$R *.dfm}

procedure ShowDepartEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  DepartEditForm: TDepartEditForm;
begin
  DepartEditForm:= TDepartEditForm.Create(Application);
  with DepartEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TDepartEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name], [DBEditEh1.Name])
    then Exit;
  inherited;

end;

procedure TDepartEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name], [DBEditEh1.Name])
    then Exit;
  inherited;

end;

end.
