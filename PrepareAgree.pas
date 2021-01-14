unit PrepareAgree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TPrepareAgreeForm = class(TBaseInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TDateTimeField;
    QBaseInfoDSDesigner3: TStringField;
    QBaseInfoDSDesigner4: TStringField;
    QBaseInfoDSDesigner5: TStringField;
    QBaseInfoDSDesigner6: TStringField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrepareAgreeForm: TPrepareAgreeForm;

implementation

uses PrepareAgreeEdit;

{$R *.dfm}

procedure TPrepareAgreeForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowPrepareAgreeEditForm(QBaseInfo, 'dsInsert');
end;

procedure TPrepareAgreeForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowPrepareAgreeEditForm(QBaseInfo, 'dsEdit');
end;

end.
