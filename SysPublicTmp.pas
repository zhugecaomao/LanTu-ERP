unit SysPublicTmp;

interface

uses Windows;

implementation

end.
{
动画显示窗体
procedure TForm1.FormCreate(Sender: TObject);
begin
  AnimateWindow(Handle,2000{速度：2秒}//,AW_BLEND);
{ AW_HOR_POSITIVE = $00000001;
  AW_HOR_NEGATIVE = $00000002;
  AW_VER_POSITIVE = $00000004;
  AW_VER_NEGATIVE = $00000008;
  AW_CENTER = $00000010;
  AW_HIDE = $00010000;
  AW_ACTIVATE = $00020000;
  AW_SLIDE = $00040000;
  AW_BLEND = $00080000;
end;}

{
 只允许建立一次子窗体的MDI程序
 procedure OpenChildForm(FormClass: TFormClass; var Fm; AOwner:TComponent);
var
  I: Integer;
  Child: TForm;
begin
  for I := 0 to Screen.FormCount - 1 do
    if Screen.Forms[I].ClassType = FormClass then
    begin
      Child := Screen.Forms[I];
      if Child.WindowState = wsMinimized then
        ShowWindow(Child.Handle, SW_SHOWNORMAL)
      else
        ShowWindow(Child.handle,SW_SHOWNA);
      if (not Child.Visible) then Child.Visible := True;
        Child.BringToFront;
        Child.Setfocus;
        TForm(Fm) := Child;
        Exit;
    end;
  Child := TForm(FormClass.NewInstance);
  TForm(Fm) := Child;
  Child.Create(AOwner);
end; 

}

{
数据网格自动适应宽度
说明:使用DBGrid不可不看

///////Begin Source
uses
Math;

function DBGridRecordSize(mColumn: TColumn): Boolean;
{ 返回记录数据网格列显示最大宽度是否成功
begin
Result := False;
if not Assigned(mColumn.Field) then Exit;
mColumn.Field.Tag := Max(mColumn.Field.Tag,
TDBGrid(mColumn.Grid).Canvas.TextWidth(mColumn.Field.DisplayText));
Result := True;
end; 

function DBGridAutoSize(mDBGrid: TDBGrid; mOffset: Integer = 5): Boolean;
// 返回数据网格自动适应宽度是否成功
var
I: Integer;
begin
Result := False;
if not Assigned(mDBGrid) then Exit;
if not Assigned(mDBGrid.DataSource) then Exit;
if not Assigned(mDBGrid.DataSource.DataSet) then Exit;
if not mDBGrid.DataSource.DataSet.Active then Exit;
for I := 0 to mDBGrid.Columns.Count - 1 do begin
if not mDBGrid.Columns[I].Visible then Continue;
if Assigned(mDBGrid.Columns[I].Field) then
mDBGrid.Columns[I].Width := Max(mDBGrid.Columns[I].Field.Tag,
mDBGrid.Canvas.TextWidth(mDBGrid.Columns[I].Title.Caption)) + mOffset
else mDBGrid.Columns[I].Width :=
mDBGrid.Canvas.TextWidth(mDBGrid.Columns[I].Title.Caption) + mOffset;
mDBGrid.Refresh;
end;
Result := True;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
DBGridRecordSize(Column);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
DBGridAutoSize(DBGrid1);
end;
}

{TDBGrid中用Enter仿真Tab键盘
procedure TForm1.FormKeyPress(Sender: TObject; var Key: 
Char);
begin
  if Key = #13 then //如果是一个Enter键盘
  begin
    if not (ActiveControl is TDBGrid) then  //如果当前的控件不是TDBGrid
    begin 
       Key := #0; 
       Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else if (ActiveControl is TDBGrid) then //在TDBGrid中
    begin
       with TDBGrid(ActiveControl) do
       begin
         if selectedindex < (fieldcount -1) then //如果不是最后一个字段
            selectedindex := selectedindex +1
         else
            selectedindex := 0;
       end;
   end;
end; 
end;

}

{

经常看到有人问如何把Delphi中的数据集导入Excel中，这里提供了一个实现。


在做项目时，很多情况下，客户需要对程序中数据集再加工，再利用，如报表。
这时，就需要把DataSet导入到一个客户比较熟悉的格式中去。Excel是首选了。

该程序在Delphi4,5下编译通过，已被用在多个项目中。还被集成在笔者所写的一个小组件TDBNavigateButton中

 

{-------------------------------------------------------------------------------------------------
单元：uExcelTools
作者：  Bear
功能：保存数据集，如TTable,TQuery,TClientDataSet等为Excel文件，
          包含标题，可以只将一部分字段导出
           这一点通过设置DataSet中要不导出字段的Tag值大于某一个值来处理
原理：调用 Microsoft Excel Ole对象
调用方式：  
                 Function DataSetToExcel(
                     DataSet:TDataSet;FieldTagMax:Integer;
                      Visible:Boolean;ExcelFileName:String=''): Boolean;
--------------------------------------------------------------------------------------------------

unit UExcelTools;

interface

uses
  classes, comctrls, stdctrls, windows, Dialogs, controls, SysUtils,
  Db,forms,DBClient,ComObj;

//把数据集导入ExcelSheet的核心函数
function DataSetToExcelSheet
            (
             DataSet     :TDataSet;
             FieldTagMax :Integer;   // 字段的Tag值如果大于这个值，就不导出到Excel
             Sheet       :OleVariant
             ): Boolean;

//实际使用的函数，内部调用了DataSetToExcelSheet，在外面加入UI接口和错误处理
function DataSetToExcel
            (
             DataSet     :TDataSet;   // 要转换的数据集
             FieldTagMax :Integer;  // 字段的Tag值如果大于这个值，就不导出到Excel
             Visible     :Boolean;      // 是否让做转换工作的Excel可见
             ExcelFileName:String='' // Excel文件名，*.xls
             ): Boolean;

implementation

Function DataSetToExcelSheet(DataSet:TDataSet;FieldTagMax:Integer;Sheet:OleVariant): Boolean;
var
   Row,Col,FieldIndex :Integer;
   BK:TBookMark;
begin
   Result := False;
   if not Dataset.Active then exit;
   BK:=DataSet.GetBookMark;
   DataSet.DisableControls;

   Sheet.Activate;
   try

     // 列标题
     Row:=1;
     Col:=1;
     for FieldIndex:=0 to DataSet.FieldCount-1 do
         begin
         if DataSet.Fields[FieldIndex].Tag <= FieldTagMax then
            begin
            Sheet.Cells(Row,Col)  :=DataSet.Fields[FieldIndex].DisplayLabel;
            Inc(Col);
            end;
         end;
     // 表内容
     DataSet.First;
     while Not DataSet.Eof do
        begin
        Row:=Row+1;
        Col:=1;
        for FieldIndex:=0 to DataSet.FieldCount-1 do
            begin
            if DataSet.Fields[FieldIndex].Tag <= FieldTagMax then
               begin
               Sheet.Cells(Row,Col):=DataSet.Fields[FieldIndex].AsString;
               Inc(Col);
               end;
            end;
        DataSet.Next;
        end;

     Result := True;
     finally
       DataSet.GotoBookMark(BK);
       DataSet.EnableControls;
    end;

  
end;
Function DataSetToExcel(
                  DataSet:TDataSet;FieldTagMax:Integer;
                  Visible:Boolean;ExcelFileName:String=''): Boolean;
var
   ExcelObj, Excel, WorkBook, Sheet: OleVariant;
    OldCursor:TCursor;
   SaveDialog:TSaveDialog;
begin
   Result := False;
   if not Dataset.Active then exit;

   OldCursor:=Screen.Cursor;
   Screen.Cursor:=crHourGlass;

   try
      ExcelObj := CreateOleObject('Excel.Sheet');
      Excel := ExcelObj.Application;
      Excel.Visible := Visible ;
      WorkBook := Excel.Workbooks.Add ;
      Sheet:= WorkBook.Sheets[1];
   except
      MessageBox(GetActiveWindow,'无法调用Mircorsoft Excel! '+chr(13)+chr(10)+
                    '请检查是否安装了Mircorsoft Excel。','提示',MB_OK+MB_ICONINFORMATION);
      Screen.Cursor:=OldCursor;
      Exit;
   end;

   Result:=DataSetToExcelSheet(DataSet,FieldTagMax,Sheet) ;
   if Result then
      if Not Visible then
         begin
         if ExcelFileName<>''
            then WorkBook.SaveAs(FileName:=ExcelFileName)
            else begin
                 SaveDialog:=TSaveDialog.Create(Nil);
                 SaveDialog.Filter := 'Microsoft Excel 文件|*.xls';
                 Result:=SaveDialog.Execute;
                 UpdateWindow(GetActiveWindow);
                 if Result then
                    WorkBook.SaveAs(FileName:=SaveDialog.FileName);
                 SaveDialog.Free;
                 end;
         Excel.Quit;
         end;
   Screen.Cursor:=OldCursor;
end;

 

end.

}

{
如何创建透明窗体
procedure TForm1.FormCreate(Sender: TObject); 
var 
  FullRgn, ClientRgn, ButtonRgn: THandle; 
  Margin, X, Y: Integer; 
begin 
  Margin := (Width - ClientWidth) div 2; 
  FullRgn := CreateRectRgn(0, 0, Width, Height); 
  X := Margin; 
  Y := Height - ClientHeight - Margin; 
  ClientRgn := CreateRectRgn(X, Y, X + ClientWidth, Y + ClientHeight); 
  CombineRgn(FullRgn, FullRgn, ClientRgn, RGN_DIFF); 
  X := X + Button1.Left; 
  Y := Y + Button1.Top; 
  ButtonRgn := CreateRectRgn(X, Y, X + Button1.Width, Y + Button1.Height); 
  CombineRgn(FullRgn, FullRgn, ButtonRgn, RGN_OR); 
  SetWindowRgn(Handle, FullRgn, True); 
end;

}

{
	
	
	如何实现在MS Access数据库中图像的存储和显示
一、 原理介绍——流式数据的类型及其应用
在Dephi中提供了TStream来支持对流式数据的操作。TStream是万流之源，但由于它是一个抽象类，故不能被直接使用；而要使用其相应的子类，如：TFileStream 、TStringStream、TMemoryStream、TBlobStream、TWinSocketStream和TOleStream。TStream提供了统一、简洁的方法来进行数据的读写。
  1.)SaveToStream(Stream: TStream ); 作用：将类中的数据写到Stream的当前位置中 
  2.)LoadFromStream(Stream: TStream); 作用：从当前位置读入Stream里的数据 
  实际使用时我们基本上只要使用上面两个函数就可以了。 
二、所遇到的问题及相应的解决方法
为了节省图像的存储空间和使用更加方便，决定采用JPEG这种图像格式。
（一）所遇到的问题
第一、在Delphi 5中进行画图所用到的组件是TImage，所生成的图像的格式为BMP格式，而为了节省图像的存储空间，图像在数据库里存储的格式须为JPEG格式，这样就产生了图像格式转化的需求；而TImage本身并不直接提供这两种图像格式之间的转化。
第二、怎样将存储在Microsoft Access数据库中的图像取出并且显示出来：在Delphi 5中，能提供这种功能的组件是TDBImage，但该组件却存在着一个很大的缺陷：它所能显示的图像类型只能是一些图标文件，元文件和BMP文件，而不能支持JPEG格式的图像在该组件中的显示；但根据实际需要，在Microsoft Access数据库中所存储的图像数据却是以JPEG格式保存的。
（二）相应的解决方法
为了解决上述两个问题，可以采用目前数据库中一种名为大二分对象（BLOB——Binary Large Object），它是用来处理某些特殊格式的数据的。BLOB在数据库的表中实际上是以二进制数据的形式存放的。
为了处理BLOB字段，可以借鉴一些可视的桌面数据库的方法。在这里，我们选择了通过内存流的方式来完成；使用内存流，可减少磁盘操作，大大提高运行效率。
具体的过程和相关的程序代码如下：
1、如何实现在Microsoft Access数据库中的图像存储：
这里是利用TStream的子类TMemoryStream向Microsoft Access数据库中存储图像的。下面的这段代码是在按了“保存”按钮之后所触发的事件处理程序：
procedure TForm1.Button1Click(Sender: TObject);
var 
MyJPEG : TJPEGImage;
MS: TMemoryStream;
begin
MyJPEG := TJPEGImage.Create;
 try
    with MyJPEG do
    begin
      Assign(Image.Picture.Graphic);
      MS:=TMemoryStream.create;
      SaveToStream(MS);
      MS.Position:=0;
                Table1.Edit;
                 TBlobField(Table1.FieldbyName('Image')).LoadFromStream(MS);
                 Table1.Post;
                 messagebox(getactivewindow(),'图像保存完毕！','保存',mb_ok);          
    end;
  finally
    MyJPEG.Free;
  end;
end;
在这段代码里TStream的子类TMemoryStream利用内存流起到了将BMP格式转化为JPEG格式的中间桥梁的作用。
2、如何将图像从Microsoft Access数据库中取出并显示出来：
下面的这段代码是在按了“查看图像”按钮之后所触发的事件处理程序：
procedure TForm1.Button1Click(Sender: TObject);
var tempstream:TStringStream;
   tempjpeg:TJPEGImage; 
begin
   try
        tempstream:=TStringStream.Create(' ');     
        TBlobField(Query1.FieldByName('Image')).SaveToStream(tempstream);            
        tempstream.Position:=0;
        tempjpeg:=TJPEGImage.Create;
        tempjpeg.LoadFromStream(tempstream);
        DBImage1.Picture.Bitmap.Assign(tempjpeg);
  finally
        tempstream.Free;
        tempjpeg.Free;
  end;
end;
这段代码的主要作用是：首先将查询结果中的JPEG图像格式数据保存到TStringStream中去，然后设置数据指针在TStringStream中的位置为0；接着从TStringStream中读入相关数据，并把它们赋给TDBImage.Picture.Bitmap，这样一来就实现了将数据库中所存储的JPEG格式的数据转化为BMP格式，并在TDBImage中将图像显示出来。最后将TStringStream和TJPEGImage这两个对象释放掉。特别要注意的是不能在设计阶段设置TDBImage的DataField属性，而只能通过写代码的形式在运行阶段把利用流式数据所转化过来的新格式的图像数据赋给TDBImage.Picture.Bitmap。
}

{在SQL数据库里显示序号
select IDENTITY(int,1,1)as id,房台名称,类型说明 into #1 from 房间台号信息表
select * from #1 
drop  table  #1--放到这里就行了
}

{
问题：SQL Server2000中，怎么得到datetime类型字段的日期部分和时间部分？ ( 积分：50, 回复：8, 阅读：38 )
分类：数据库-C/S型 ( 版主：qince, luyear )  
来自：nywjx, 时间：2004-8-23 10:01:00, ID：2774290 [显示：小字体 | 大字体]  
如题，一个字段是datetime类型，我想得到它的日期部分，就是2004-08-23;
还想得到它的时间部分，就是10:12:45，
怎么做啊？看了帮助，没找到
 
 
来自：KervenLee, 时间：2004-8-23 10:09:17, ID：2774306 
转换成字符串，从后面取10个字符吧
笨方法！
 
 
来自：shineYu, 时间：2004-8-23 10:09:18, ID：2774307 
convert(char(8),[datetime],102)   --->2004.08.23
convert(char(8),[datetime],108)   --->HH:MM:SS
 
 
来自：TYZhang, 时间：2004-8-23 10:10:01, ID：2774309 
Select Convert(char(10),D,121) from T  //2004-08-23
Select Right(Convert(char(19),D,121),8) from T  //10:12:45


 
 
来自：nywjx, 时间：2004-8-23 10:12:15, ID：2774317 
那我要进行时间变量之间的比较时，不是还要把字符转换成datetime？有没有更好的办法？
 
 
来自：bluedna, 时间：2004-8-23 10:12:38, ID：2774319 
select convert(varchar(10),getdate(),120)as 日期
select convert(varchar(10),getdate(),108)as 时间
 
 
来自：TYZhang, 时间：2004-8-23 10:16:21, ID：2774331 
Select Floor(D) from T  //2004-08-23
Select D-Floor(D) from T  //10:12:45

 
 
来自：meteor007, 时间：2004-8-23 10:17:04, ID：2774334 
DATEPART
返回代表指定日期的指定日期部分的整数。
var:
 stryourdate:string;
 yourdate:TDateTime;

stryourdate:=FormatDateTime('yyyy/mm/dd',Yourdate);
stryourdate就是你想要的
还可得到年或月,日

语法
DATEPART ( datepart , date ) 
year（datetime）取年
month(datetime)取月
day（datetime）取天


 
 

}

{
SQL语句，纵列转横列 
sTable.db
库位  货物编号 库存数
1     0101     50
1     0102     60
1     0103     50
2     0101     90
2     0103     100
2     0111     30
3     0101     120
3     0102     110
4     0101     11
 
只列出表中库位为1、2、3的数据，格式如下:

货物编号  库位1  库位2  库位3
0101      50     90     120
0102      60            110
0103      50     100
0111             30
请问用一句sql语句怎么实现？

select a.货物编号，sum(b.库存数)，sum(c.库存数)，sum(d.库存数)
from stable  a 
left join (select 货物编号， 库存数 from stable where 库位=1)b on a.货物编号＝b货物编号
left join (select 货物编号， 库存数 from stable where 库位=2)c on a.货物编号＝c。货物编号
left join (select 货物编号， 库存数 from stable where 库位=3)c on a.货物编号＝d。货物编号
group by a.货物编号
//※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※//

}

{
让edit只输入数字和小数点？
写在onkeypress事件里面
if not (key in ['0'..'9',#8])  then
   begin
      if (key='.') and (pos('.',Tedit(sender).Text)=0) then exit;
      key:=#0;
      Messagebeep(0);
   end;

在KeyPress里控制怎么都不完善！
如果Ctrl+C,Ctrl+V怎么办？
如果右键拷贝、粘贴呢？
所以只有在OnChange事件中才能完善控制：
procedure TForm.EditChange(Sender: TObject);
begin
  try
    StrToFloat((Sender as TEdit).Text);
  except
    (Sender as TEdit).Text:=Copy((Sender as TEdit).Text,1,
      Length((Sender as TEdit).Text)-1);
    (Sender as TEdit).SelStart:=Length((Sender as TEdit).Text);
  end;
end; 


}

{
Format('x=%d', [12]); //'x=12' //最普通
Format('x=%3d', [12]); //'x= 12' //指定宽度
Format('x=%f', [12.0]); //'x=12.00' //浮点数
Format('x=%.3f', [12.0]); //'x=12.000' //指定小数
Format('x=%.*f', [5, 12.0]); //'x=12.00000' //动态配置
Format('x=%.5d', [12]); //'x=00012' //前面补充0
Format('x=%.5x', [12]); //'x=0000C' //十六进制
Format('x=%1:d%0:d', [12, 13]); //'x=1312' //使用索引
Format('x=%p', [nil]); //'x=00000000' //指针
Format('x=%1.1e', [12.0]); //'x=1.2E+001' //科学记数法
Format('x=%%', []); //'x=%' //得到"%"
S := Format('%s%d', [S, I]); //S := S + StrToInt(I); //连接字符串 

}

{

一、Thread类的创建：

unit Thread;
//           线程类的创建
//  编译环境: Windows 2003 Sever  Delphi 7.0 Enterprise

interface
uses classes,sysutils,StdCtrls;
type
  TB = class(TThread)
  private
    i :integer;
    Fedt :TEdit;
    procedure Update ;
  public
    procedure execute;override;
    constructor create(IsSuspended :Boolean;edt :TEdit);
  end;
implementation
uses MainForm;

procedure TB.Update;
begin
  Fedt.Text :=inttostr(i);
end;

constructor TB.create(IsSuspended: Boolean; edt: TEdit);
begin
  inherited create(IsSuspended);
  Fedt := edt;
end;

procedure TB.execute;
begin
  i:=0;
  while(not Terminated) do
  begin
    Synchronize(Update);
    inc(i);
  end;
end;
end.

二、Thread类的使用：

unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Thread;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonClick(Sender: TObject);
  private
//    { Private declarations }
//  public
//    { Public declarations }
//  end;


{var
  frmMain: TfrmMain;
  a,b:TB;
implementation }

{$R *.dfm}

{procedure TfrmMain.FormCreate(Sender: TObject);
begin
  a:=TB.create(true,edit1);
  b:=TB.create(True,edit2);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  freeandnil(a);freeandnil(b);
end;

procedure TfrmMain.ButtonClick(Sender: TObject);
var c :TB;
begin
  if sender = Button1 then c :=a
  else c:=b;
  if c.Suspended then begin
    c.Resume ; (sender as TButton).Caption :='暂停';
  end else begin
    c.Suspend ;(Sender as TButton).Caption :='开始';
  end;
end;

end.


}

{
楼住的问题还没有解决吗?
我简单的写了一下,已经能实现你的功能;
unit CustomDBGridEX;

interface

uses
  SysUtils, windows, Classes, Controls, Grids, DBGrids, Graphics;

type
  TCustomDBGridEX = class(TCustomDBGrid)
  private

  protected

    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState); override;
  public

    property Canvas;
    property SelectedRows;
  published

    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Columns stored False; //StoreColumns;
    property Constraints;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FixedColor;
    property Font;
    property ImeMode;
    property ImeName;
    property Options;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property TitleFont;
    property Visible;
    property OnCellClick;
    property OnColEnter;
    property OnColExit;
    property OnColumnMoved;
    property OnDrawDataCell;
    property OnDrawColumnCell;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEditButtonClick;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
    property OnTitleClick;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TCustomDBGridEX]);
end;



procedure TCustomDBGridEX.DrawColumnCell(const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DataSource.DataSet.RecNo mod 2 = 0 then
    Canvas.Brush.Color := clred
  else
    Canvas.Brush.Color := clAqua;
  DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.

把上面的过程修改为下面会更好点! 呵呵!
procedure TCustomDBGridEX.DrawColumnCell(const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DataSource.DataSet.RecNo mod 2 = 0 then
  begin
    Canvas.Brush.Color := clYellow;
    Canvas.Font.Color := clBlack;
    Canvas.TextRect(Rect, Rect.Left, Rect.Top, Column.Field.AsString);
  end
  else
  begin
    Canvas.Brush.Color := clWindow;
    Canvas.Font.Color := clBlack;
    Canvas.TextRect(Rect, Rect.Left, Rect.Top, Column.Field.AsString);
  end;
end;  

}

{

如何判断一个对象是否已经实例化？
我把一个对象Free后，为什么 (对象 = nil) 为 False呢  

function GetM():TMyClass;
var r: TMyClass;
begin
  r := TMyClass.Create;
  Result := r;
end;

}

{
你可以先定义一个基类
//该类为纯虚类，不用实现
TBase=class
  public
    procedure push(num:double);
    function pop:double; virtual; abstract;
    function top:double;  virtual; abstract;
    function count:integer;  virtual; abstract;
  end;

Tfloatstack=class(TBase)
  private
    farr:array of double;
  public
    procedure push(num:double);override;
    function pop:double;override;
    function top:double;override;
    function count:integer;override;
  end;

  Tstringstack=class(TBase)
  private
    farr:array of string;
  public
    procedure push(num:string);override;
    function pop:string;override;
    function top:string;override;
    function count:integer;override;
  end;

}

{
我这有个动态载入dxDBGrid列的函数，也许对你有点作用：
procedure StoreGridColumn(const TableID: Word; DataGrid: TdxDBGrid);
var
  i: Word;
  aType: TdxSummaryType;
  ColQuery: TSQLQuery;
begin
  ColQuery := TSQLQuery.Create(Nil);
  try
    ColQuery.SQLConnection := dmMaster.ConnDB;
    ColQuery.SQL.Text := 'select * from qps_column_note where (table_id = ' + IntToStr(TableID) +
      ') and (col_show = 1) order by col_show_id,auto_id';
    for i := 0 to DataGrid.ColumnCount - 1 do
      DataGrid.Columns[0].Destroy;
    i := 0;
    with ColQuery do begin
      Open;
      while not Eof do begin
        if FieldByName('col_field_type').AsInteger = 0 then
          DataGrid.CreateColumn(TdxDBGridColumn)
        else if FieldByName('col_field_type').AsInteger = 1 then
          DataGrid.CreateColumn(TdxDBGridDateColumn)
        else if FieldByName('col_field_type').AsInteger = 2 then
          DataGrid.CreateColumn(TdxDBGridCheckColumn)
        else if FieldByName('col_field_type').AsInteger = 3 then
          DataGrid.CreateColumn(TdxDBGridCurrencyColumn);
        if FieldByName('col_has_foot').AsInteger > 0 then begin
          aType := cstNone;
          case FieldByName('col_foot_type').AsInteger of
            0: aType := cstAvg;
            1: atype := cstCount;
            2: aType := cstMax;
            3: aType := cstMin;
            4: aType := cstNone;
            5: aType := cstSum;
          end;
          DataGrid.Columns[i].SummaryFooterType := aType;
          DataGrid.Columns[i].SummaryFooterField := Trim(FieldByName('col_foot_field').AsString);
          DataGrid.Columns[i].SummaryFooterFormat := Trim(FieldByName('col_foot_format').AsString);
        end;
        if FieldByName('col_display_format').AsString <> '' then
          (DataGrid.Columns[i] as TdxDBGridCurrencyColumn).DisplayFormat := FieldByName('col_display_format').AsString;
        DataGrid.Columns[i].BandIndex := 0;
        DataGrid.Columns[i].FieldName := Trim(FieldByName('col_field_name').AsString);
        DataGrid.Columns[i].Caption := Trim(FieldByName('col_text').AsString);
        DataGrid.Columns[i].ReadOnly := FieldByName('col_read_only').AsInteger > 0;
        DataGrid.Columns[i].Width := FieldByName('col_width').AsInteger;
        Next;
        Inc(i);
      end;
    end;
    ColQuery.Close;
  finally
    ColQuery.Free;
  end;
end;  

}

{

参考我的代码

//如果控件具有UIStyle属性，则设置其值
//UIStyle属性为枚举类型
function SetComponentUIStyle(AComponent :TComponent; AUIStyle : TUIStyle) :Boolean;
var
  PropInfo :PPropInfo;
  FStyle :String;
begin
  Result := False;
  PropInfo := GetPropInfo(AComponent.ClassInfo, 'UIStyle');
  if PropInfo <> nil then
  begin
    if PropInfo^.PropType^.Kind= tkEnumeration then
    begin
      FStyle := GetEnumName(TypeInfo(TsuiUIStyle), Integer(AUIStyle));
      SetEnumProp(AComponent, PropInfo, FStyle);
      Result := True;
    end;
  end;
end;

function SetComponentFileTheme(AComponent :TComponent; AFileTheme: TFileTheme) :Boolean;
var
  PropInfo :PPropInfo;
begin
  Result := False;
  PropInfo := GetPropInfo(AComponent.ClassInfo, 'FileTheme');
  if PropInfo <> nil then
  begin
    if PropInfo^.PropType^.Kind= tkClass then
    begin
      SetObjectProp(AComponent, PropInfo, AFileTheme);
      Result := True;
    end;
  end;
end;  

}

{

写了一个函数，试试看
function CheckEditInt(AEdit:TEdit;Min,Max:Integer;CanNull:Boolean;Info:string):Integer;
  TempInt:integer;
  TempStr:string;
begin
  try
  if CanNull=True then
  begin
    if Trim(AEdit.Text)='' then
    begin
      Result:=0;
      exit;
    end;
  end
  else
    if Trim(AEdit.Text)='' then
    begin
      Result:=1;
      ShowMessage(Info+'不能为空！');
      AEdit.SetFocus;
      exit;
    end;
  TempInt:=StrToInt(AEdit.Text);
  if (TempInt<Min) or (TempInt>Max) then
  begin
    if Min=Max then
      TempStr:=IntToStr(Min)+'!'
    else
      TempStr:=IntToStr(Min)+'至'+IntToStr(Max)+'之间!';
    ShowMessage(Info+'必需为'+TempStr);
    Result:=2;
    exit;
  end;
    Result:=0;
Except
  ShowMessage(Info+'应为数字！');
  AEdit.SetFocus;
  Result:=1;
end;
end;  

}


{

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
  Temp: TComponent;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    Temp := Components[I];
    if Temp is TEdit then
    begin
      TEdit(Temp).ReadOnly := true;
    end;
  end;
end;

或者：
procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to ControlCount - 1 do
  begin
    if Controls[I] is TEdit then
    begin
      TEdit(Controls[I]).ReadOnly := true;
    end;
  end;
end; 


}

{

frreport1.LoadFromFile(extractfilepath(application.exename)+'1.frf');
FrReport1.PrepareReport;
FrReport1.PrintPreparedReport('1',1,True,frAll);   .//直接打印
frreport1.ShowReport;                               //进入预览窗体
frreport1.DesignReport; 
}

{
问题：求根据数据库动态生成菜单的代码 ( 积分：50, 回复：8, 阅读：145 )
分类：数据库-文件型 ( 版主：hbezwwl, bubble )  
来自：oupj, 时间：2004-9-5 13:19:00, ID：2794454 [显示：小字体 | 大字体]  

数据库结构为

MenuName Caption   SetID
————————————————
wrer     文件       10
jhjt          文件1     1010
hj     文件2     1012
fh     -     1011
u     编辑     11
ry     编辑1     1110
hjkhhg     编辑2       111011
g     操作       12

怎样根据以上数据库生产如下菜单

文件        编辑       操作
 |_文件1     |_编辑1    
 |_文件2        |_编辑2  


来自：dlwzp, 时间：2004-9-6 12:50:43, ID：2795314
1)select * from your db order by setid
2)对SetID截位，产生菜单项
其实菜单是一种树形结构，你能把表还原成树，就能动态生成菜单。  


来自：oupj, 时间：2004-9-8 12:39:58, ID：2798232
我自己有一个，不过有缺点，哪位高手帮忙修修
procedure TFrm_Main.LoadMainMenu;
var
    curID: String;
    ImageIndex: Integer;
    level: Integer;
    MainMenuItem, MenuItem: TMenuItem;
    //MenuItem: Array[0..9] of TMenuItem;
    //MenuItem: TMenuItem;
begin
  //初始化变量
  level:=0 ;
  curID:= '';
  //遍历数据表，利用编码字段记录排序规律，依次添加
  with CDS_Sys_Menu do
  begin
    try
      Close;
      CommandText:= 'Select * from Sys_Menu where SeptID Like '+ QuotedStr(CurID+'%')
                 +' and Len(SeptID)='+ (IntToStr(Length(curID)+2)) +' order by SeptID';
      Open;
      First;
      while not eof do
      begin
        curID:=Trim(FieldByName('SeptID').AsString);
        begin
          if Not FieldByName('ImageIndex').IsNull then
            ImageIndex:= FieldByName('ImageIndex').AsInteger;
          MainMenuItem:= TMenuItem.Create(MainMenu1);
          MainMenuItem.Name:= Trim(FieldByName('MenuName').AsString);
          MainMenuItem.Caption:= Trim(FieldByName('Caption').AsString);
          MainMenu1.Items.Add(MainMenuItem);
        end;
          LoadMainItem(MainMenuItem, curID);
          Next;
      end;
    finally;
      close;
    end;
  end;
end;


Function TFrm_Main.LoadMainItem(MainMenuItem: TMenuItem;curID: String) :Integer;
var
  MenuItem: TMenuItem;
begin
        with CDS_Tmp do
        begin
          Close;
          CommandText:= 'Select * from Sys_Menu where SeptID Like '+ QuotedStr(CurID+'%')
                 +' and Len(SeptID)='+ (IntToStr(Length(curID)+2)) +' order by SeptID';
          Open;

          while not eof do
          begin
            MenuItem:= TMenuItem.Create(MainMenu1);
            MenuItem.Name:= Trim(FieldByName('MenuName').AsString);
            MenuItem.Caption:= Trim(FieldByName('Caption').AsString);
            MainMenuItem.Add(MenuItem);
            LoadMainItem(MenuItem, Trim(CDS_Tmp.FieldByName('SeptID').AsString));
            Next;    
          end;
        end;

end;
  


来自：flamboyant, 时间：2004-9-8 13:19:26, ID：2798318
procedure TFrm_Main.LoadMainMenu;
var
    curID: String;
    level: Integer;
     MenuItem: TMenuItem;
begin
  //初始化变量
  level:=-1 ;
  curID:= '';
  //遍历数据表，利用编码字段记录排序规律，依次添加
  with CDS_Sys_Menu do
  begin
    try
      Close;
      CommandText:= 'Select * from Sys_Menu order by SeptID';
      Open;
      First;
       while not eof do
      begin
        MainMenuItem:= TMenuItem.Create(MainMenu1);

        begin
          if length(FieldByName('SeptID').AsString)=2 then
          begin
            curID:=Trim(FieldByName('SeptID').AsString);
            level:=level+1
            MainMenuItem.Name:= Trim(FieldByName('MenuName').AsString);
            MainMenuItem.Caption:= Trim(FieldByName('Caption').AsString);
            MainMenu1.Items.Add(MainMenuItem);
          end
          else
          begin
            if curid=left(Trim(FieldByName('MenuName').AsString),2) then
            begin
              MainMenuItem.Name:= Trim(FieldByName('MenuName').AsString);
              MainMenuItem.Caption:= Trim(FieldByName('Caption').AsString);
              MainMenu1.Items[level].Add(MainMenuItem);
            end;
          end;
        end;
      end;
    finally;
      close;
    end;
  end;
end;

end;

没试，大概改了下。对不符合规顶的记录没有处理  


来自：hongxing_dl, 时间：2004-9-8 13:34:47, ID：2798341
这个问题还没解决吗？？？几天前看到的，那时候写好了都没发出去就断网了，今天再发：

首先放一个MainMenu在窗体上：
procedure TForm1.FormCreate(Sender: TObject);
var
  mi,mi_sub:tmenuitem;
  mi_name:string;
begin
  dataset.close;
  //这里将数据查询出来//我用dataset来代替,可以照dlwzp说的排个序
  dataset.open;
  while not dataset.eof do
  begin
    mi_sub:=tmenuitem.create(self);
    mi_sub.caption:=dataset.fieldbyname('caption').asstring;
    mi_sub.name:='Menu_'+dataset.fieldbyname('SetID').asstring;
    mi_name:=copy(mi_sub.name,1,length(mi_sub.name)-2);
    mi:=nil;
    if findcomponent(mi_name)<>nil then
      mi:= findcomponent(mi_name) as tmenuitem;
    if mi=nil then//表示没有父类菜单，则添加到主菜单，否则添加到相应的菜单下面
        mainmenu1.Items.Add(mi)
    else
        mi.add(mi_sub);
    dataset.next;//下一项菜单
  end;
end;
可能不是很全面，楼主自己再强化一下吧：） 已经很简化了  


来自：oupj, 时间：2004-9-8 15:24:06, ID：2798563
感谢上面2位朋友的帮助
但很可惜，都不行，：）  


来自：zhfree, 时间：2004-9-8 15:36:21, ID：2798578
朋友再多加个字段，最终类似：id，父id，name，。。。。
目录项的记录父id都为零，子项记录的父id记录上级记录的id；
最后一个select语句，一个循环，配合菜单项的创建即可完成  


来自：flamboyant, 时间：2004-9-9 15:39:58, ID：2800177
procedure TFrm_Main.LoadMainMenu;
var
    curID: String;
    level: Integer;
     MenuItem: TMenuItem;
begin
  //初始化变量
  level:=-1 ;
  curID:= '';
  //遍历数据表，利用编码字段记录排序规律，依次添加
  with CDS_Sys_Menu do
  begin
    try
      Close;
      CommandText:= 'Select * from Sys_Menu order by SeptID';
      Open;
      First;
      while not eof do
      begin
        MenuItem:= TMenuItem.Create(self);

        begin
          if length(trim(FieldByName('SeptID').AsString))=2 then
          begin
            curID:=Trim(FieldByName('SeptID').AsString);
            level:=level+1;
            MenuItem.Name:= Trim(FieldByName('MenuName').AsString);
            MenuItem.Caption:= Trim(FieldByName('Caption').AsString);
            MainMenu1.Items.Add(MenuItem);
          end
          else
          begin
            if curid=leftstr(Trim(FieldByName('SeptID').AsString),2) then
            begin
              MenuItem.Name:= Trim(FieldByName('MenuName').AsString);
              MenuItem.Caption:= Trim(FieldByName('Caption').AsString);
              MainMenu1.Items[level].Add(MenuItem);
            end;
          end;
        end;
        next;
      end;
    finally;
      close;
    end;
  end;
end;
这次试过了，就是排除了几个低级错误。楼主应该有点探索精神，自己动动手，  


来自：oupj, 时间：2004-9-10 8:28:06, ID：2800976
楼上的你请试清楚
不是我懒，而是你的代码不能生成多级菜单  


}

{

父类 protected 里申明的变量或函数对他的子类是开放的，其他的类是不能访问的。

}
