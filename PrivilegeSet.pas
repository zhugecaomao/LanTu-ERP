unit PrivilegeSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSingleEdit, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, BaseMdi,
  DBCtrlsEh, BaseEdit;

type
  TPrivilegeSetForm = class(TBaseSingleEditForm)
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    QBaseInfoID: TAutoIncField;
    QBaseInfoName1: TBCDField;
    QBaseInfoName2: TBCDField;
    QBaseInfoName3: TBCDField;
    QBaseInfoName4: TBCDField;
    QBaseInfoName5: TBCDField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    btnOK: TBitBtn;
    btnNO: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnNOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowPrivilegeSetForm;

implementation

{$R *.dfm}

procedure ShowPrivilegeSetForm;
var
  PrivilegeSetForm: TPrivilegeSetForm;
begin
  PrivilegeSetForm:= TPrivilegeSetForm.Create(Nil);
  PrivilegeSetForm.ShowModal;
end;

procedure TPrivilegeSetForm.FormShow(Sender: TObject);
begin
  inherited;
  RadioButton1.Checked := True;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
    QBaseInfo.Edit;

end;

procedure TPrivilegeSetForm.btnOKClick(Sender: TObject);
begin
  inherited;
  if QBaseInfo.IsEmpty then
    QBaseInfo.Append;
  if QBaseInfo.State in [dsEdit, dsInsert] then
     QBaseInfo.Post;
  Close;
end;

procedure TPrivilegeSetForm.btnNOClick(Sender: TObject);
begin
  inherited;
  if QBaseInfo.State in [dsEdit, dsInsert] then
    QBaseInfo.Cancel;
  Close;
end;

end.
