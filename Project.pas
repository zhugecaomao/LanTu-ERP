unit Project;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo1, PrintForm, DB, ADODB, ExtCtrls, Grids, DBGridEh,
  ComCtrls, ToolWin, StdCtrls, Buttons;

type
  TProjectForm = class(TBaseInfo1Form)
    btnTime: TBitBtn;
    btnPrice: TBitBtn;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner4: TStringField;
    QBaseInfoDSDesigner5: TBCDField;
    QBaseInfoDSDesigner6: TFloatField;
    QBaseInfoDSDesigner7: TBCDField;
    QBaseInfoDSDesigner8: TFloatField;
    QBaseInfoDSDesigner9: TFloatField;
    QBaseInfoDSDesigner10: TStringField;
    QBaseInfoDSDesigner11: TIntegerField;
    btnpackage: TBitBtn;
    QBaseInfoDSDesigner12: TBooleanField;
    QBaseInfoDSDesigner13: TWideStringField;
    QBaseInfoDSDesigner3: TIntegerField;
    QBaseInfoDSDesigner14: TWideStringField;
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure btnTimeClick(Sender: TObject);
    procedure btnPriceClick(Sender: TObject);
    procedure btnpackageClick(Sender: TObject);
    procedure dsBaseInfoDataChange(Sender: TObject; Field: TField);
    procedure QBaseInfoBeforePost(DataSet: TDataSet);
    procedure QBaseInfoDSDesigner12SetText(Sender: TField;
      const Text: String);
    procedure QBaseInfoDSDesigner12GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure tbDelClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProjectForm: TProjectForm;

implementation

uses ProjectEdit, SysPublic, ProPackage,
  ProjectTime, ProjectPrice;

{$R *.dfm}

procedure TProjectForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    showmessage('服务项目编号重复，请重新输入');
    abort;
  end;
end;

procedure TProjectForm.tbInsClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectForm', lInsert) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowProjectEditForm(QBaseInfo, 'dsInsert');
end;

procedure TProjectForm.tbEdiClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectForm', lEdit) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowProjectEditForm(QBaseInfo, 'dsEdit');
end;

procedure TProjectForm.btnTimeClick(Sender: TObject);
begin
  inherited;
  OpenForm(TProjectTimeForm, ProjectTimeForm, Self);
end;

procedure TProjectForm.btnPriceClick(Sender: TObject);
begin
  inherited;
  OpenForm(TProjectPriceForm, ProjectPriceForm, Self);
end;

procedure TProjectForm.btnpackageClick(Sender: TObject);
begin
  inherited;
  OpenForm(TProPackageForm, ProPackageForm, Self);
end;

procedure TProjectForm.dsBaseInfoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnpackage.Enabled:= QBaseInfo.FieldByName('是否打包').AsBoolean;  
end;

procedure TProjectForm.QBaseInfoBeforePost(DataSet: TDataSet);
var
  i: integer;
  ADOQryTmp: TADOQuery;
begin
  inherited;
  i:= QBaseInfo.FieldByName('类别编号').AsInteger;
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From 项目类别 where ID=' + IntToStr(i));
  ADOQryTmp.Open;

  QBaseInfo.FieldByName('类别名称').AsString := ADOQryTmp.FieldByName('类别名称').AsString;
//  ADOQryTmp.Close;
//  ADOQryTmp.Free;
end;

procedure TProjectForm.QBaseInfoDSDesigner12SetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text ='是' then
    Sender.AsBoolean:= True
  else
    Sender.AsBoolean := False;
end;

procedure TProjectForm.QBaseInfoDSDesigner12GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if sender.AsBoolean= True then 
    text:='是'
  else
    text:='否';
end;

procedure TProjectForm.tbDelClick(Sender: TObject);
begin

  if not SysRightLimit('ProjectForm', lDelete) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProjectForm.tbFinClick(Sender: TObject);
begin

  if not SysRightLimit('ProjectForm', lFind) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProjectForm.tbsFitClick(Sender: TObject);
begin

  if not SysRightLimit('ProjectForm', lFilter) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProjectForm.tbsPriClick(Sender: TObject);
begin

  if not SysRightLimit('ProjectForm', lPrint) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

procedure TProjectForm.tbsSavClick(Sender: TObject);
begin

  if not SysRightLimit('ProjectForm', lExport) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  inherited;

end;

end.
