unit UserLimit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, Buttons, ExtCtrls, BaseMdi, DB, ADODB, Grids,  DBGridEh,
  ComCtrls, ToolWin;

type
  TUserLimit1Form = class(TBaseMdiForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbsSep2: TToolButton;
    tbsPri: TToolButton;
    tbsSep3: TToolButton;
    tbsExi: TToolButton;
    Splitter1: TSplitter;
    ADOQuery2ID: TAutoIncField;
    ADOQuery2DSDesigner: TWideStringField;
    ADOQuery2DSDesigner2: TWideStringField;
    ADOQuery2DSDesigner3: TWideStringField;
    ADOQuery2DSDesigner4: TWideStringField;
    ADOQuery2DSDesigner5: TBooleanField;
    ADOQuery2DSDesigner6: TBooleanField;
    ADOQuery2DSDesigner7: TBooleanField;
    ADOQuery2DSDesigner8: TBooleanField;
    ADOQuery2DSDesigner9: TBooleanField;
    ADOQuery2DSDesigner10: TBooleanField;
    ADOQuery2DSDesigner11: TBooleanField;
    ADOQuery2DSDesigner12: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbsExiClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure ADOQuery2DSDesigner12Change(Sender: TField);
  private
    procedure GetEveryLimit;
    procedure ShowLimitData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserLimit1Form: TUserLimit1Form;

implementation

uses DataM, SysPublic, PassEdit1;

{$R *.dfm}

{ TUserLimit1Form }

procedure TUserLimit1Form.FormShow(Sender: TObject);
begin
  inherited;
  if not ADOQuery1.Active then
    ADOQuery1.Open;
end;

procedure TUserLimit1Form.GetEveryLimit;
var
  s: string;
  ADOQryTmp: TADOQuery;
  ADOQryTmp1: TADOQuery;
begin
  s:= ADOQuery1.FieldByName('员工编号').AsString;

  ADOQryTmp1:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp1);

  ADOQryTmp1.Close;
  ADOQryTmp1.SQL.Clear;
  ADOQryTmp1.SQL.Add('Select * From 权限设置 Where 员工编号='+QuotedStr(s)+' Order by ID');
  ADOQryTmp1.Open;

  if ADOQryTmp1.FieldByName('员工编号').AsString ='Admin' then
    DBGridEh2.ReadOnly :=True
  else
    DBGridEh2.ReadOnly :=False;

  if ADOQryTmp1.RecordCount>=1 then Exit; 

  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select* From 窗体模块 Order by ID');
  ADOQryTmp.Open;



  ADOQryTmp.First;
  while not ADOQryTmp.Eof do
  begin
    ADOQryTmp1.Append;
    ADOQryTmp1.FieldByName('员工编号').AsString := ADOQuery1.FieldByName('员工编号').AsString;
    ADOQryTmp1.FieldByName('员工姓名').AsString := ADOQuery1.FieldByName('员工姓名').AsString;
    ADOQryTmp1.FieldByName('窗体名称').AsString := ADOQryTmp.FieldByName('窗体名称').AsString;
    ADOQryTmp1.FieldByName('窗体标题').AsString := ADOQryTmp.FieldByName('窗体标题').AsString;
    ADOQryTmp1.FieldByName('新增').AsBoolean:= True;
    ADOQryTmp1.FieldByName('修改').AsBoolean:= True;
    ADOQryTmp1.FieldByName('删除').AsBoolean:= True;
    ADOQryTmp1.FieldByName('查找').AsBoolean:= True;
    ADOQryTmp1.FieldByName('过滤').AsBoolean:= True;
    ADOQryTmp1.FieldByName('打印').AsBoolean:= True;
    ADOQryTmp1.FieldByName('导出').AsBoolean:= True;
    ADOQryTmp1.FieldByName('模块权限').AsBoolean:= True;

    ADOQryTmp1.Post;
    ADOQryTmp.Next;
  end;

  ADOQryTmp.Close;
  ADOQryTmp.Free;

end;

procedure TUserLimit1Form.ShowLimitData;
var
  s: string;
begin
  if ADOQuery2.State in [dsEdit] then
    ADOQuery2.Post;
  s:= ADOQuery1.FieldByName('员工编号').AsString;
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('Select * From 权限设置 Where 员工编号='+QuotedStr(S) +' Order by ID');
  ADOQuery2.Open;
end;

procedure TUserLimit1Form.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  GetEveryLimit;
  ShowLimitData;
end;

procedure TUserLimit1Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if ADOQuery2.State in [dsEdit] then
    ADOQuery2.Post;
end;

procedure TUserLimit1Form.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUserLimit1Form.tbsPriClick(Sender: TObject);
begin
  inherited;
  ShowPassEdit1Form(ADOQuery1);
end;

procedure TUserLimit1Form.ADOQuery2DSDesigner12Change(Sender: TField);
begin
  inherited;
  if ADOQuery2.State in [dsEdit] then
    if ADOQuery2.FieldByName('模块权限').AsBoolean = False then
    begin
      ADOQuery2.FieldByName('新增').AsBoolean:= False;
      ADOQuery2.FieldByName('修改').AsBoolean:= False;
      ADOQuery2.FieldByName('删除').AsBoolean:= False;
      ADOQuery2.FieldByName('查找').AsBoolean:= False;
      ADOQuery2.FieldByName('过滤').AsBoolean:= False;
      ADOQuery2.FieldByName('打印').AsBoolean:= False;
      ADOQuery2.FieldByName('导出').AsBoolean:= False;

    end;
end;

end.
