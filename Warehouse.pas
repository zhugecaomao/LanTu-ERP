unit Warehouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  Grids, DBGridEh, ExtCtrls;

type
  TWarehouseForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TWideStringField;
    QBaseInfoDSDesigner7: TMemoField;
    procedure tbSelClick(Sender: TObject);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure QBaseInfoDSDesigner2Validate(Sender: TField);
    procedure QBaseInfoNewRecord(DataSet: TDataSet);
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

function ShowWarehouseForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, WarehouseEdit;

{$R *.dfm}

{ TWarehouseForm }

function ShowWarehouseForm(lSelect1: integer; sFilter1: string=''): string;
var
  WarehouseForm: TWarehouseForm;
begin
  WarehouseForm:= TWarehouseForm.Create(Application);
  with WarehouseForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TWarehouseForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('²Ö¿â±àºÅ',sFilter,[]);
end;

procedure TWarehouseForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From ²Ö¿â×ÊÁÏ Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TWarehouseForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TWarehouseForm.ToolShow;
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

procedure TWarehouseForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('²Ö¿â±àºÅ').AsString;
    Close;
  end;
end;

procedure TWarehouseForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowWarehouseEditForm(QBaseInfo, sInsert);
end;

procedure TWarehouseForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowWarehouseEditForm(QBaseInfo, sEdit);
end;

procedure TWarehouseForm.QBaseInfoDSDesigner2Validate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TWarehouseForm.QBaseInfoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QBaseInfo.FieldByName('²Ö¿â±àºÅ').AsString:= SetID('ck','²Ö¿â±àºÅ', '²Ö¿â×ÊÁÏ', 3,6);
end;

end.
