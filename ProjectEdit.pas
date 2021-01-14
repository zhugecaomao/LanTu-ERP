unit ProjectEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, ADODB, DB,
  DBCtrlsEh, DBLookupEh;

type
  TProjectEditForm = class(TBaseInfoEditForm)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    QBaseInfo: TADOQuery;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    dsBaseInfo: TDataSource;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    Label10: TLabel;
    DBEditEh5: TDBEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Label12: TLabel;
    DBEditEh10: TDBEditEh;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DBEditEh4DblClick(Sender: TObject);
  private
    procedure ShowMoneny;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProjectEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, Project;

{$R *.dfm}

procedure ShowProjectEditForm(ADOQuery: TADOQuery; State1: string);
var
  ProjectEditForm: TProjectEditForm;
begin
  ProjectEditForm:= TProjectEditForm.Create(Nil);
  ProjectEditForm.FADOQuery:= ADOQuery;

    if State1 = 'dsEdit' then
//      if not ServerEditForm.ADOQuery1.IsEmpty then
        ProjectEditForm.FADOQuery.Edit;

    if State1 = 'dsInsert' then
      ProjectEditForm.FADOQuery.Append;

  ProjectEditForm.ShowModal;

end;

procedure TProjectEditForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

procedure TProjectEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;

end;

procedure TProjectEditForm.btnOKClick(Sender: TObject);
begin

  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name], [DBEditEh1.Name, DBEditEh2.Name])
    then Exit;
  inherited;    
end;

procedure TProjectEditForm.ShowMoneny;
var
  S: string;
  DTotal: Double;
  ADOQryTmp: TADOQuery;
begin
  S:= FADOQuery.FieldByName('项目编号').AsString;

  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);

  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From 服务项目包 Where 项目编号= '+ QuotedStr(S)+' Order by ID');
  ADOQryTmp.Open;

  ADOQryTmp.First;
  DTotal:= 0;
  while not ADOQryTmp.Eof do
  begin
    DTotal:= DTotal + ADOQryTmp.FieldByName('单价').AsFloat * ADOQryTmp.FieldByName('长度').AsFloat; 
    ADOQryTmp.Next;
  end;

  if FADOQuery.FieldByName('是否打包').AsBoolean then
    Label13.Caption:= '总价格为:' +FloatToStr(DTotal)
  else
    Label13.Caption:= '';

end;

procedure TProjectEditForm.DBEditEh4DblClick(Sender: TObject);
begin
  inherited;
  ShowMoneny;
end;

end.
