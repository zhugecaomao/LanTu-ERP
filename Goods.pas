unit Goods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TGoodsForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner8: TWideStringField;
    QBaseInfoDSDesigner10: TWideStringField;
    QBaseInfoDSDesigner11: TWideStringField;
    QBaseInfoDSDesigner12: TWideStringField;
    QBaseInfoDSDesigner13: TBooleanField;
    QBaseInfoDSDesigner14: TMemoField;
    QBaseInfoDSDesigner15: TBCDField;
    QBaseInfoDSDesigner16: TBCDField;
    QBaseInfoDSDesigner1: TBCDField;
    QBaseInfoDSDesigner22: TBCDField;
    QBaseInfoDSDesigner32: TBCDField;
    QBaseInfoDSDesigner42: TBCDField;
    QBaseInfoDSDesigner17: TIntegerField;
    QBaseInfoDSDesigner18: TIntegerField;
    ADOQryCalculateUnit: TADOQuery;
    AutoIncField2: TAutoIncField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    MemoField2: TMemoField;
    dsCalculateUnit: TDataSource;
    QBaseInfoDSDesigner7: TWideStringField;
    ADOQryGoodsType: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    MemoField1: TMemoField;
    dsGoodsType: TDataSource;
    QBaseInfoField: TStringField;
    QBaseInfoField2: TStringField;
    procedure QBaseInfoDSDesigner2Validate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
    procedure tbSelClick(Sender: TObject);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
  private
    sFilter: string;
    lSelect: Integer;
    procedure ToolShow;
    procedure FilterData;
    procedure LoadData;
    procedure MainShow;
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowGoodsForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, GoodsEdit;

{$R *.dfm}

function ShowGoodsForm(lSelect1: integer; sFilter1: string=''): string;
var
  GoodsForm: TGoodsForm;
begin
  GoodsForm:= TGoodsForm.Create(Application);
  with GoodsForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TGoodsForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('商品编号',sFilter,[]);
end;

procedure TGoodsForm.LoadData;
var
  sSql, sSql1, sSql2: string;
begin
  sSql1:= 'Select * From 商品类别 Order by ID';
  OpenDataSet(ADOQryGoodsType, sSql1);
  sSql2:= 'Select * From 计量单位 Order by ID';
  OpenDataSet(ADOQryCalculateUnit, sSql2);
  sSql:= 'Select * From 商品资料 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TGoodsForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TGoodsForm.QBaseInfoDSDesigner2Validate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TGoodsForm.ToolShow;
begin
  if lSelect= 0 then
  begin
    tbSel.Visible:= False;
    tbDel.Visible := True;
  end
  else
  begin
    tbSel.Visible:= True;
    tbDel.Visible := False;
  end;
end;

procedure TGoodsForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('商品编号').AsString:= SetID('sp','商品编号', '商品资料', 3,6);
end;

procedure TGoodsForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible = True then
  begin
    sReturn := QBaseInfo.FieldByName('商品编号').AsString;
    Close;
  end;
end;

procedure TGoodsForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowGoodsEditForm(QBaseInfo, sInsert);
end;

procedure TGoodsForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowGoodsEditForm(QBaseInfo, sEdit);
end;

end.
