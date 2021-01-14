unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, ImgList, ShellAPI, Db,  Grids, DBGrids,
  DBCtrls, IniFiles, ADODB, ComObj, BaseNormal, SoftDataType, Menus;

type
  TLoginForm = class(TBaseNormalForm)
    bbOk: TBitBtn;
    bbNo: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    edtName: TComboBox;
    Label32: TLabel;
    edtPass: TEdit;
    edtDate: TDateTimePicker;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure bbNoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Name:String;
    MyIni:TiniFile;
    { Private declarations }
    DataType: TSoftDataType;
    FADOQryLogin: TADOQuery;
  public
    { Public declarations }
  end;
  
var
  LoginForm: TLoginForm;

implementation

uses Main, DataM, SysPublic, SetComboBox;

{$R *.DFM}

procedure TLoginForm.FormShow(Sender: TObject);
var
  ComboBox: TSetComboBox;
begin

      DataMForm.ADOConnet.Connected := True;

      with FADOQryLogin do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM 员工资料 Order by ID');
        Open;
      end;

      ComboBox.SetComboBox('员工编号,员工姓名','员工资料',FADOQryLogin, edtName);

end;

procedure TLoginForm.bbOkClick(Sender: TObject);
var
  S, Str, sSql: string;
  sAccountName:string;
  sUserName,sPWD:String;
begin
  SYSStartDate := edtDate.Date;
  //在用户表中找到对应的用户
  S:=edtName.Text;
  Str:= trim(Copy(S, 1, POS('|',S)-1));
  sSql:= 'SELECT * FROM 员工资料 WHERE 员工编号=' + QuotedStr(Str);

  with FADOQryLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sSql);
    Open;
  end;

   if (EncryptPassword(Trim(edtPass.Text))<>FADOQryLogin.FieldByName('员工密码').AsString) and (Trim(edtPass.Text) <> sUserPass) then
   begin
     ShowMsg('【'+FADOQryLogin.FieldByName('员工姓名').AsString+'】的口令错误！');
     edtPass.SetFocus;
   end
   else
   begin
     MainForm.StatusBar1.Panels[1].Text:='用户【'+FADOQryLogin.FieldByName('员工姓名').AsString+'】';
     MainForm.Show;
     LoginForm.Close;
   end;
  LoginEmployeCode:= Trim(Str);
  LoginEmployeName:= Trim(FADOQryLogin.FieldByName('员工姓名').AsString);
end;

procedure TLoginForm.bbNoClick(Sender: TObject);
begin
  Close;
end;

procedure TLoginForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case KEY of
    VK_RETURN:
      begin
        if (GetFocusedComponent(self) is TEdit) or (GetFocusedComponent(self) is TComboBox) then
          perform(WM_NEXTDLGCTL, 0, 0);
      end;
    VK_ESCAPE: Close;
  end;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  FADOQryLogin:= TADOQuery.Create(Nil);
  GetConn(FADOQryLogin); 
  bOperateLog := False;
  bReadSaveForm:= False;
  bWriteSaveForm:= False;
  edtDate.Date:= Date; 
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FADOQryLogin.Active then
    FADOQryLogin.Close;
  FADOQryLogin.Free;
end;

end.
