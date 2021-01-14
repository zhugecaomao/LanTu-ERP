unit Inouttype;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGridEh;

type
  TInouttypeForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
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

function ShowInouttypeForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, InouttypeEdit;

{$R *.dfm}

{ TInouttypeForm }

function ShowInouttypeForm(lSelect1: integer; sFilter1: string=''): string;
var
  InouttypeForm: TInouttypeForm;
begin
  InouttypeForm:= TInouttypeForm.Create(Application);
  with InouttypeForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TInouttypeForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TInouttypeForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From 收支类别 Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TInouttypeForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TInouttypeForm.ToolShow;
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

procedure TInouttypeForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TInouttypeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowInouttypeEditForm(QBaseInfo, sInsert);
end;

procedure TInouttypeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowInouttypeEditForm(QBaseInfo, sEdit);
end;

end.
