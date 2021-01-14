unit UserLimit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, ComCtrls, StdCtrls, BaseMdi, Grids, DBGridEh, DB,
  ADODB, ExtCtrls, ToolWin, Buttons, CheckTV;

type
  TUserLimitForm = class(TBaseNormalForm)
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    DBGridEh1: TDBGridEh;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbASel: TToolButton;
    tbRef: TToolButton;
    tbSep1: TToolButton;
    tbsSep2: TToolButton;
    tbADel: TToolButton;
    tbPwd: TToolButton;
    tbsExi: TToolButton;
    Splitter1: TSplitter;
    tbSav: TToolButton;
    CheckTreeView1: TCheckTreeView;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure tbsExiClick(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure tbASelClick(Sender: TObject);
    procedure tbADelClick(Sender: TObject);
    procedure tbSavClick(Sender: TObject);
    procedure tbRefClick(Sender: TObject);
    procedure tbPwdClick(Sender: TObject);
  private
    procedure MenuToList;
    //mainMenu
    procedure ShowMenuToTree;
    procedure AddTreeToData;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowUserLimitForm;

implementation

uses SysPublic, Main, DataM, PassEdit;

{$R *.dfm}

procedure ShowUserLimitForm;
var
  UserLimitForm: TUserLimitForm;
begin
  UserLimitForm:= TUserLimitForm.Create(Nil);
  UserLimitForm.ShowModal;
end;

procedure TUserLimitForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;

  ShowMenuToTree;    
end;

procedure TUserLimitForm.MenuToList;
var
  i, j, m, n: integer;
begin
{  for i:=0 to MainForm.MainMenu1.Items.Count-1 do
    with TTabSheet.Create(self) do
    begin
      PageControl:= PageControl1;
      m:= 0;
      n:=0;
      for j:=0 to MainForm.MainMenu1.Items[i].Count -1 do
      if MainForm.MainMenu1.Items[i].Items[j].Caption<> '-' then
      begin
        with TCheckBox.Create(self) do
        begin
          parent:=PageControl.Pages[i];
          Left := m * 120 + 20;
          Top:= n * 30 + 5;
          Name:= MainForm.MainMenu1.Items[i].Items[j].Name;
          Caption := MainForm.MainMenu1.Items[i].Items[j].Caption;
          if m >= 3 then
          begin
            m := 0;
            Inc(n)
          end
          else
            Inc(m);
        end;
      end;
      Name:= 'TabSheet' + IntToStr(i);
      Caption := MainForm.MainMenu1.Items[i].Caption;
    end;}
end;

procedure TUserLimitForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUserLimitForm.TreeView1Click(Sender: TObject);
var
s1:string;
begin
  inherited;
{s1:=CheckTreeView1.Selected.Text;//中结点
with ADOQryLimit do
begin
close;
sql.clear;
sql.Add('select * from 权限 where 户名 like:v_cd');
ADOQryLimit.Parameters.ParamByName('v_cd').Value :=edit2.text+'%'+s1;
open; 
end;}
end;

procedure TUserLimitForm.ShowMenuToTree;
var
  i,j:integer;
  mynode:ttreenode;
begin
  with CheckTreeView1 do
  for I:= 0 to MainForm.MainMenu1.Items.Count-1 do
  begin
    mynode:=items.Add(nil,MainForm.MainMenu1.items[i].Caption);
    for j:=0 to MainForm.MainMenu1.items[i].count-1 do
    if MainForm.MainMenu1.Items[i].Items[j].Caption<> '-' then  //除去-
    begin
      Items.AddChild(mynode,MainForm.MainMenu1.Items[i].Items[j].Caption);
    end;
  end;
end;


procedure TUserLimitForm.AddTreeToData;
var
  i,j,a1:integer;
  ADOQryLimit: TADOQuery;
begin
  ADOQryLimit:= TADOQuery.Create(Nil);
  GetConn(ADOQryLimit);
  with ADOQryLimit do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Delete From 权限表 Where 用户编号=:param');
    Parameters.ParamByName('param').Value := QBaseInfo.FieldByName('员工编号').AsString;
    ExecSQL;
  end;

  with ADOQryLimit do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * From 权限表 Order by ID');
    Open;
  end;

  ADOQryLimit.First;
  ADOQryLimit.Active:=true;
  a1:= CheckTreeView1.Items.count-1;//Treeview1中的总结点数

  for i:=0 to a1 do
  begin
    if i=0 then //如果是第一个结点
    begin
      ADOQryLimit.Insert;
      ADOQryLimit.FieldByName('菜单项目').asstring:= CheckTreeView1.Items[i].Text;
    end
    else
    if CheckTreeView1.Items[i].Index =0 then //如果是某个结点中的第一个子结点
    begin
      j:=i-1;
      ADOQryLimit.insert;
      ADOQryLimit.FieldByName('菜单项目').asstring:=CheckTreeView1.Items[i].Text;  //CheckTreeView1.Items[j].Text+'-'+
    end
    else
    if copy(CheckTreeView1.Items[i].Text,1,1)<>'&' then //如果不是父结点
    begin
      j:=i-CheckTreeView1.Items[i].Index-1;
      ADOQryLimit.insert;
      ADOQryLimit.FieldByName('菜单项目').asstring:=CheckTreeView1.Items[i].Text;    //CheckTreeView1.Items[j].Text+'-'+
    end
    else
    if copy(CheckTreeView1.Items[i].Text,1,1)='&' then  //如果是父结点
    begin
      ADOQryLimit.insert;
      ADOQryLimit.FieldByName('菜单项目').asstring:=CheckTreeView1.Items[i].Text;
    end;



    ADOQryLimit.FieldByName('菜单横').AsInteger:= i;
    ADOQryLimit.FieldByName('权限').AsBoolean:=CheckTreeView1.Checked[CheckTreeView1.Items.Item[i]];
    ADOQryLimit.FieldByName('用户编号').AsString:= QBaseInfo.FieldByName('员工编号').AsString;
    ADOQryLimit.FieldByName('用户名称').AsString:=QBaseInfo.FieldByName('员工姓名').AsString;
    ADOQryLimit.Post; 

end;
end;

procedure TUserLimitForm.FormCreate(Sender: TObject);
begin
  inherited;
  bOperateLog:= False;
end;

procedure TUserLimitForm.CheckTreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  ADOQryTmp: TADOQuery;
  S: string;
begin
  inherited;
  tbSavClick(Self);
{  S:= QBaseInfo.FieldByName('员工编号').AsString;
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('UPdate 权限表 Set 权限=:param where 用户编号='+ S +'and 菜单项目=' + QuotedStr(Node.Text));
  ADOQryTmp.Parameters.ParamByName('param').Value:= CheckTreeView1.Checked[Node];
  ADOQryTmp.ExecSQL;}


end;

procedure TUserLimitForm.tbASelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i:=0 to CheckTreeView1.Items.Count-1 do
  CheckTreeView1.Checked[CheckTreeView1.Items.Item[i]]:= True;
end;

procedure TUserLimitForm.tbADelClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i:=0 to CheckTreeView1.Items.Count-1 do
  CheckTreeView1.Checked[CheckTreeView1.Items.Item[i]]:= False;
end;

procedure TUserLimitForm.tbSavClick(Sender: TObject);
begin
  inherited;
  AddTreeToData;
end;

procedure TUserLimitForm.tbRefClick(Sender: TObject);
begin
  inherited;
  QBaseInfo.Filter:= '';  
end;

procedure TUserLimitForm.tbPwdClick(Sender: TObject);
begin
  inherited;
  ShowPassEditForm(QBaseInfo);
end;

end.
