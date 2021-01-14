unit Find;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, StdCtrls, Buttons, DBGridEh;

type
  TFindForm = class(TBaseForm)
    btnFind: TBitBtn;
    btnNext: TBitBtn;
    btnCancel: TBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    DBGridEh1: TDBGridEh;
    procedure ShowComboBoxData;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowPublicFindForm(DBGridEh: TDBGridEh);

implementation

{$R *.dfm}

procedure ShowPublicFindForm(DBGridEh: TDBGridEh);
var
  FindForm: TFindForm;
begin
  FindForm:= TFindForm.Create(Nil);
  FindForm.DBGridEh1 := DBGridEh;
  FindForm.ShowComboBoxData;
  FindForm.ShowModal;
end;

procedure TFindForm.FormCreate(Sender: TObject);
begin
  inherited;
  bOperateLog := False;
end;

procedure TFindForm.ShowComboBoxData;
var
  i: integer;
  s1, s2 :string;
begin
  for i:=0 to DBGridEh1.Columns.Count-1 do
  begin
    s1:= DBGridEh1.Columns[i].Title.Caption;
    s2:= DBGridEh1.Columns[i].FieldName;
    ComboBox1.Items.Add(s1);
    ComboBox2.Items.Add(s2);
    ComboBox1.ItemIndex:= 0;
    ComboBox2.ItemIndex:= 0;  
  end;
end;

end.
