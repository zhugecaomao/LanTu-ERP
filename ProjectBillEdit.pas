unit ProjectBillEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseBillEdit, PrintForm, StdCtrls, Buttons, Grids, DBGridEh,
  ExtCtrls, ADODB, DB, Mask, DBCtrls, DBCtrlsEh, DBLookupEh;

type
  TProjectBillEditForm = class(TBaseBillEditForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditEh1: TDBEditEh;
    Edit1: TEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh3: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    QBaseInfo: TADOQuery;
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner3: TDateTimeField;
    QBaseInfoDSDesigner5: TStringField;
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
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProjectBillEditForm(ADOMaster1, ADOList1: TADOQuery; State1: string);

implementation

uses ProjectProductBill, ProjectBill, ProSelect, SysPublic;

{$R *.dfm}

procedure ShowProjectBillEditForm(ADOMaster1, ADOList1: TADOQuery; State1: string);
var
  ProjectBillEditForm: TProjectBillEditForm;
begin
  ProjectBillEditForm:= TProjectBillEditForm.Create(Nil);
  ProjectBillEditForm.ADOMaster:= ADOMaster1;
  ProjectBillEditForm.ADOList := ADOList1;
    if State1 = 'dsEdit' then
        ProjectBillEditForm.ADOMaster.Edit;

    if State1 = 'dsInsert' then
//      ProjectBillEditForm.ADOMaster.Insert;
    IDGen(ProjectBillEditForm.ADOMaster,'XC', 'New项目单主表', '单据编号', '录单日期', 11, 4);
  ProjectBillEditForm.ShowModal;
end;

procedure TProjectBillEditForm.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  inherited;
  ShowProSelectForm(ADOList);
end;

procedure TProjectBillEditForm.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F1 then
    ShowProSelectForm(ADOList);
end;

procedure TProjectBillEditForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  IDGen(ADOMaster, 'XC','New项目单主表', '单据编号', '录单日期', 11, 4);
end;

end.
