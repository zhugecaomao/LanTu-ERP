unit MemberManageEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrls, ADODB, DBCtrlsEh,
  DBLookupEh, DB;

type
  TMemberManageEditForm = class(TBaseInfoEditForm)
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
    Label10: TLabel;
    Label12: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    QBaseInfo: TADOQuery;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TFloatField;
    QBaseInfoDSDesigner4: TFloatField;
    QBaseInfoDSDesigner5: TWideStringField;
    dsBaseInfo: TDataSource;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner6: TBCDField;
    QBaseInfoDSDesigner7: TBCDField;
    Label13: TLabel;
    DBEditEh6: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowMemberManageEditForm(ADOQuery: TADOQuery; State1: string);

implementation

uses SysPublic, MemberManage;

{$R *.dfm}

procedure ShowMemberManageEditForm(ADOQuery: TADOQuery; State1: string);
var
  MemberManageEditForm: TMemberManageEditForm;
begin
{  MemberManageEditForm:= TMemberManageEditForm.Create(Nil);
  MemberManageEditForm.ADOQuery1:= ADOQuery;

    if State1 = 'dsEdit' then
        MemberManageEditForm.ADOQuery1.Edit;

    if State1 = 'dsInsert' then
      MemberManageEditForm.ADOQuery1.Append;
  MemberManageEditForm.ShowModal;}
end;

procedure TMemberManageEditForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

procedure TMemberManageEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name, Label13.Name], [DBEditEh1.Name, DBEditEh2.Name, DBEditEh6.Name])
    then Exit;
  inherited;

end;

procedure TMemberManageEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name, Label2.Name, Label13.Name], [DBEditEh1.Name, DBEditEh2.Name, DBEditEh6.Name])
    then Exit;
  inherited;

end;

end.
