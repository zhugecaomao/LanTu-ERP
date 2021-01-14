unit ProjectSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoSelect, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TProjectSelectForm = class(TBaseInfoSelectForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TIntegerField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TBCDField;
    QBaseInfoDSDesigner7: TFloatField;
    QBaseInfoDSDesigner8: TBCDField;
    QBaseInfoDSDesigner9: TFloatField;
    QBaseInfoDSDesigner10: TFloatField;
    QBaseInfoDSDesigner11: TIntegerField;
    QBaseInfoDSDesigner12: TBooleanField;
    QBaseInfoDSDesigner13: TWideStringField;
    QBaseInfoDSDesigner14: TWideStringField;
    procedure tbSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProjectSelectForm(ADOQryTmp: TADOQuery);

implementation

uses SysPublic;

{$R *.dfm}

procedure ShowProjectSelectForm(ADOQryTmp: TADOQuery);
var
  ProjectSelectForm: TProjectSelectForm;
begin
  ProjectSelectForm:= TProjectSelectForm.Create(Nil);
  ProjectSelectForm.ADOQrySel:= ADOQryTmp;
  ProjectSelectForm.ShowModal;
end;

procedure TProjectSelectForm.tbSelClick(Sender: TObject);
begin
  inherited;
  SetField('项目编号,项目名称,类别编号,类别名称,项目条码,单价,项目折扣,材料费用,材料单价,标准工时,需用积分,是否打包,备注,状态',
  '项目编号,项目名称,类别编号,类别名称,项目条码,单价,项目折扣,材料费用,材料单价,标准工时,需用积分,是否打包,备注,状态',
  ADOQrySel, QBaseInfo);
  Close;
end;

end.
