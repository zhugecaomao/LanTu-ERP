unit MoneyRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, Grids, DBGridEh, DB, ADODB, ComCtrls, StdCtrls,
  Buttons;

type
  TMoneyRecordForm = class(TBaseNormalForm)
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    sStartDate, sEndDate: string;
    tStartDate, tEndDate: TDateTime;
    function LoadDate: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowMoneyRecordForm(ADOQryTmp: TADOQuery; lMode: integer);

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure ShowMoneyRecordForm(ADOQryTmp: TADOQuery; lMode: integer);
var
  MoneyRecordForm: TMoneyRecordForm;
begin
  MoneyRecordForm:= TMoneyRecordForm.Create(Nil);
    if ADOQryTmp.Active then
  begin
    MoneyRecordForm.QBaseInfo.Close;
    MoneyRecordForm.QBaseInfo.SQL.Clear;
    MoneyRecordForm.QBaseInfo.SQL.Add('Select * From New会员金额设置 where 会员编号=:hybh');
    MoneyRecordForm.QBaseInfo.SQL.Add('and 类型=' + IntToStr(lMode) + ' Order by ID');
    MoneyRecordForm.QBaseInfo.Parameters.ParamByName('hybh').Value := ADOQryTmp.FieldByName('会员编号').AsString;
    MoneyRecordForm.QBaseInfo.Open;
    if MoneyRecordForm.QBaseInfo.RecordCount >=1 then
      MoneyRecordForm.ShowModal;
  end;
end;

procedure TMoneyRecordForm.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  Close;
end;

function TMoneyRecordForm.LoadDate: Boolean;
begin
{  Result := GetDate(tStartDate, tEndDate);
  sStartDate := FormatDateTime('yyyy/mm/dd', tStartDate);
  sEndDate := FormatDateTime('yyyy/mm/dd', tEndDate);
  edtStartDate.DateTime := StrToDateTime(sStartDate);
  edtEndDate.DateTime := StrToDateTime(sEndDate); }
end;

end.
