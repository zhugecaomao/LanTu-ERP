unit OperateLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, DB, ADODB, ComCtrls, StdCtrls,
  Buttons, BaseNormal, Base;

type
  TOperateLogForm = class(TBaseNormalForm)
    ds_OperateLog: TDataSource;
    aqy_OperateLog: TADOQuery;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    cbxLog: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    sPubDesk: string;
    bReturn: Boolean;
    procedure LoadGrid;
    procedure DeleteData;
    procedure MainShow;
    procedure LoadData;
  public
    { Public declarations }
  end;

function OperateLogFormShow: Boolean;

implementation

uses DataM,SysPublic;

{$R *.dfm}

function OperateLogFormShow: Boolean;
var
  OperateLogForm: TOperateLogForm;
begin
  OperateLogForm := TOperateLogForm.Create(Application);
  with OperateLogForm do
  begin
    MainShow;
    Result := bReturn;
    Free;
  end;
end;

procedure TOperateLogForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
  If aqy_OperateLog.IsEmpty then
  Exit;
  if MsgBox('数据删除后不可恢复，确认要删除？', MB_OKCancel) = IDOK then
  with aqy_OperateLog do
  begin
    Close;
    Sql.Clear;
    Sql.Add('DELETE FROM 新增系统日志 WHERE 日期 BETWEEN :A AND :B');
    Parameters.ParamByName('A').Value :=DateTimePicker1.DateTime;
    Parameters.ParamByName('B').Value :=DateTimePicker2.DateTime;
    ExecSQL;

    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM 新增系统日志 order by ID');
    Open;
  end;
end;

procedure TOperateLogForm.FormCreate(Sender: TObject);
begin
  inherited;
  datetimepicker1.Date :=Date-10;
  datetimepicker2.Date :=Date;
  bOperateLog:= False;
end;

procedure TOperateLogForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TOperateLogForm.BitBtn3Click(Sender: TObject);
begin
  inherited;
  with aqy_OperateLog do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * FROM 新增系统日志 WHERE 日期 BETWEEN :A AND :B');
    Parameters.ParamByName('A').Value :=DateTimePicker1.DateTime;
    Parameters.ParamByName('B').Value :=DateTimePicker2.DateTime;
    Open;
  end;
end;

procedure TOperateLogForm.BitBtn4Click(Sender: TObject);
begin
  inherited;
  SetIniValue(DataMForm.ADOConnet, 'Desktop', sPubDesk);
end;

procedure TOperateLogForm.FormShow(Sender: TObject);
begin
  inherited;
  cbxLog.Checked := StrToBool2(GetIniValue(DataMForm.ADOConnet, '新增系统日志'));
end;

procedure TOperateLogForm.DeleteData;
begin

end;

procedure TOperateLogForm.LoadData;
begin
  with aqy_OperateLog do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * FROM 新增系统日志 WHERE 日期 BETWEEN :A AND :B');
    Parameters.ParamByName('A').Value :=DateTimePicker1.DateTime;
    Parameters.ParamByName('B').Value :=DateTimePicker2.DateTime;
    Open;
  end;
end;

procedure TOperateLogForm.LoadGrid;
begin
  bReturn := False;
end;

procedure TOperateLogForm.MainShow;
begin
  LoadGrid;
  LoadData;
  ShowModal;
end;

end.
