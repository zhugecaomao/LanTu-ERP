unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, ImgList, StdCtrls, ExtCtrls, Buttons, ActnList,
  mxOutlookBarPro, SysReset, Grids, DBGridEh, jpeg;

type
  TMainForm = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel1: TPanel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N70: TMenuItem;
    N11: TMenuItem;
    N29: TMenuItem;
    N16: TMenuItem;
    N12: TMenuItem;
    N25: TMenuItem;
    N28: TMenuItem;
    N15: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N26: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N14: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N27: TMenuItem;
    N9: TMenuItem;
    N17: TMenuItem;
    N10: TMenuItem;
    N71: TMenuItem;
    N77: TMenuItem;
    N1: TMenuItem;
    N63: TMenuItem;
    N62: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N64: TMenuItem;
    N13: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N34: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N78: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N65: TMenuItem;
    N7: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N8: TMenuItem;
    N53: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N42: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N112: TMenuItem;
    N111: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N66: TMenuItem;
    N21: TMenuItem;
    N20: TMenuItem;
    N49: TMenuItem;
    N19: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N18: TMenuItem;
    N79: TMenuItem;
    N93: TMenuItem;
    N67: TMenuItem;
    N22: TMenuItem;
    N24: TMenuItem;
    N23: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N75765761Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N29Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N88Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure N91Click(Sender: TObject);

  private
    sRegCaption: string;
    procedure CheckRegister; //检查是否为注册版
    procedure CloseChildForm;

  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses DataM,  Login, Base, SysPublic, BaseEx, BaseExDrag, OperateLog, UserEditPass, 
  SetFormStyle, PageCount, ShowPicture, DBTreeView,  UserLimit, MyInfo, User,
  ProductType, Product, Employee, CardSet, MemberManage, PrepareAgree, SaveMoney,
  About, Depart, ProType, PrivilegeSet, ProjectBill, ProductBill, Project,
  ProjectProductBill, MemberManageTotal, SaveRpt,  SuppleCard, PayOffCard, PassMoney, LoseMoney,
  UserInfo, ShopInfo, ShopDepartEmployeeInfo, Navigate, Area, Customer,
  SoftRegister, Supplier, GoodsType, CalculateUnit, Goods, Warehouse, Employeetype,
  Degree, UserLimit1, Unit1, Billmode, Currencytype, Inouttype, Cashbank, Compendium;

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
var
 ADate: TDateTime;
  days: array[1..7] of string;
  Year, Month, Day: Word;
begin
  LoginForm:= TLoginForm.Create(Application);
  LoginForm.ShowModal;  

  Timer1.Enabled:= True;
  days[1] := '星期日';
  days[2] := '星期一';
  days[3] := '星期二';
  days[4] := '星期三';
  days[5] := '星期四';
  days[6] := '星期五';
  days[7] := '星期六';
  ADate:= date();
  DecodeDate(adate, Year, Month, Day);
  StatusBar1.Panels[2].Text := '  '+inttostr(Year)+ '年'+ inttostr(Month) +'月'+inttostr(Day)+'日  ' + days[DayOfWeek(ADate)];
end;

procedure TMainForm.Timer1Timer(Sender: TObject);   //显示系统时间
var
  Year,Month,Day: Word;
  s: string;
begin
  DecodeDate(StrToDate(DateTOStr(Date)),Year,Month,day);  //分解日期
  s:= '蓝图财务进销存';
    sRegCaption := s ;
    CheckRegister;
end;


procedure TMainForm.ToolButton10Click(Sender: TObject);       //退出
begin
  Close;
end;

procedure TMainForm.CheckRegister;
var
  sPcCode, sRegName, sRegCode: string;
begin
  sRegName := GetIniValue(DataMForm.ADOConnet, 'RegisterName');
  sRegCode := GetIniValue(DataMForm.ADOConnet, 'RegisterCode');
  sPcCode := MakeRegisterCode(sRegName, MakeComputerCode);
//  application.MessageBox(pchar(sPcCode),'注册码',0); //测试显示注册码
  if (sPcCode = sRegCode) or (sRegCode = GENERAL_REGISTER_CODE) then
