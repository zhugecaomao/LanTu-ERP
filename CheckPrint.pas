unit CheckPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, StdCtrls, CheckLst, DBGridEh, Buttons;

type
  TCheckPrintForm = class(TBaseNormalForm)
    CheckListBox1: TCheckListBox;
    btnSel: TBitBtn;
    btnCle: TBitBtn;
    btnPri: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure btnSelClick(Sender: TObject);
    procedure btnCleClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    DBGridEh1: TDBGridEh;
    procedure ShowDBGridEhData;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowCheckPrintForm(DBGridEh: TDBGridEh);

implementation

{$R *.dfm}

procedure ShowCheckPrintForm(DBGridEh: TDBGridEh);
var
  CheckPrintForm: TCheckPrintForm;
begin
  CheckPrintForm := TCheckPrintForm.Create(Nil);
  CheckPrintForm.DBGridEh1:= DBGridEh;
  CheckPrintForm.ShowDBGridEhData;
  CheckPrintForm.ShowModal;
end;

{ TCheckPrintForm }

procedure TCheckPrintForm.ShowDBGridEhData;
var
  i: integer;
  s: string;
begin
  for i:=0 to DBGridEh1.Columns.Count-1 do
  begin
    s:= DBGridEh1.Columns[i].Title.Caption;
    CheckListBox1.Items.Add(s);
    CheckListBox1.Checked[i]:= True;
  end;
end;

procedure TCheckPrintForm.btnSelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i:=0 to CheckListBox1.items.count-1 do
    CheckListBox1.checked[i]:= True;
end;

procedure TCheckPrintForm.btnCleClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for I:=0 to CheckListBox1.items.count-1 do
    CheckListBox1.checked[i]:= False;//true 全选 false 全清除
end;

procedure TCheckPrintForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if CheckListBox1.ItemIndex + 1 < CheckListBox1.Count then
    CheckListBox1.Selected[CheckListBox1.ItemIndex + 1] := True;
end;

procedure TCheckPrintForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if CheckListBox1.ItemIndex - 1 >= 0 then
    CheckListBox1.Selected[CheckListBox1.ItemIndex - 1] := True;
end;

end.
