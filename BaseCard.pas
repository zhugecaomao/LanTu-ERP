unit BaseCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSingleEdit, Buttons, StdCtrls, ADODB;

type
  TBaseCardForm = class(TBaseSingleEditForm)
    btnContent: TBitBtn;
    btnExecute1: TBitBtn;
    btnExecute2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnExecute2Click(Sender: TObject);
  private
    { Private declarations }
  protected
    FADOQuery: TADOQuery;
  public
    { Public declarations }
  end;

var
  BaseCardForm: TBaseCardForm;

implementation

uses SysPublic, MemberInfo;

{$R *.dfm}

procedure TBaseCardForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if FADOQuery.Active then
    FADOQuery.Close;
  FADOQuery.Free;
end;

procedure TBaseCardForm.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(FADOQuery) then
    FADOQuery:= TADOQuery.Create(Nil);
  GetConn(FADOQuery);
end;

procedure TBaseCardForm.btnExecute2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
