//窗体基类
//包括控制窗体的状态和系统日志

unit Base;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, Grids, Menus, PrintForm;

type
  TBaseForm = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    function ReadSaveForm: Boolean;
    function WriteSaveForm: Boolean;
  protected
    bOperateLog: Boolean;
    bReadSaveForm: Boolean;
    bWriteSaveForm: Boolean;

    bReadDBGridEhAutoFitColWidth: Boolean;
    bReadDBGridEhFlat: Boolean;
    bReadDBEditFlat: Boolean;
    iModuleID: Integer;
    sFunctionName: String;

    procedure SetSencondTitle;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  BaseForm: TBaseForm;

implementation

uses SysPublic, DataM;

{$R *.dfm}

procedure TBaseForm.FormShow(Sender: TObject);
begin
  if bReadSaveForm then ReadSaveForm;
  if bReadDBGridEhAutoFitColWidth then ReadDBGridEhAutoFitColWidth(Self);
  if bReadDBGridEhFlat then ReadDBGridEhFlat(Self);
  if bReadDBEditFlat then ReadDBEditFlat(Self);
  SetSencondTitle;
end;

procedure TBaseForm.FormCreate(Sender: TObject);
begin
  bOperateLog := True;
  bReadSaveForm:= True;
  bWriteSaveForm:= True;
  bReadDBGridEhAutoFitColWidth:= True;
  bReadDBGridEhFlat:= True;
  bReadDBEditFlat:= True;
end;

function TBaseForm.ReadSaveForm: Boolean;
var
  sState, sSql: string;
  ADOQryTmp: TADOQuery;
begin
  Result:= False;
  ADOQryTmp := TADOQuery.Create(nil);
  GetConn(ADOQryTmp);
  sSql := ' SELECT * FROM 窗体状态表 WHERE 标题=''' + Caption + ''' and 用户编码='''+LoginEmployeCode+'''';

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add(sSql);
  ADOQryTmp.Open;

  if not ADOQryTmp.IsEmpty then
  begin
    sState := ADOQryTmp.FieldByName('状态').AsString;
    Top := ADOQryTmp.FieldByName('上').AsInteger;
    Left := ADOQryTmp.FieldByName('左').AsInteger;
    if Trim(sState) = 'wsMinimized' then
      Self.WindowState := wsMinimized
    else
      if Trim(sState) = 'wsMaximized' then
        Self.WindowState := wsMaximized
      else
      begin
        Self.WindowState := wsNormal;
        Width := ADOQryTmp.FieldByName('宽').AsInteger;
        Height := ADOQryTmp.FieldByName('高').AsInteger;
      end;
  end;
  ADOQryTmp.Close;
  ADOQryTmp.Free;
  Result:= True;
end;

function TBaseForm.WriteSaveForm: Boolean;
var
  sSql, sState: string;
  ADOQryTmp: TADOQuery;
begin
  Result:= False;
  //动态创建ADOQ与连接ADOConnection
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  if Self.WindowState = wsNormal then
    sState := 'WsNormal'
  else
    if Self.WindowState = wsMinimized then
      sState := 'wsMinimized'
    else
      if Self.WindowState = wsMaximized then
        sState := 'wsMaximized'
      else
        sState := '';
  sSql := ' SELECT * FROM 窗体状态表 WHERE 标题=''' + Caption + ''' and 用户编码='''+LoginEmployeCode+'''';

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add(sSql);
  ADOQryTmp.Open;

  if ADOQryTmp.RecordCount < 1 then
    sSql := 'INSERT INTO 窗体状态表(用户编码, 标题,上,左,宽,高,状态)'
      + 'VALUES('''+LoginEmployeCode+''', ''' + Caption + ''',' + IntToStr(Top) + ',' + IntToStr(Left) + ',' +
      IntToStr(Width) + ',' + IntToStr(Height) + ',''' + sState + ''')'
  else
  begin
    if Self.WindowState = wsNormal then
      sSql := ' UPDATE 窗体状态表 Set 上=' + IntToStr(Top) + ',左=' +
        IntToStr(Left) +
        ',宽=' + IntToStr(Width) + ',高=' + IntToStr(Height) +
        ',状态=''' + sState + ''' Where 标题=''' + Caption + ''' and 用户编码='''+LoginEmployeCode+''''
    else
      sSql := ' UPDATE 窗体状态表 Set 状态=''' + sState + ''' Where 标题=''' + Caption + ''' and 用户编码='''+LoginEmployeCode+'''';
   end;
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add(sSql);
  ADOQryTmp.ExecSQL;
  ADOQryTmp.Close;
  ADOQryTmp.Free;
  Result:= True;
end;

procedure TBaseForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if bWriteSaveForm then WriteSaveForm;
  if bOperateLog  then SaveOperateLog(Caption);
end;

constructor TBaseForm.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TBaseForm.Destroy;
begin
  inherited;
end;

procedure TBaseForm.SetSencondTitle;
var
  i: integer;
  ADOQryTmp: TADOQuery;
  S: string;
begin
{  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select 用户名称 From 用户资料');
  ADOQryTmp.Open;

  S:= ADOQryTmp.FieldByName('用户名称').AsString;}

  S:= '蓝图财务进销存';

  for i:=0 to ComponentCount-1 do
  begin  { 遍历Form组件 }
      if Components[i] is TPrintForm then
      begin
        (Components[i] as TPrintForm).Title:= '';
        (Components[i] as TPrintForm).Title := S;
      end;
  end;
//  ADOQryTmp.Close;
//  ADOQryTmp.Free;
end;

end.
