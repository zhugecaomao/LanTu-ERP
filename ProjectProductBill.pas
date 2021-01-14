unit ProjectProductBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, Grids, DBGridEh, ComCtrls, ToolWin, DB, ADODB,
  PrintForm;

type
  TProjectProductBillForm = class(TBaseMdiForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbIns: TToolButton;
    tbEdi: TToolButton;
    tbDel: TToolButton;
    tbRef: TToolButton;
    tbSep1: TToolButton;
    tbFin: TToolButton;
    tbsFit: TToolButton;
    tbsSep2: TToolButton;
    tbsPri: TToolButton;
    tbsSav: TToolButton;
    tbsSep3: TToolButton;
    tbsExi: TToolButton;
    DBGridEh1: TDBGridEh;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOQuery1ID: TAutoIncField;
    ADOQuery1DSDesigner: TWideStringField;
    ADOQuery1DSDesigner2: TDateTimeField;
    ADOQuery1DSDesigner3: TWideStringField;
    ADOQuery1DSDesigner4: TWideStringField;
    ADOQuery1DSDesigner5: TWideStringField;
    PrintForm1: TPrintForm;
    ADOQuery1DSDesigner6: TWideStringField;
    ADOQuery3ID: TAutoIncField;
    ADOQuery3DSDesigner: TWideStringField;
    ADOQuery3DSDesigner2: TWideStringField;
    ADOQuery3DSDesigner3: TWideStringField;
    ADOQuery3DSDesigner4: TWideStringField;
    ADOQuery3DSDesigner5: TWideStringField;
    ADOQuery3DSDesigner6: TBCDField;
    ADOQuery3DSDesigner7: TWideStringField;
    ADOQuery3DSDesigner9: TBCDField;
    ADOQuery3DSDesigner10: TFloatField;
    ADOQuery3DSDesigner11: TFloatField;
    ADOQuery3DSDesigner12: TBCDField;
    ADOQuery3DSDesigner13: TIntegerField;
    ADOQuery3DSDesigner14: TBooleanField;
    ADOQuery3DSDesigner15: TWideStringField;
    ADOQuery3DSDesigner16: TWideStringField;
    ADOQuery3DSDesigner17: TBCDField;
    ADOQuery2ID: TAutoIncField;
    ADOQuery2DSDesigner: TWideStringField;
    ADOQuery2DSDesigner2: TWideStringField;
    ADOQuery2DSDesigner3: TWideStringField;
    ADOQuery2DSDesigner4: TWideStringField;
    ADOQuery2DSDesigner5: TWideStringField;
    ADOQuery2DSDesigner6: TBCDField;
    ADOQuery2DSDesigner7: TBCDField;
    ADOQuery2DSDesigner8: TBCDField;
    ADOQuery2DSDesigner9: TBCDField;
    ADOQuery2DSDesigner10: TFloatField;
    ADOQuery2DSDesigner11: TIntegerField;
    ADOQuery2DSDesigner12: TBooleanField;
    ADOQuery2DSDesigner13: TWideStringField;
    ADOQuery2DSDesigner14: TWideStringField;
    ADOQuery2DSDesigner15: TBCDField;
    ADOQuery3DSDesigner8: TIntegerField;
    ADOQuery2DSDesigner16: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure tbRefClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure tbsExiClick(Sender: TObject);
  private
    { Private declarations }
  protected
    sPubFindText: string;
    lPubFindFiled: Integer;
  public
    { Public declarations }
  end;

var
  ProjectProductBillForm: TProjectProductBillForm;

implementation

uses SysPublic, DataM, ProjectProductBillEdit;

{$R *.dfm}

procedure TProjectProductBillForm.FormShow(Sender: TObject);
begin
  inherited;
  if not ADOQuery1.Active then
    ADOQuery1.Open;

  if not ADOQuery2.Active then
    ADOQuery2.Open;

  if not ADOQuery3.Active then
    ADOQuery3.Open;



end;

procedure TProjectProductBillForm.tbInsClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lInsert) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowProjectProductBillEditForm(ADOQuery1, ADOQuery2, ADOQuery3, 'dsInsert');
end;

procedure TProjectProductBillForm.tbEdiClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lEdit) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  ShowProjectProductBillEditForm(ADOQuery1, ADOQuery2, ADOQuery3, 'dsEdit');
end;

procedure TProjectProductBillForm.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  if DBGridEh1.DataSource.DataSet.IsEmpty then Exit;
  tbEdiClick(Self);

end;

procedure TProjectProductBillForm.tbDelClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lDelete) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  if ADOQuery1.IsEmpty then  abort;
  if MsgBox('数据删除后不可恢复，确认要删除？', MB_OKCancel) = IDOK then
    try
      ADOQuery1.Delete;
    except
      ADOQuery1.Close;
      ADOQuery1.Open;
    end
  else
    exit;
end;

procedure TProjectProductBillForm.tbRefClick(Sender: TObject);
begin
  inherited;
  ADOQuery1.Filter := '';
end;

procedure TProjectProductBillForm.tbFinClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lFind) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  FindPublic(DBGridEh1, sPubFindText, lPubFindFiled);
end;

procedure TProjectProductBillForm.tbsFitClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lFilter) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  FilterPublic(DBGridEh1);
end;

procedure TProjectProductBillForm.tbsPriClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lPrint) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  PrintForm1.PrintFastReport;
end;

procedure TProjectProductBillForm.tbsSavClick(Sender: TObject);
begin
  inherited;

  if not SysRightLimit('ProjectProductBillForm', lExport) then
  begin
    ShowMsg('对不起，你没有权限使用此功能！');
    Exit;
  end;

  DBGridEhExport(DBGridEh1, Self);
end;

procedure TProjectProductBillForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
