unit BaseProductSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoSelect, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TBaseProductSelectForm = class(TBaseInfoSelectForm)
    procedure tbSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowBaseProductSelectForm(ADOQryTmp: TADOQuery);

implementation

uses SysPublic;

{$R *.dfm}

procedure ShowBaseProductSelectForm(ADOQryTmp: TADOQuery);
var
  BaseProductSelectForm: TBaseProductSelectForm;
begin
  BaseProductSelectForm:= TBaseProductSelectForm.Create(Nil);
  BaseProductSelectForm.ADOQrySel:= ADOQryTmp;
  BaseProductSelectForm.ShowModal;
end;

procedure TBaseProductSelectForm.tbSelClick(Sender: TObject);
begin
  inherited;
  SetField('编号,产品名称,类别编号,类别名称,销售价,产品条码,保质期,成本价,超储界线,缺货界线,产品折扣,需用积分,是否打包,备注,状态',
  '产品编号,产品名称,类别编号,类别名称,销售价,产品条码,保质期,成本价,超储界线,缺货界线,产品折扣,需用积分,是否打包,备注,状态',
  ADOQrySel, QBaseInfo);
  Close;
end;

end.
