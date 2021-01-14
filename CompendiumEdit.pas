unit CompendiumEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TCompendiumEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    DBEditEh1: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowCompendiumEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Compendium;

{$R *.dfm}

procedure ShowCompendiumEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  CompendiumEditForm: TCompendiumEditForm;
begin
  CompendiumEditForm:= TCompendiumEditForm.Create(Application);
  with CompendiumEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TCompendiumEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name], [DBEditEh1.Name])
    then Exit;
  inherited;

end;

procedure TCompendiumEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name], [DBEditEh1.Name])
    then Exit;
  inherited;

end;

end.
