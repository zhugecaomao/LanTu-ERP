unit ProjectPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TProjectPriceForm = class(TBaseInfoForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TStringField;
    QBaseInfoDSDesigner3: TFloatField;
    QBaseInfoDSDesigner4: TFloatField;
    QBaseInfoDSDesigner2: TStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
    procedure QBaseInfoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProjectPriceForm: TProjectPriceForm;

implementation

uses SysPublic, ProjectPriceEdit;

{$R *.dfm}

procedure TProjectPriceForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowProjectPriceEditForm(QBaseInfo, 'dsInsert');
end;

procedure TProjectPriceForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowProjectPriceEditForm(QBaseInfo, 'dsEdit');
end;

procedure TProjectPriceForm.QBaseInfoBeforePost(DataSet: TDataSet);
var
  S: string;
  ADOQryTmp: TADOQuery;
begin
  inherited;
  S:= QBaseInfo.FieldByName('卡级编号').AsString;
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From 会员卡级 where 卡级编号=' + QuotedStr(S));
  ADOQryTmp.Open;

  QBaseInfo.FieldByName('卡级名称').AsString := ADOQryTmp.FieldByName('卡级名称').AsString;

  ADOQryTmp.Close;
  ADOQryTmp.Free;
end;

end.
