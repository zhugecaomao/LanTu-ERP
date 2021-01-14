unit ProductType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGridEh, ComCtrls, ToolWin, BaseInfo, BaseEdit,
  PrintForm;

type
  TProductTypeForm = class(TBaseInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner3: TStringField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure tbDelClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected

  public
    { Public declarations }
  end;

var
  ProductTypeForm: TProductTypeForm;

implementation

uses SysPublic, ProductTypeEdit;

{$R *.dfm}

procedure TProductTypeForm.tbInsClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProductTypeForm', lInsert) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowProductTypeEditForm(QBaseInfo, 'dsInsert');
end;

procedure TProductTypeForm.tbEdiClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProductTypeForm', lEdit) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowProductTypeEditForm(QBaseInfo, 'dsEdit');
end;

procedure TProductTypeForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    showmessage('类别编号重复，请重新输入');
    abort;
  end;
end;

procedure TProductTypeForm.tbDelClick(Sender: TObject);
var
  sdel:string;
  ADOQryTmp: TADOQuery;
begin

  if not SysRightLimit('ProductTypeForm', lDelete) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  sdel:= QBaseInfo.Fieldbyname('类别编号').AsString;
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  with ADOQryTmp do
  begin
    close;
    sql.Clear;
    sql.Add('select count(*) as Rec from 产品资料 where 类别编号='''+sdel+'''');
    open;
  end;
  if ADOQryTmp.FieldByName('Rec').AsInteger>0 then
  begin
    MsgBox('该产品类别在系统已经使用，不能直接删除！', MB_OK);
    ADOQryTmp.Close;
    Exit;
  end;
  ADOQryTmp.Free;
  inherited;

end;

procedure TProductTypeForm.tbFinClick(Sender: TObject);
begin

  if not SysRightLimit('ProductTypeForm', lFind) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProductTypeForm.tbsFitClick(Sender: TObject);
begin

  if not SysRightLimit('ProductTypeForm', lFilter) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProductTypeForm.tbsPriClick(Sender: TObject);
begin

  if not SysRightLimit('ProductTypeForm', lPrint) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProductTypeForm.tbsSavClick(Sender: TObject);
begin

  if not SysRightLimit('ProductTypeForm', lExport) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProductTypeForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('类别编号').AsString:= SetID('cp','类别编号', '产品类别', 3,6);
end;

end.
