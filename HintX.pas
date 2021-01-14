//下面是一个Delphi单元的代码，它把程序图标放在提示栏窗口中:

{--代码开始--} 

unit HintX; 

interface 

uses 
  Windows, Messages, Controls; 

type 
  TIconHintX = class(THintWindow) 
  protected 
    procedure Paint; override; 
  public 
    function CalcHintRect(MaxWidth: Integer; const AHint: string; AData: Pointer): TRect; override; 
  end; 

implementation 

uses Forms; 

{ TIconHintX } 

{-为了放置一个图标，重新计算提示栏窗体的大小:-} 
function TIconHintX.CalcHintRect(MaxWidth: Integer; const AHint: string; 
  AData: Pointer): TRect; 
begin 
  Result := inherited CalcHintRect(MaxWidth, AHint, AData);     Result.Right := (Length(AHint) * 5) + Application.Icon.Width; 
  Result.Bottom := (Application.Icon.Height) * 2; 
end; 

procedure TIconHintX.Paint; 
const 
  MARGIN = 5; 
begin 
  inherited; 
  Canvas.Draw(MARGIN, MARGIN * 5, Application.Icon); 
  SendMessage(Handle, WM_NCPAINT, 0, 0); //画提示栏边框 
end; 

initialization 
  //把我们的新类设置为默认的提示栏类: 
  HintWindowClass := TIconHintX; 


{--代码结束--} 
end. 
// 为了看到效果, 把这个单元放置在你的应用程序的引用单元列表中。

