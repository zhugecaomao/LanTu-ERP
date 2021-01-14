unit Compendium;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSdInfo, Menus, PrintForm, DB, ADODB, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGridEh;

type
  TCompendiumForm = class(TBaseSdInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    procedure QBaseInfoIDValidate(Sender: TField);
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

function ShowCompendiumForm(lSelect1: integer; sFilter1: string=''): string;

implementation

uses SysPublic, CompendiumEdit;

{$R *.dfm}

{ TCompendiumForm }

function ShowCompendiumForm(lSelect1: integer; sFilter1: string=''): string;
var
  CompendiumForm: TCompendiumForm;
begin
  CompendiumForm:= TCompendiumForm.Create(Application);
  with CompendiumForm do
  begin
    lSelect:= lSelect1;
    sFilter:= sFilter1;
    sReturn:= '';
    MainShow;
    Result:= sReturn;
    Free;
  end;
end;

procedure TCompendiumForm.FilterData;
begin
  if sFilter <> '' then
    QBaseInfo.Locate('ID',sFilter,[]);
end;

procedure TCompendiumForm.LoadData;
var
  sSql: string;
begin
  sSql:= 'Select * From หตร๗ีชาช Order by ID';
  OpenDataSet(QBaseInfo, sSql);
end;

procedure TCompendiumForm.MainShow;
begin
  ToolShow;
  LoadData;
  FilterData;
  ShowModal;
end;

procedure TCompendiumForm.ToolShow;
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

procedure TCompendiumForm.QBaseInfoIDValidate(Sender: TField);
begin
  inherited;
  if not IsUnique('Code',Sender.AsString) then
  begin
    ShowIDRepeat(Sender.FieldName);
    Abort;
  end;
end;

procedure TCompendiumForm.tbSelClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible then
  begin
    sReturn := QBaseInfo.FieldByName('ID').AsString;
    Close;
  end;
end;

procedure TCompendiumForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowCompendiumEditForm(QBaseInfo, sInsert);
end;

procedure TCompendiumForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowCompendiumEditForm(QBaseInfo, sEdit);
end;

end.
