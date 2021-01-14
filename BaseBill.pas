unit BaseBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, ComCtrls, ToolWin, Grids, DBGridEh, DB, ADODB,
  PrintForm;

type
  TBaseBillForm = class(TBaseMdiForm)
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
    ADOQMaster: TADOQuery;
    dsMaster: TDataSource;
    ADOQList: TADOQuery;
    dsList: TDataSource;
    PrintForm1: TPrintForm;
    procedure tbDelClick(Sender: TObject);
    procedure tbRefClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure tbsExiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  protected
    sPubFindText: string;
    lPubFindFiled: Integer;
  public
    { Public declarations }
  end;

var
  BaseBillForm: TBaseBillForm;

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure TBaseBillForm.tbDelClick(Sender: TObject);
begin
  inherited;
  if ADOQMaster.IsEmpty then  abort;
  if MsgBox('数据删除后不可恢复，确认要删除？', MB_OKCancel) = IDOK then
    try
      ADOQMaster.Delete;
    except
      ADOQMaster.Close;
      ADOQMaster.Open;
    end
  else
    exit;
end;

procedure TBaseBillForm.tbRefClick(Sender: TObject);
begin
  inherited;
  ADOQMaster.Filter := '';
end;

procedure TBaseBillForm.tbFinClick(Sender: TObject);
begin
  inherited;
  FindPublic(DBGridEh1, sPubFindText, lPubFindFiled);
end;

procedure TBaseBillForm.tbsFitClick(Sender: TObject);
begin
  inherited;
  FilterPublic(DBGridEh1);
end;

procedure TBaseBillForm.tbsPriClick(Sender: TObject);
begin
  inherited;
  PrintForm1.PrintFastReport; 
end;

procedure TBaseBillForm.tbsSavClick(Sender: TObject);
begin
  inherited;
  DBGridEhExport(DBGridEh1, Self);
end;

procedure TBaseBillForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBaseBillForm.FormShow(Sender: TObject);
begin
  inherited;
  if not ADOQMaster.Active then
    ADOQMaster.Open;

  if not ADOQList.Active then
    ADOQList.Open;
end;

procedure TBaseBillForm.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  if DBGridEh1.DataSource.DataSet.IsEmpty then Exit;
  tbEdi.OnClick(Self);
end;

end.
