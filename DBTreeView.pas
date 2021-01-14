unit DBTreeView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, ComCtrls, ADODB, DB, ImgList, StdCtrls, Buttons;

type
  TDBTreeViewForm = class(TBaseForm)
    TreeView1: TTreeView;
    ADOQuery1: TADOQuery;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    function LoadCode(ADOQueryTmp : TDataSet):Integer;
    function GetLevel(sFormat,sCode:String):Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBTreeViewForm: TDBTreeViewForm;

const
  SCodeFormat = '322222';   //科目代码结构
  SFirstNodeTxt = '现金银行帐户';   //首节点显示的文字

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure TDBTreeViewForm.FormCreate(Sender: TObject);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('Select * From DBTreeView');
  ADOQuery1.Open;
  LoadCode(ADOQuery1);
end;

function TDBTreeViewForm.GetLevel(sFormat, sCode: String): Integer;
var
  i,Level,iLen:Integer;
begin
  Level:=-1;//如果代码不符合标准，则返回-1
  iLen:=0;
  if (sFormat<>'')and(sCode<>'')then
  for i:=1 to Length(sFormat) do
  begin
    iLen:=iLen+StrToInt(sFormat[i]);
    if Length(sCode)=iLen then
    begin
      Level:=i;
      Break;
    end;
  end;
  Result:=Level;
end;
//上面函数的功能是返回一代码的级数

//以下函数是本文的重点部分，其主要功能是用一循环将Code.db表中的
//科目代码和科目代码名称显示出来
function TDBTreeViewForm.LoadCode(ADOQueryTmp: TDataSet): Integer;
var
  NowID,sName,ShowTxt:String;
  i,Level:Integer;
  MyNode:array[0..6]of TTreeNode;
  //保存各级节点，最长支持6级(重点)
begin
  Screen.Cursor:=crHourGlass;
  Level:=0;
  With ADOQueryTmp do
  begin
    try
    if not ADOQueryTmp.Active then Open;
    First;
    TreeView1.Items.Clear;
    //以下是增加第一项
    MyNode[Level]:=TreeView1.Items.Add(TreeView1.TopItem,SFirstNodeTxt);
//    MyNode[Level].ImageIndex:=0;
//    MyNode[Level].SelectedIndex:=0;
    //以上是增加第一项
    While Not ADOQueryTmp.Eof do
    begin
      NowID:=Trim(FieldByName('aCode').AsString);
      ShowTxt:=NowID+' '+FieldByName('aName').AsString;
      Level:=GetLevel(SCodeFormat,NowID);
      //返回代码的级数
      //以下是增加子项
      //以下用上一级节点为父节点添加子节点
      if Level>0 then//确保代码符合标准
      begin
        MyNode[Level]:=TreeView1.Items.AddChild(MyNode[Level-1],ShowTxt);
//        MyNode[Level].ImageIndex:=1;
//        MyNode[Level].SelectedIndex:=2;
      end;
    //以上是增加子项
      Next;
    end;
    finally
     Close;
    end;
  end;
  MyNode[0].Expand(False);//将首节点展开
  Screen.Cursor:=crDefault;
end;
//以上函数将Code.db表中的科目代码和科目代码名称显示出来

procedure TDBTreeViewForm.TreeView1GetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
 if Node.HasChildren then
        if Node.Expanded then
            Node.ImageIndex := 17   //节点有子节点时打开的图标
        else
            Node.ImageIndex := 16   //节点有子节点时收起来的图标
    else Node.ImageIndex := 16;     //节点没有子节点时图标
end;

procedure TDBTreeViewForm.TreeView1GetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex := Node.ImageIndex;   //节点选择后使用的图标
end;

procedure TDBTreeViewForm.TreeView1Click(Sender: TObject);
var
  s, sID, sSql, sFirst, sLast, sCode : string;
  Llevel, iID : integer;
  ADOQryTmp: TADOQuery;
begin
  inherited;
  //选取节点的TEXT
  s := TreeView1.Selected.Text;
  //取出编号
  sID := Trim(Copy(s, 0, Pos(' ', s)-1));
  //娶编号的长度
  Llevel:= Length(sID);

  sFirst:= Copy(sID, 1, Length(sID)-2);


  if lLevel = 3 then
    sSql:= 'Select Max(aCode) as acode From DBTreeView where len(acode)='+IntToStr(Llevel)
  else
    sSql:= 'Select Max(aCode) as aCode From DBTreeView Where aCode like '+QuotedStr(sFirst+'__');

  //把此编号长度的最大值
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add(sSql);
  ADOQryTmp.Open;

  sCode:= ADOQryTmp.FieldByName('aCode').AsString;

  Edit2.Text := sFirst;

  sLast:= Copy(sCode, Length(sCode)-1, Length(sCode));

  Edit3.Text:= formatfloat('00',StrToInt(sLast)+1);

  ADOQryTmp.Close;
  ADOQryTmp.Free;
end;

procedure TDBTreeViewForm.BitBtn1Click(Sender: TObject);
var
  ADOQryTmp: TADOQuery;
  s: string;
begin
  inherited;
  s:= Trim(Edit2.Text) + Trim(Edit3.Text);
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Insert Into DBTreeView(aCode, aName) Values(:aCode, :aName)');
  ADOQryTmp.Parameters.ParamByName('aCode').Value := Trim(s);
  ADOQryTmp.Parameters.ParamByName('aName').Value := Trim(Edit4.Text);
  ADOQryTmp.ExecSQL;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('Select * From DBTreeView');
  ADOQuery1.Open;
  LoadCode(ADOQuery1);

end;

end.
