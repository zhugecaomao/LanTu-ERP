unit MemberInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Buttons,
  DBCtrlsEh, BaseSingleEdit, BaseNormal;

type
  TMemberInfoForm = class(TBaseSingleEditForm)
    QBaseInfo: TADOQuery;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner3: TDateTimeField;
    QBaseInfoDSDesigner6: TDateTimeField;
    QBaseInfoDSDesigner7: TDateTimeField;
    QBaseInfoDSDesigner8: TStringField;
    QBaseInfoDSDesigner10: TStringField;
    QBaseInfoDSDesigner11: TStringField;
    QBaseInfoDSDesigner12: TStringField;
    QBaseInfoDSDesigner13: TStringField;
    QBaseInfoDSDesigner14: TStringField;
    QBaseInfoDSDesigner4: TBCDField;
    QBaseInfoDSDesigner15: TBCDField;
    QBaseInfoDSDesigner17: TBCDField;
    QBaseInfoDSDesigner22: TWideStringField;
    QBaseInfoDSDesigner16: TIntegerField;
    QBaseInfoDSDesigner19: TBCDField;
    QBaseInfoDSDesigner21: TBCDField;
    QBaseInfoDSDesigner20: TWideStringField;
    dsBaseInfo: TDataSource;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    bbClo: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBEditEh14: TDBEditEh;
    DBEditEh15: TDBEditEh;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner9: TWideStringField;
    QBaseInfoDSDesigner18: TBCDField;
    QBaseInfoDSDesigner23: TWideStringField;
    procedure bbCloClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowMemberInfoForm(ADOQryTmp: TADOQuery);

implementation

{$R *.dfm}

procedure ShowMemberInfoForm(ADOQryTmp: TADOQuery);
var
  MemberInfoForm: TMemberInfoForm;
begin
  MemberInfoForm:= TMemberInfoForm.Create(Nil);
  if ADOQryTmp.Active then
  begin
    MemberInfoForm.QBaseInfo.Close;
    MemberInfoForm.QBaseInfo.SQL.Clear;
    MemberInfoForm.QBaseInfo.SQL.Add('Select * From 会员资料 where 会员编号=:hybh Order by ID');
    MemberInfoForm.QBaseInfo.Parameters.ParamByName('hybh').Value := ADOQryTmp.FieldByName('会员编号').AsString;
    MemberInfoForm.QBaseInfo.Open;
    if MemberInfoForm.QBaseInfo.RecordCount >=1 then
      MemberInfoForm.ShowModal;
  end;
end;

procedure TMemberInfoForm.bbCloClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMemberInfoForm.FormDblClick(Sender: TObject);
begin
  inherited;
  bbCloClick(Self);
end;

end.
