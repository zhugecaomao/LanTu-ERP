unit BaseExDrag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseEx, Menus, StdCtrls, ExtCtrls, IniFiles, Math,
  DB, ADODB;

type
  TC = class(TControl);
  TBaseExDragForm = class(TBaseExForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Design: TMenuItem;
    Runtime: TMenuItem;
    procedure RuntimeClick(Sender: TObject);
    procedure DesignClick(Sender: TObject);
    procedure ConMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DSMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ConMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DSMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MyMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    zX,zY : Integer;
    Con : TControl;
    aMethods : Array [1..4] of Array of TMethod;
    procedure CreateDragSpot(Loc: String ; Cur :  TCursor);
    procedure RenewDragSpots;
    procedure RenewDragSpot(aLeft, aTop: integer; Loc: String);
    procedure SaveComPos;
    procedure ReadComPos;
  public
    { Public declarations }
  end;

var
  BaseExDragForm: TBaseExDragForm;
  i:integer;
  Ini:TIniFile;

implementation

uses SysPublic;

{$R *.dfm}

procedure TBaseExDragForm.ConMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Con := TControl(Sender);
  setcapturecontrol(TControl(Sender));
  zX := X;
  zY := Y;
  RenewDragSpots;
end;

procedure TBaseExDragForm.ConMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
ds : tcontrol;
begin
  ds := getcapturecontrol;
  if ds = nil then exit;
  ds.Left := ds.Left + X - zX;
  ds.Top := ds.Top + Y - zY;
  RenewDragSpots;
end;

procedure TBaseExDragForm.CreateDragSpot(Loc: String; Cur: TCursor);
begin
  with TPanel.Create(self) do
    begin
      Parent:=Self;
      Width:=4;
      Height:=4;
      Color:=clBlack;
      BevelOuter := bvNone;
      Cursor := Cur;
      onMouseDown := DSMouseDown;
      onMouseMove := DSMouseMove;
      onMouseUp := MyMouseUp;
      Name := 'DragSpot' + Loc;
    end;
end;

procedure TBaseExDragForm.DSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  setcapturecontrol(TControl(Sender));
end;

procedure TBaseExDragForm.DSMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var ds : tcontrol;
begin
  ds := getcapturecontrol;
  if ds = nil then exit;
  if ds.Name[9] = 'T' then
  begin
    con.Height := Max(0,Con.Height + Con.Top - (y + ds.Top));
    con.Top := y + ds.Top;
  end
  else if ds.Name[9] = 'B' then
    con.Height := Max(0,y + ds.Top - Con.Top);
  if ds.Name[10] = 'L' then
  begin
    con.Width := Max(0,Con.Width + Con.Left - (x + ds.Left));
    con.Left := x + ds.Left;
  end
  else if ds.Name[10] = 'R' then
    con.Width := Max(0,x + ds.Left - Con.Left);
  RenewDragSpots;
end;

procedure TBaseExDragForm.MyMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  releasecapture;
end;

procedure TBaseExDragForm.ReadComPos;
var
  i: integer;
  sComName, sFormName: string;
  ADOQryTmp: TADOQuery;
begin
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  sFormName:= Self.Name;
  for i:=0 to Self.ComponentCount-1 do
  begin
    if Components[i] is TControl then
    begin
      sComName:= (Components[i] as TControl).Name;  //TControl(Components[I]).Name;

      ADOQryTmp.Close;
      ADOQryTmp.SQL.Clear;
      ADOQryTmp.SQL.Add('Select * From 窗体状态表 where 窗体名称 ='
       + QuotedStr(sFormName)+ 'and 控件名称 =' + QuotedStr(sComName));
      ADOQryTmp.Open;

      if ADOQryTmp.RecordCount>0 then
      begin
        TControl(Components[I]).Name:= ADOQryTmp.FieldByName('控件名称').AsString;
        TControl(Components[I]).Left:= ADOQryTmp.FieldByName('左').AsInteger;
        TControl(Components[I]).Top:= ADOQryTmp.FieldByName('上').AsInteger;
        TControl(Components[I]).Height:= ADOQryTmp.FieldByName('高').AsInteger;
        TControl(Components[I]).Width:= ADOQryTmp.FieldByName('宽').AsInteger;
      end;
    end;
  end;
  ADOQryTmp.Close;
  ADOQryTmp.Free;
end;

procedure TBaseExDragForm.RenewDragSpot(aLeft, aTop: integer; Loc: String);
var Pn : TPanel;
begin
  Pn := TPanel(self.FindComponent('DragSpot' + Loc));
  if Pn = nil then exit;
  with Pn do
    begin
      Left := aLeft;
      Top := aTop;
      Parent := Con.Parent;
    end;
end;

procedure TBaseExDragForm.RenewDragSpots;
begin
  RenewDragSpot(Con.Left-2,Con.Top-2,'TL');
  RenewDragSpot(Con.Left-2,Con.Top+Round(Con.Height / 2 ),'CL');
  RenewDragSpot(Con.Left-2,Con.Top+Con.Height - 2,'BL');
  RenewDragSpot(Con.Left+Round(Con.Width / 2 ),Con.Top-2,'TC');
  RenewDragSpot(Con.Left+Round(Con.Width / 2 ),Con.Top+Con.Height-2,'BC');
  RenewDragSpot(Con.Left+Con.Width-2,Con.Top-2,'TR');
  RenewDragSpot(Con.Left+Con.Width-2,Con.Top+Round(Con.Height / 2),'CR');
  RenewDragSpot(Con.Left+Con.Width-2,Con.Top+Con.Height-2,'BR');
end;

procedure TBaseExDragForm.SaveComPos;
var
  i, lLeft, lTop, lHeight, lWidth:integer;
  sFormName, sComName: string;
  ADOQryTmp: TADOQuery;
begin
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  sFormName:= Self.Name;
  for i:=0 to Self.ComponentCount-1 do
  begin
    if Components[i] is TControl then
    begin
      sComName:= Components[I].Name;
      ADOQryTmp.Close;
      ADOQryTmp.SQL.Clear;
      ADOQryTmp.SQL.Add('Select * From 窗体状态表 Where 窗体名称= '+ QuotedStr(sFormName) + 'and 控件名称= ' + QuotedStr(sComName));
      ADOQryTmp.Open;



      if ADOQryTmp.RecordCount < 1 then
      begin
        ADOQryTmp.Append;
        ADOQryTmp.FieldByName('窗体名称').AsString:= Self.Name;
        ADOQryTmp.FieldByName('控件名称').AsString:=sComName ;

        ADOQryTmp.FieldByName('左').AsInteger:= Trunc(TControl(Components[I]).Left);
        ADOQryTmp.FieldByName('上').AsInteger:= TControl(Components[I]).Top;
        ADOQryTmp.FieldByName('高').AsInteger:= TControl(Components[I]).Height;
        ADOQryTmp.FieldByName('宽').AsInteger:= TControl(Components[I]).Width;
        ADOQryTmp.FieldByName('类').AsString := Components[I].ClassName;
        ADOQryTmp.Post;
      end
      else
      begin
        lLeft:=TControl(Components[I]).Left;
        lTop:=TControl(Components[I]).Top;
        lHeight:=TControl(Components[I]).Height;
        lWidth:= TControl(Components[I]).Width;
        ADOQryTmp.Close;
        ADOQryTmp.SQL.Clear;
        ADOQryTmp.SQL.Add('Update 窗体状态表 Set 左= '+IntToStr(lLeft)+', 上= '
        +IntToStr(lTop)+',高= '+IntToStr(lHeight)+', 宽= '+IntToStr(lWidth)+
        'Where 窗体名称= '+ QuotedStr(sFormName) + 'and 控件名称= ' + QuotedStr(sComName));
        ADOQryTmp.ExecSQL;
      end;
    end;
  end;
  ADOQryTmp.Close;
  ADOQryTmp.Free;
end;
procedure TBaseExDragForm.FormShow(Sender: TObject);
begin
  inherited;
  ReadComPos;
end;

procedure TBaseExDragForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SaveComPos;
  Ini.Free;
end;

procedure TBaseExDragForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Self:=nil;
end;

procedure TBaseExDragForm.DesignClick(Sender: TObject);
var
  i : integer;
begin
  for i := 1 to 4 do
    SetLength(aMethods[i],ComponentCount);
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TControl then
      begin
        aMethods[1,i] := TMethod(TC(Components[i]).onClick);
        aMethods[2,i] := TMethod(TC(Components[i]).onMouseDown);
        aMethods[3,i] := TMethod(TC(Components[i]).onMouseMove);
        aMethods[4,i] := TMethod(TC(Components[i]).onMouseUp);
        TC(Components[i]).OnClick := nil;
        TC(Components[i]).OnMouseDown := conMouseDown;
        TC(Components[i]).OnMouseMove := conMouseMove;
        TC(Components[i]).OnMouseUp := myMouseUp;
      end;
  CreateDragSpot('TL',crSizeNWSE);
  CreateDragSpot('CL',crSizeWE);
  CreateDragSpot('BL',crSizeNESW);
  CreateDragSpot('TC',crSizeNS);
  CreateDragSpot('BC',crSizeNS);
  CreateDragSpot('TR',crSizeNESW);
  CreateDragSpot('CR',crSizeWE);
  CreateDragSpot('BR',crSizeNWSE);
  Con := ActiveControl;
  RenewDragSpots;
  Design.Enabled := false;
  Runtime.Enabled := true;
end;

procedure TBaseExDragForm.RuntimeClick(Sender: TObject);
var
  i : integer;
begin
  for i := ComponentCount -1 downto 0 do
    if (Components[i] is TPanel) and (Copy(Components[i].Name,1,8) = 'DragSpot') then
      Components[i].Free;
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TControl then
      begin
        TC(Components[i]).OnClick := TNotifyEvent(aMethods[1,i]);
        TC(Components[i]).OnMouseDown := TMouseEvent(aMethods[2,i]);
        TC(Components[i]).OnMouseMove := TMouseMoveEvent(aMethods[3,i]);
        TC(Components[i]).OnMouseUp := TMouseEvent(aMethods[4,i]);
      end;
  Design.Enabled := true;
  Runtime.Enabled := false;
end;

end.
