unit ProductSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoSelect, DB, ADODB, Grids, DBGridEh, ComCtrls, ToolWin,
  PrintForm;

type
  TProductSelectForm = class(TBaseInfoSelectForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TIntegerField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TBCDField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner7: TIntegerField;
    QBaseInfoDSDesigner8: TBCDField;
    QBaseInfoDSDesigner9: TIntegerField;
    QBaseInfoDSDesigner10: TIntegerField;
    QBaseInfoDSDesigner11: TFloatField;
    QBaseInfoDSDesigner12: TIntegerField;
    QBaseInfoDSDesigner13: TBooleanField;
    QBaseInfoDSDesigner14: TWideStringField;
    QBaseInfoDSDesigner15: TWideStringField;
    procedure tbSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowProductSelectForm(ADOQryTmp: TADOQuery);

implementation

uses SysPublic;

{$R *.dfm}

procedure ShowProductSelectForm(ADOQryTmp: TADOQuery);
var
  ProductSelectForm: TProductSelectForm;
begin
  ProductSelectForm:= TProductSelectForm.Create(Nil);
  ProductSelectForm.ADOQrySel:= ADOQryTmp;
  ProductSelectForm.ShowModal;
end;

procedure TProductSelectForm.tbSelClick(Sender: TObject);
begin
  inherited;
  SetField('产品编号,产品名称,类别编号,类别名称,销售价,产品条码,保质期,成本价,超储界线,缺货界线,产品折扣,需用积分,是否打包,备注,状态',
  '产品编号,产品名称,类别编号,类别名称,销售价,产品条码,保质期,成本价,超储界线,缺货界线,产品折扣,需用积分,是否打包,备注,状态',
  ADOQrySel, QBaseInfo);
  Close;
end;

end.
