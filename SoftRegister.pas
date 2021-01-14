unit SoftRegister;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Buttons, Base, WinSkinData;

type
  TSoftRegisterForm = class(TBaseForm)
    bbOk: TBitBtn;
    bbNo: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtPcCode: TEdit;
    edtManName: TEdit;
    edtRegCode: TEdit;
    Memo1: TMemo;
    procedure bbNoClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure edtRegCodeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    bReturn: Boolean;
    procedure MainShow;
    procedure LoadData;
  public
    { Public declarations }
  end;

function ShowSoftRegisterForm: Boolean;

implementation

uses SysPublic, DataM;

{$R *.dfm}

function ShowSoftRegisterForm: Boolean;
var
  SoftRegisterForm: TSoftRegisterForm;
begin
  SoftRegisterForm:= TSoftRegisterForm.Create(Application);
  with SoftRegisterForm do
  begin
    MainShow;
    Result := bReturn;
    Free;
  end;
end;

procedure TSoftRegisterForm.MainShow;
begin
  bReturn := False;
  LoadData;
  ShowModal;
end;

procedure TSoftRegisterForm.LoadData;
var
  sName, sCode: string;
begin
  edtPcCode.ReadOnly := True;
  sName := GetIniValue(DataMForm.ADOConnet, 'RegisterName');
  sCode := GetIniValue(DataMForm.ADOConnet, 'RegisterCode');
  edtPcCode.Text := MakeComputerCode;
  edtManName.Text := sName;
  edtRegCode.Text := sCode;
  if edtManName.Text = '' then
    edtManName.Text := GetPCName;
end;

procedure TSoftRegisterForm.bbNoClick(Sender: TObject);
begin
  Close;
end;

procedure TSoftRegisterForm.bbOkClick(Sender: TObject);
var
  sSn: string;
begin
  sSn := MakeRegisterCode(edtManName.Text, edtPcCode.Text);
  if (Trim(sSn) = Trim(edtRegCode.Text)) or (Trim(edtRegCode.Text) = GENERAL_REGISTER_CODE) then
  begin
    ShowMsg('注册成功，谢谢你购买我们的软件！');
    SetIniValue(DataMForm.ADOConnet, 'RegisterName', Trim(edtManName.Text));
    SetIniValue(DataMForm.ADOConnet, 'RegisterCode', Trim(edtRegCode.Text));
    bSoftRegister := True;
    bReturn := True;
    Close;
  end
  else
    ShowMessage('注册码不正确,请重新输入注册码！');
end;

procedure TSoftRegisterForm.edtRegCodeDblClick(Sender: TObject);
begin
  if Trim(edtRegCode.Text) = ROOT_PASSWORD then
  begin
    edtPcCode.Color := clWindow;
    edtPcCode.ReadOnly := False;
  end;
  if not edtPcCode.ReadOnly then
    edtRegCode.Text := Trim(MakeRegisterCode(edtManName.Text, edtPcCode.Text));
end;

procedure TSoftRegisterForm.FormCreate(Sender: TObject);
begin
  inherited;
  bOperateLog:= False;
end;

end.

