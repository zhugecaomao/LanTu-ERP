unit ShopInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TShopInfoForm = class(TBaseInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure tbEdiClick(Sender: TObject);
    procedure tbInsClick(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShopInfoForm: TShopInfoForm;

implementation

uses SysPublic, ShopInfoEdit, Main, Unit2;

{$R *.dfm}

procedure TShopInfoForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowMsg('部门编号重复，请重新输入');
    abort;
  end;
end;

procedure TShopInfoForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowShopInfoEditForm(QBaseInfo, 'dsEdit');
end;

procedure TShopInfoForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowShopInfoEditForm(QBaseInfo, 'dsInsert');
end;

procedure TShopInfoForm.tbDelClick(Sender: TObject);
var
  sdel:string;
  ADOQryTmp: TADOQuery;
begin
  sdel:= QBaseInfo.Fieldbyname('店面编号').AsString;
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  with ADOQryTmp do
  begin
    close;
    sql.Clear;
    sql.Add('select count(*) as Rec from 部门资料 where 店面编号='''+sdel+'''');
    open;
  end;
  if ADOQryTmp.FieldByName('Rec').AsInteger>0 then
  begin
    MsgBox('该店面在系统已经使用，不能直接删除！', MB_OK);
    ADOQryTmp.Close;
    Exit;
  end;
  ADOQryTmp.Free;

  inherited;  
end;

end.
