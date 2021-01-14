unit UserInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseEdit, DB, ADODB, StdCtrls, Mask, DBCtrls,
  DBCtrlsEh, Buttons, BaseMdiEdit;

type
  TUserInfoForm = class(TBaseMdiEditForm)
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner7: TWideStringField;
    QBaseInfoDSDesigner8: TWideStringField;
    QBaseInfoDSDesigner9: TWideStringField;
    QBaseInfoDSDesigner10: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    btnOK: TBitBtn;
    btnNO: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure btnNOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserInfoForm: TUserInfoForm;

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure TUserInfoForm.btnOKClick(Sender: TObject);
begin
  inherited;
  if QBaseInfo.State in [dsEdit, dsInsert] then
  begin
    if not QBaseInfo.IsEmpty then
    begin
      QBaseInfo.Post;
      ShowMsg('±£´æ³É¹¦£¡');
    end;
  end;
  Close;
end;

procedure TUserInfoForm.btnNOClick(Sender: TObject);
begin
  inherited;
  if QBaseInfo.State in [dsEdit, dsInsert] then
    QBaseInfo.Cancel;
  Close;
end;

procedure TUserInfoForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

end.
