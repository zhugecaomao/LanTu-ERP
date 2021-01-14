unit PageCount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DB, ADODB, DBGrids, StdCtrls;

type
  TPageCountForm = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure bbNextClick(Sender: TObject);
    procedure bbPriorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageCountForm: TPageCountForm;
  n: integer;

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure TPageCountForm.bbNextClick(Sender: TObject);
var
  lCount, ln: integer;
  s: string;
begin
{  if n*10=StrToInt(Copy(Label1.Caption, Pos('：', Label1.Caption)+2, Length(Label1.Caption))) then
  begin
    ShowMessage('已经是最后一页！');
    exit;
  end;}
  try
  Screen.Cursor:= crSQLWait;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Top 10 * from 商品基础信息表 where 编号 not in (select Top '+inttostr(n)+'编号 from 商品基础信息表 order by 编号) order by 编号');
  ADOQuery1.Open;
  finally
  Screen.Cursor:= crDefault;
  end;
  n:=n+10;
  lCount:= n Div 10;
  Label2.Caption:= '当前页数：' + IntToStr(lCount);
end;

procedure TPageCountForm.bbPriorClick(Sender: TObject);
var
  lCount: integer;
begin
  if (n=20) or (n=10) then
  begin
    ShowMessage('已经是最前一页！');
    Exit;
  end;
try
  Screen.Cursor:= crSQLWait;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Top 10 * from 商品基础信息表 where 编号 not in (select Top '+inttostr(n-20)+'编号 from 商品基础信息表 order by 编号) order by 编号');
  ADOQuery1.Open;
finally
  Screen.Cursor:= crDefault;
end;
  n:=n-10;
  lCount:= n Div 10;

  Label2.Caption:= '当前页数：' + IntToStr(lCount);
end;

procedure TPageCountForm.FormCreate(Sender: TObject);
begin
  n:= 10;
end;

procedure TPageCountForm.FormShow(Sender: TObject);
var
  lCount: integer;
  ADOQryTmp: TADOQuery;
begin
  try
  Screen.Cursor:= crSQLWait;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Top 10 * from 商品基础信息表 where 编号 not in (select Top 1 编号 from 商品基础信息表 order by 编号) order by 编号');
  ADOQuery1.Open;

  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select 编号 from 商品基础信息表');
  ADOQryTmp.Open;

  lCount:= ADOQryTmp.RecordCount Div N;

  Label1.Caption:= '总页数：' + IntToStr(lCount);
  Label2.Caption:= '当前页数：1';
  finally
    Screen.Cursor:= crDefault;
    ADOQryTmp.Close;
    ADOQryTmp.Free;
  end;
end;

end.
