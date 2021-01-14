unit InouttypeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, DBCtrlsEh, Mask, ADODB;

type
  TInouttypeEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowInouttypeEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Inouttype;

{$R *.dfm}

procedure ShowInouttypeEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  InouttypeEditForm: TInouttypeEditForm;
begin
  InouttypeEditForm:= TInouttypeEditForm.Create(Application);
  with InouttypeEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TInouttypeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label3.Name], [DBEditEh1.Name, DBComboBoxEh1.Name])
    then Exit;
  inherited;

end;

procedure TInouttypeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label3.Name], [DBEditEh1.Name, DBComboBoxEh1.Name])
    then Exit;
  inherited;

end;

end.
