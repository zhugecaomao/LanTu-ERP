unit GoodsType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TGoodsTypeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TMemoField;
    procedure QBaseInfoDSDesignerValidate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure tbSelClick(Sender: TObject);
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

function ShowGoodsTypeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, GoodsTypeEdit;

{$R *.dfm}

function ShowGoodsTypeForm(lSelect1: integer; sFilter1: string=''): string;
var
  GoodsTypeForm: TGoodsTypeForm;
begin
  GoodsTypeForm:= TGoodsTypeForm.Create(Application);
  with GoodsTypeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TGoodsTypeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('类别编号',sFilter,[]);
end;

procedure TGoodsTypeForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 商品类别 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TGoodsTypeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TGoodsTypeForm.QBaseInfoDSDesignerValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TGoodsTypeForm.ToolShow;
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

procedure TGoodsTypeForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('类别编号').AsString:= SetID('sl','类别编号', '商品类别', 3,6);
end;

procedure TGoodsTypeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowGoodsTypeEditForm(QBaseInfo, sInsert);
end;

procedure TGoodsTypeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowGoodsTypeEditForm(QBaseInfo, sEdit);
end;

procedure TGoodsTypeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('类别编号').AsString;
    Close;
  end;
end;

end.
