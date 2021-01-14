unit MemberManageTotal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSearch, DB, ADODB, Grids, DBGridEh, ComCtrls, ToolWin,
  PrintForm;

type
  TMemberManageTotalForm = class(TBaseSearchForm)
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner3: TStringField;
    QBaseInfoDSDesigner4: TDateTimeField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TStringField;
    QBaseInfoDSDesigner7: TStringField;
    QBaseInfoDSDesigner8: TStringField;
    QBaseInfoDSDesigner9: TBCDField;
    QBaseInfoDSDesigner10: TBCDField;
    QBaseInfoID: TAutoIncField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowMemberManageTotalForm;

implementation

uses SysPublic;

{$R *.dfm}

procedure ShowMemberManageTotalForm;
var
  MemberManageTotalForm: TMemberManageTotalForm;
begin
  MemberManageTotalForm:= TMemberManageTotalForm.Create(Nil);
  MemberManageTotalForm.ShowModal;
end;

end.
