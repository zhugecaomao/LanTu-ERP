unit DegreeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfoEdit, StdCtrls, Buttons, Mask, DBCtrlsEh, ADODB;

type
  TDegreeEditForm = class(TBaseInfoEditForm)
    Label1: TLabel;
    DBEditEh1: TDBEditEh;
    procedure btnInsClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowDegreeEditForm(ADOQryTmp: TADOQuery; sState: string);

implementation

uses SysPublic, Degree;

{$R *.dfm}

procedure ShowDegreeEditForm(ADOQryTmp: TADOQuery; sState: string);
var
  DegreeEditForm: TDegreeEditForm;
begin
  DegreeEditForm:= TDegreeEditForm.Create(Application);
  with DegreeEditForm do
  begin
    FADOQuery:= ADOQryTmp;
    if sState= sEdit then
      FADOQuery.Edit;
    if sState = sInsert then
      FADOQuery.Insert;
    ShowModal;
  end;
end;

procedure TDegreeEditForm.btnInsClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name], [DBEditEh1.Name])
    then Exit;
  inherited;

end;

procedure TDegreeEditForm.btnOKClick(Sender: TObject);
begin
  if not CheckEditEmpty(1, self, [Label1.Name], [DBEditEh1.Name])
    then Exit;
  inherited;

end;

end.
