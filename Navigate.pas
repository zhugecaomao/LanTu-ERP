unit Navigate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, ComCtrls, ExtCtrls, jpeg, StdCtrls, Buttons, Menus;

type
  TNavigateForm = class(TBaseMdiForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Notebook1: TNotebook;
    Image21: TImage;
    Image3: TImage;
    Label3: TLabel;
    Image10: TImage;
    Image4: TImage;
    Label4: TLabel;
    Image14: TImage;
    Image11: TImage;
    Image15: TImage;
    Label9: TLabel;
    Image16: TImage;
    Image8: TImage;
    Image13: TImage;
    Image12: TImage;
    Image6: TImage;
    Label6: TLabel;
    Label8: TLabel;
    Image26: TImage;
    Image2: TImage;
    Image5: TImage;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Image9: TImage;
    Label1: TLabel;
    Image17: TImage;
    Image18: TImage;
    Label11: TLabel;
    Label10: TLabel;
    Image1: TImage;
    Image19: TImage;
    Label12: TLabel;
    Image22: TImage;
    Label13: TLabel;
    Image23: TImage;
    Label14: TLabel;
    Image24: TImage;
    Label15: TLabel;
    Image7: TImage;
    Label17: TLabel;
    Image25: TImage;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }

CaptionBtn:TRect;
   procedure DrawCaptButton;
    procedure WMNCPaint(var Msg:TWMNCPaint);message WM_NCPaint;
    procedure WMNCActivate(var Msg:TWMNCActivate);message WM_NCActivate;
    procedure WMSetText(var Msg:TWMSetText);message WM_SetText;
    procedure WMNCHitTest(var Msg:TWMNCHitTest);message WM_NCHittest;
    procedure WMNCLButtonDown(var Msg:TWMNCLButtonDown);message WM_NCLButtonDown;
    procedure SetPopupMenuPosition;
  public
    { Public declarations }

  end;

var
  NavigateForm: TNavigateForm;

const
  htCaptionBtn=htSizeLast+1;

implementation

uses SysPublic;

{$R *.dfm}

{ TNavigateForm }

{procedure TNavigateForm.Sys(var msg: TMessage);
begin
if msg.WParam = SC_CLOSE then
    msg.Result := 1;
end;}

procedure TNavigateForm.SetPopupMenuPosition;
var
  p:TPoint;
begin
  getcursorpos(p);
  PopupMenu1.popup(p.x,p.y);
end;

procedure TNavigateForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='BaseInfo';
end;

procedure TNavigateForm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:= 'Member';
end;

procedure TNavigateForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SetPopupMenuPosition;
end;





procedure TNavigateForm.FormShow(Sender: TObject);
begin
  inherited;
  SpeedButton1Click(Self);
end;

procedure TNavigateForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='Business';
end;

procedure TNavigateForm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='Subscribe';
end;

procedure TNavigateForm.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='Subscription';
end;

procedure TNavigateForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='Report';
end;

procedure TNavigateForm.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='Message';
end;

procedure TNavigateForm.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='System';
end;

procedure TNavigateForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  Notebook1.ActivePage:='Help';
end;

procedure TNavigateForm.DrawCaptButton;
var
  xFrame,yFrame,xSize,ySize:Integer;
  R:TRect;
begin
  xFrame:=GetSystemMetrics(SM_CXFRAME);
  yFrame:=GetSystemMetrics(SM_CYFRAME);
  xSize:=GetSystemMetrics(SM_CXSIZE);
  ySize:=GetSystemMetrics(SM_CYSIZE);
  CaptionBtn:=Bounds(Width-xFrame-5*xSize+2,yFrame+2,xSize+13,ySize-4);
  Canvas.Handle:=GetWindowDC(Self.Handle);
  Canvas.Font.Name:='ËÎÌו';
  Canvas.Font.Color:=clBlue;
  Canvas.Pen.Color:=clYellow;
  Canvas.Brush.Color:=clBtnFace;
  try
    DrawButtonFace(Canvas,CaptionBtn,1,bsAutoDetect,False,False,False);
    R:=Bounds(Width-xFrame-5*xSize+3,yFrame+3,xSize+10,ySize-7);
    with CaptionBtn do
      Canvas.TextRect(R,R.Left+2,R.Top,'TEST');
  finally
    ReleaseDC(Self.Handle,Canvas.Handle);
    Canvas.Handle:=0;
  end;
end;


procedure TNavigateForm.WMNCActivate(var Msg: TWMNCActivate);
begin
inherited;
  DrawCaptButton;

end;

procedure TNavigateForm.WMNCHitTest(var Msg: TWMNCHitTest);
begin
inherited;
  with Msg do
    if PtInRect(CaptionBtn,Point(xPos-Left,yPos-Top)) then
    Result:=htCaptionBtn;

end;

procedure TNavigateForm.WMNCLButtonDown(var Msg: TWMNCLButtonDown);
begin
inherited;
  if(Msg.HitTest=htCaptionBtn)then
    showmessage('good');

end;

procedure TNavigateForm.WMNCPaint(var Msg: TWMNCPaint);
begin
inherited;
  DrawCaptButton;

end;

procedure TNavigateForm.WMSetText(var Msg: TWMSetText);
begin
inherited;
  DrawCaptButton;

end;

procedure TNavigateForm.FormResize(Sender: TObject);
begin
  inherited;
Perform(WM_NCACTIVATE,Word(Active),0);
end;

end.