//   if (sPcCode = sRegCode)  then
  begin
    bSoftRegister := True;
    Caption := sRegCaption + '(正式版)';
  end
  else
    Caption := sRegCaption + '(未注册版)';
end;

procedure TMainForm.ToolButton24Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.N69Click(Sender: TObject);
begin
  if not SysRightLimit('AboutForm', lModule) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowAboutForm;
end;

procedure TMainForm.N68Click(Sender: TObject);
begin
  if not SysRightLimit('frmSoftRegister', lModule) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowSoftRegisterForm;
  CheckRegister;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
  ShowAreaForm(0, '');
end;

procedure TMainForm.N14Click(Sender: TObject);
begin
  ShowDepartForm(0, '');
end;

procedure TMainForm.N18Click(Sender: TObject);
begin
  if not SysRightLimit('SetFormStyleForm', lModule) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowSetFormStyleForm;
end;

procedure TMainForm.N49Click(Sender: TObject);
begin
  if not SysRightLimit('UserLimit1Form', lModule) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;
//  ShowUserLimitForm;
  OpenForm(TUserLimit1Form, UserLimit1Form, Self);;
end;

procedure TMainForm.N19Click(Sender: TObject);
begin
  if not SysRightLimit('OperateLogForm', lModule) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  OperateLogFormShow;
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
  if not SysRightLimit('SysResetForm', lModule) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  SysResetFormShow;
end;

procedure TMainForm.N75765761Click(Sender: TObject);
begin
  OpenForm(TBaseMdiForm1, BaseMdiForm1, Self);
end;

procedure TMainForm.N30Click(Sender: TObject);
begin
  LoginForm:= TLoginForm.Create(Nil);
  LoginForm.Show;
end;

procedure TMainForm.N31Click(Sender: TObject);
begin
  ShowUserEditPassForm;
end;

procedure TMainForm.ToolButton15Click(Sender: TObject);
begin
  ShowSaveMoneyForm;
end;

procedure TMainForm.ToolButton20Click(Sender: TObject);
begin
  N30Click(Self);
end;

procedure TMainForm.ToolButton18Click(Sender: TObject);
begin
  N31Click(Self);
end;

procedure TMainForm.N79Click(Sender: TObject);
begin
  //MDI窗体
  OpenForm(TNavigateForm, NavigateForm, Self);
end;

procedure TMainForm.CloseChildForm;
var
  I: Integer;
begin
  if MDIChildCount<>0 then begin
  with MainForm do
    for I := MDIChildCount-1 downto 0 do
      MDIChildren[I].Close;
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseChildForm;
end;

procedure TMainForm.N29Click(Sender: TObject);
begin
  ShowCustomerForm(0, '');
end;

procedure TMainForm.N16Click(Sender: TObject);
begin
  ShowSupplierForm(0, '');
end;

procedure TMainForm.N25Click(Sender: TObject);
begin
  ShowGoodsTypeForm(0, '');
end;

procedure TMainForm.N28Click(Sender: TObject);
begin
  ShowCalculateUnitForm(0, '');
end;

procedure TMainForm.N15Click(Sender: TObject);
begin
  ShowGoodsForm(0, '');
end;

procedure TMainForm.N82Click(Sender: TObject);
begin
  ShowWarehouseForm(0, '');
end;

procedure TMainForm.N83Click(Sender: TObject);
begin
  ShowEmployeetypeForm(0, '');
end;

procedure TMainForm.N84Click(Sender: TObject);
begin
  ShowDegreeForm(0, '');
end;

procedure TMainForm.N85Click(Sender: TObject);
begin
  ShowEmployeeForm(0, '');
end;

procedure TMainForm.N87Click(Sender: TObject);
begin
  ShowBillmodeForm(0, '');
end;

procedure TMainForm.N88Click(Sender: TObject);
begin
  ShowCurrencytypeForm(0, '');
end;

procedure TMainForm.N89Click(Sender: TObject);
begin
  ShowInouttypeForm(0, '');
end;

procedure TMainForm.N90Click(Sender: TObject);
begin
  ShowCashbankForm(0, '');
end;

procedure TMainForm.N91Click(Sender: TObject);
begin
  ShowCompendiumForm(0, '');
end;

end.
