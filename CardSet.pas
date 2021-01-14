unit CardSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin, FR_Desgn;

type
  TCardSetForm = class(TBaseInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TFloatField;
    QBaseInfoDSDesigner4: TFloatField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TBCDField;
    QBaseInfoDSDesigner7: TBCDField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner8: TIntegerField;
    QBaseInfoDSDesigner9: TIntegerField;
    QBaseInfoDSDesigner10: TBooleanField;
    QBaseInfoDSDesigner11: TBooleanField;
    QBaseInfoDSDesigner12: TBooleanField;
    QBaseInfoDSDesigner13: TBooleanField;
    QBaseInfoDSDesigner14: TBooleanField;
    QBaseInfoDSDesigner15: TBooleanField;
    QBaseInfoDSDesigner16: TBooleanField;
    QBaseInfoDSDesigner17: TBooleanField;
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure QBaseInfoBeforePost(DataSet: TDataSet);
    procedure QBaseInfoDSDesigner10GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QBaseInfoDSDesigner11SetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CardSetForm: TCardSetForm;

implementation

uses SysPublic, CardSetEdit;

{$R *.dfm}

procedure TCardSetForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    showmessage('卡级编号重复，请重新输入');
    abort;
  end;
end;

procedure TCardSetForm.tbInsClick(Sender: TObject);
begin
  inherited;
  if not SysRightLimit('CardSetForm', lInsert) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowCardSetEditForm(QBaseInfo, 'dsInsert');
end;

procedure TCardSetForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  if not SysRightLimit('CardSetForm', lEdit) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowCardSetEditForm(QBaseInfo, 'dsEdit');
end;

procedure TCardSetForm.tbDelClick(Sender: TObject);
var
  sdel:string;
  ADOQryTmp1, ADOQryTmp2: TADOQuery;
begin
  if not SysRightLimit('CardSetForm', lDelete) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  sdel:= QBaseInfo.Fieldbyname('卡级编号').AsString;
  ADOQryTmp1:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp1);
  with ADOQryTmp1 do
  begin
    close;
    sql.Clear;
    sql.Add('select count(*) as Rec from 项目卡级价格 where 卡级编号='''+sdel+'''');
    open;
  end;
  if ADOQryTmp1.FieldByName('Rec').AsInteger>0 then
  begin
    MsgBox('该卡级编号在项目中已经使用，不能直接删除！', MB_OK);
    ADOQryTmp1.Close;
    Exit;
  end;
  ADOQryTmp1.Free;

  ADOQryTmp2:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp2);
  with ADOQryTmp2 do
  begin
    close;
    sql.Clear;
    sql.Add('select count(*) as Rec from 产品卡级价格 where 卡级编号='''+sdel+'''');
    open;
  end;
  if ADOQryTmp2.FieldByName('Rec').AsInteger>0 then
  begin
    MsgBox('该卡级编号在产品中已经使用，不能直接删除！', MB_OK);
    ADOQryTmp2.Close;
    Exit;
  end;
  ADOQryTmp2.Free;
  inherited;

end;

procedure TCardSetForm.tbFinClick(Sender: TObject);
begin
  if not SysRightLimit('CardSetForm', lFind) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TCardSetForm.tbsFitClick(Sender: TObject);
begin

  if not SysRightLimit('CardSetForm', lFilter) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;
  inherited;

end;

procedure TCardSetForm.tbsPriClick(Sender: TObject);
begin
  if not SysRightLimit('CardSetForm', lPrint) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;
  inherited;

end;

procedure TCardSetForm.tbsSavClick(Sender: TObject);
begin
  if not SysRightLimit('CardSetForm', lExport) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;
  inherited;

end;

procedure TCardSetForm.QBaseInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QBaseInfo.FieldByName('打折').AsBoolean= False) and
    (QBaseInfo.FieldByName('预存享受打折').AsBoolean= False) and
    (QBaseInfo.FieldByName('积分换奖品').AsBoolean= False) and
    (QBaseInfo.FieldByName('批购优惠').AsBoolean= False) and
    (QBaseInfo.FieldByName('消费返点').AsBoolean= False) and
    (QBaseInfo.FieldByName('信用/挂账').AsBoolean= False) and
    (QBaseInfo.FieldByName('贵宾待遇').AsBoolean= False) and
    (QBaseInfo.FieldByName('会员升级').AsBoolean= False) then
    begin
      ShowMsg('必须选择一项营销规则！');
      Abort;
    end;
end;

procedure TCardSetForm.QBaseInfoDSDesigner10GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if sender.AsBoolean= True then
    text:='是'
  else
    text:='否';
end;

procedure TCardSetForm.QBaseInfoDSDesigner11SetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text ='是' then
    Sender.AsBoolean:= True
  else
    Sender.AsBoolean := False;
end;

end.
