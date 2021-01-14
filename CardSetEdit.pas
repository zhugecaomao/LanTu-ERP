unit CardSetEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, ADODB, Mask, DBCtrls, DBCtrlsEh;

type
  TCardSetEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    GroupBox1: TGroupBox;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBCheckBoxEh2: TDBCheckBoxEh;
    DBCheckBoxEh3: TDBCheckBoxEh;
    DBCheckBoxEh4: TDBCheckBoxEh;
    DBCheckBoxEh5: TDBCheckBoxEh;
    DBCheckBoxEh6: TDBCheckBoxEh;
    DBCheckBoxEh7: TDBCheckBoxEh;
    DBCheckBoxEh8: TDBCheckBoxEh;
    btnSelect: TBitBtn;
    btnClear: TBitBtn;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    procedure SelectDBCheck(b: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowCardSetEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, CardSet;

{$R *.dfm}

procedure ShowCardSetEditForm(ADOQuery: TADOQuery; State1: string);
var
  CardSetEditForm: TCardSetEditForm;
begin
{  CardSetEditForm:= TCardSetEditForm.Create(Nil);
  CardSetEditForm.ADOQuery1:= ADOQuery;

    if State1 = 'dsEdit' then
        CardSetEditForm.ADOQuery1.Edit;

    if State1 = 'dsInsert' then
      CardSetEditForm.ADOQuery1.Append;

  CardSetEditForm.ShowModal; }
end;

procedure TCardSetEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TCardSetEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TCardSetEditForm.SelectDBCheck(b: Boolean);
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin  { ±éÀúForm×é¼þ }
      if Components[i] is TDBCheckBoxEh then
      begin
        (Components[i] as TDBCheckBoxEh).Checked:= b;
      end;
  end;
end;

procedure TCardSetEditForm.btnSelectClick(Sender: TObject);
begin
  inherited;
  SelectDBCheck(True);
end;

procedure TCardSetEditForm.btnClearClick(Sender: TObject);
begin
  inherited;
  SelectDBCheck(False);
end;

end.
