unit ProjectTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TProjectTimeForm = class(TBaseInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TDateTimeField;
    QBaseInfoDSDesigner3: TDateTimeField;
    QBaseInfoDSDesigner4: TFloatField;
    QBaseInfoDSDesigner5: TFloatField;
    QBaseInfoDSDesigner6: TFloatField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProjectTimeForm: TProjectTimeForm;

implementation

uses Project, ProjectTimeEdit;

{$R *.dfm}

procedure TProjectTimeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowProjectTimeEditForm(QBaseInfo, 'dsInsert');
end;

procedure TProjectTimeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowProjectTimeEditForm(QBaseInfo, 'dsEdit');
end;

end.
