unit BaseEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, Buttons, ADODB, DB, DBLookupEh, DBGridEh, DBCtrlsEh,
  StdCtrls, BaseNormal, Base;

type
  TBaseEditForm = class(TBaseForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    FADOQuery: TADOQuery;
    DataSet: TDataSet;
  public
    { Public declarations }
  end;

var
  BaseEditForm: TBaseEditForm;

implementation

uses SysPublic;

{$R *.dfm}

procedure TBaseEditForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case KEY of
    VK_RETURN: perform(WM_NEXTDLGCTL, 0, 0);
    VK_ESCAPE: Close;
  end;
end;

procedure TBaseEditForm.FormCreate(Sender: TObject);
begin
  inherited;
//  if not Assigned(ADOQuery1) then
//    ADOQuery1:= TADOQuery.Create(Nil);
end;

procedure TBaseEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  if ADOQuery1.Active then
//    ADOQuery1.Close;
//  ADOQuery1.Free; 
end;

end.
