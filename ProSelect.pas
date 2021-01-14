unit ProSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoSelect, DB, ADODB, Grids, DBGridEh, ComCtrls, ToolWin,
  PrintForm;

type
  TProSelectForm = class(TBaseInfoSelectForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner3: TIntegerField;
    QBaseInfoDSDesigner4: TStringField;
    QBaseInfoDSDesigner5: TBCDField;
    QBaseInfoDSDesigner6: TFloatField;
    QBaseInfoDSDesigner7: TBCDField;
    QBaseInfoDSDesigner8: TFloatField;
    QBaseInfoDSDesigner9: TFloatField;
    QBaseInfoDSDesigner10: TIntegerField;
    QBaseInfoDSDesigner11: TBooleanField;
    QBaseInfoDSDesigner12: TWideStringField;
    QBaseInfoDSDesigner13: TStringField;
    procedure tbSelClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

procedure ShowProSelectForm(ADOQryTmp: TADOQuery);

implementation

uses SysPublic;


{$R *.dfm}

procedure ShowProSelectForm(ADOQryTmp: TADOQuery);
var
  ProSelectForm: TProSelectForm;
begin
  ProSelectForm:= TProSelectForm.Create(Nil);
  ProSelectForm.ADOQrySel:= ADOQryTmp;
  ProSelectForm.ShowModal;
end;

procedure TProSelectForm.tbSelClick(Sender: TObject);
begin
  inherited;
  SetField('项目编号,项目名称,类别编号,项目条码,单价,项目折扣,材料费用,材料单价,标准工时,需用积分,是否打包,备注,状态',
  '项目编号,项目名称,类别编号,项目条码,单价,项目折扣,材料费用,材料单价,标准工时,需用积分,是否打包,备注,状态',
  ADOQrySel, QBaseInfo);
  Close;
end;

end.
