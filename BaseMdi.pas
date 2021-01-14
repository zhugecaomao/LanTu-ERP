unit BaseMdi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Grids, DBGridEh, BaseDBGridEh,
  Base;

type
  TBaseMdiForm = class(TBaseDBGridEhForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure SetDBGridEhTitleAlignment;
    { Private declarations }
  protected
  procedure WMSize(var Message: TWMSize); message WM_SIZE;
  public
    //覆盖Create方法
    constructor Create(AOwner: TComponent);reintroduce;override; //所有MDI子窗体从此基类继承就不会有闪动了
    { Public declarations }
  end;

var
  BaseMdiForm: TBaseMdiForm;

implementation

uses SysPublic, DataM, Main;

{$R *.dfm}

procedure TBaseMdiForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  Self:= Nil;
end;

procedure TBaseMdiForm.SetDBGridEhTitleAlignment;
var
  i, j: integer;
begin
  for i :=0  to ComponentCount-1 do
  begin
    if Components[i] is TDBGridEh then
    begin
      for j :=0  to  (Components[i] as TDBGridEh).Columns.Count-1 do
      begin
        (Components[i] as TDBGridEh).Columns[j].Title.Alignment:= taCenter;
//        (Components[i] as TDBGridEh).Columns[j].Title.Font.Style := [fsBold];
      end;

    end;

  end;

end;

procedure TBaseMdiForm.FormShow(Sender: TObject);
begin
  inherited;

  ///  SetDBGridEhTitleAlignment;
end;

procedure TBaseMdiForm.WMSize(var Message: TWMSize);
begin
  inherited;
  if Message.SizeType = SIZEFULLSCREEN then
  begin
    if not SElf.Active then
    Self.WindowState := wsNormal;
  end;
end;

constructor TBaseMdiForm.Create(AOwner: TComponent);
begin
  //MDIMainForm为 [MDI主窗体] ,如果不想引用,可以用全局变量保存
   LockWindowUpdate(MainForm.Handle);  //锁定MDI主窗口,禁止刷新
   try
     inherited;  //子窗体的动画会在inherited时发生
   finally
     LockWindowUpdate(0);  //解锁
   end;

end;

end.
