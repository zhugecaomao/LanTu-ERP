unit SaveRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseSearch, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TSaveRptForm = class(TBaseSearchForm)
    QBaseInfoID: TAutoIncField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner2: TDateTimeField;
    QBaseInfoDSDesigner3: TBCDField;
    QBaseInfoDSDesigner4: TWideStringField;
    QBaseInfoDSDesigner5: TWideStringField;
    QBaseInfoDSDesigner6: TIntegerField;
    QBaseInfoDSDesigner7: TWideStringField;
    QBaseInfoDSDesigner8: TWideStringField;
  private
    { Private declarations }
    lMode: integer;
    procedure SqlExecute;
  public
    { Public declarations }
  end;

procedure ShowSaveRptForm(lMode1: integer);

implementation

{$R *.dfm}

procedure ShowSaveRptForm(lMode1: integer);
var
  SaveRptForm: TSaveRptForm;

begin
  SaveRptForm:= TSaveRptForm.Create(Nil);

  with SaveRptForm do
  begin
    lMode:= lMode1;
    SqlExecute;
    ShowModal;
  end;
  
end;

{ TSaveRptForm }

procedure TSaveRptForm.SqlExecute;
var
  sSql: string;
begin
  Case lMode of
  0:
    Caption:= '存款报表';
  1:
    Caption:= '取款报表';
  end;
    sSql:='Select * From New会员金额设置 Where 类型=' +IntToStr(lMode);

  QBaseInfo.Close;
  QBaseInfo.SQL.Clear;
  QBaseInfo.SQL.Add(sSql);
  QBaseInfo.Open;

end;

end.
