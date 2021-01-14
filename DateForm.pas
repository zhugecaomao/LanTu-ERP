unit DateForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Base, ExtCtrls, ComCtrls;

type
  TfrmDateForm = class(TBaseForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    edtStartDate: TDateTimePicker;
    edtEndDate: TDateTimePicker;
    bbOk: TBitBtn;
    bbNo: TBitBtn;
    procedure bbOkClick(Sender: TObject);
    procedure bbNoClick(Sender: TObject);
    procedure edtStartDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEndDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    bReturn: Boolean;
    tStartDate, tEndDate: TDateTime;
    procedure MainShow;
    procedure LoadData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tPublicStartDate: TDateTime = 0;
  tPublicEndDate: TDateTime = 0;
function DateFormShow(var tStartDate1, tEndDate1: TDateTime): Boolean;

implementation

uses SysPublic;
{$R *.DFM}

function DateFormShow(var tStartDate1, tEndDate1: TDateTime): Boolean;
var
  frmDateForm: TfrmDateForm;
begin
  frmDateForm := TfrmDateForm.Create(Application);
  with frmDateForm do
  begin
    tStartDate := tStartDate1;
    tEndDate := tEndDate1;
    MainShow;
    tStartDate1 := tStartDate;
    tEndDate1 := tEndDate;
    Result := bReturn;
    Free;
  end;
end;

procedure TfrmDateForm.MainShow;
begin
  bOperateLog:=False;
  LoadData;
  ShowModal;
end;

procedure TfrmDateForm.LoadData;
begin
  bReturn := False;
  if tPublicStartDate = 0 then
    tPublicStartDate := SYSStartDate - 90;
  if tPublicEndDate = 0 then
    tPublicEndDate := SYSStartDate + 1;

  if tStartDate = 0 then
    tStartDate := tPublicStartDate;
  if tEndDate = 0 then
    tEndDate := tPublicEndDate;

  edtStartDate.Date := tStartDate;
  edtEndDate.Date := tEndDate;
  Caption := '请输入查询的时间段';
end;

procedure TfrmDateForm.bbOkClick(Sender: TObject);
begin
  inherited;
  bReturn := True;
  tStartDate := edtStartDate.Date;
  tEndDate := edtEndDate.Date;
  tPublicStartDate := edtStartDate.Date;
  ;
  tPublicEndDate := edtEndDate.Date;
  Close;
end;

procedure TfrmDateForm.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmDateForm.edtStartDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case KEY of
    VK_DOWN: SendMsg(TWinControl(Sender).Handle, WM_KEYDOWN, VK_F4);
  end;
end;

procedure TfrmDateForm.edtEndDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case KEY of
    VK_DOWN: SendMsg(TWinControl(Sender).Handle, WM_KEYDOWN, VK_F4);
  end;
end;

end.
