unit BaseDBGridEh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ADODB, DB, StdCtrls, Mask, DBCtrlsEh,
  PrnDbgeh, Base;

type
  TBaseDBGridEhForm = class(TBaseForm)
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    OneColor, TwoColor: TColor;
    FShowDBGridEhMessage: Boolean;
    bDBGridEhTitle: Boolean;
    procedure DBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SetDBGridEhColor;
    procedure GetDBGridEhColor;
    //用DBGridEh的Hint动态显示里面的记录
    procedure DBGridEhCellClick(Column: TColumnEh);
    procedure SetDBGridEhMessage;
    procedure DBGridEhTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure SetDBGridEhTitle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseDBGridEhForm: TBaseDBGridEhForm;

implementation

uses SysPublic;

{$R *.dfm}

{ TBaseDBGridEhForm }

procedure TBaseDBGridEhForm.DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  cColor: TColor;
begin
  if gdSelected in State then Exit;
//  if TDBGridEh(Sender).DataSource.DataSet.RecNo mod 2 = 0 then
    if TDBGridEh(Sender).SumList.RecNo Mod 2= 0 then
    cColor:= OneColor
  else
    cColor := TwoColor;
  (Sender as TDBGridEh).Canvas.Brush.Color:= cColor;
  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TBaseDBGridEhForm.SetDBGridEhColor;
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin  { 遍历Form组件 }
      if Components[i] is TDBGridEh then
      begin
        (Components[i] as TDBGridEh).OnDrawColumnCell:= DBGridEhDrawColumnCell;
      end;
  end;
end;

procedure TBaseDBGridEhForm.FormShow(Sender: TObject);

begin
  inherited;
  GetDBGridEhColor;

  if bDBGridEhTitle then SetDBGridEhTitle;

  if FShowDBGridEhMessage then
     SetDBGridEhMessage;
end;

procedure TBaseDBGridEhForm.DBGridEhCellClick(Column: TColumnEh);
var
  i: integer;
  s: string;
  DataSet: TDataSet;
begin
  DataSet:= Column.Field.DataSet;
  for i:=0 to TDBGridEh(DataSet).Columns.Count-1 do
  begin
    if TDBGridEh(DataSet).Columns[i].Visible then
      s:= s + '【'+TDBGridEh(DataSet).Columns[i].Title.Caption +' 】'+ TDBGridEh(DataSet).Columns[i].Field.AsString +#13;
  end;
  TDBGridEh(DataSet).Hint:= s;
  TDBGridEh(DataSet).ShowHint:= True;
end;

procedure TBaseDBGridEhForm.SetDBGridEhMessage;
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin  { 遍历Form组件 }
    if Components[i] is TDBGridEh then
      (Components[i] as TDBGridEh).OnCellClick := DBGridEhCellClick;
  end;
end;

procedure TBaseDBGridEhForm.FormCreate(Sender: TObject);

begin
  inherited;

  SetDBGridEhColor;


  FShowDBGridEhMessage := False;
  bDBGridEhTitle:= True;
end;

procedure TBaseDBGridEhForm.DBGridEhTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
var
  DataSet: TDataSet;
begin
  DataSet:= Column.Field.DataSet;
  if DataSet is TADOQuery then
  begin
    case Column.Title.SortMarker of
    smNoneEh:
    begin
      column.Title.SortMarker :=smDownEh ;
      TADOQuery(DataSet).Sort :=Column.FieldName + ' DESC';
    end;
    smDownEh:
    begin
      column.Title.SortMarker :=smUpEh ;
      TADOQuery(DataSet).Sort :=Column.FieldName + ' ASC';
    end;
    smUpEh:
    begin
      Column.Title.SortMarker :=smNoneEh ;
      TADOQuery(DataSet).Sort :='';
    end;
    end;
  end;

  if DataSet is TADOTable then
  begin
    case Column.Title.SortMarker of
    smNoneEh:
    begin
      column.Title.SortMarker :=smDownEh ;
      TADOTable(DataSet).Sort :=Column.FieldName + ' DESC';
    end;
    smDownEh:
    begin
      column.Title.SortMarker :=smUpEh ;
      TADOTable(DataSet).Sort :=Column.FieldName + ' ASC';
    end;
    smUpEh:
    begin
      Column.Title.SortMarker :=smNoneEh ;
      TADOTable(DataSet).Sort :='';
    end;
    end;
  end;

    if DataSet is TADODataSet then
  begin
    case Column.Title.SortMarker of
    smNoneEh:
    begin
      column.Title.SortMarker :=smDownEh ;
      TADODataSet(DataSet).Sort :=Column.FieldName + ' DESC';
    end;
    smDownEh:
    begin
      column.Title.SortMarker :=smUpEh ;
      TADODataSet(DataSet).Sort :=Column.FieldName + ' ASC';
    end;
    smUpEh:
    begin
      Column.Title.SortMarker :=smNoneEh ;
      TADODataSet(DataSet).Sort :='';
    end;
    end;
  end;
end;

procedure TBaseDBGridEhForm.SetDBGridEhTitle;
var
  i, j: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin  { 遍历Form组件 }
    if Components[i] is TDBGridEh then
    begin
      for j:=0 to (Components[i] as TDBGridEh).Columns.Count-1 do
        (Components[i] as TDBGridEh).Columns[j].Title.TitleButton:= True;
      (Components[i] as TDBGridEh).OnTitleBtnClick:= DBGridEhTitleBtnClick;
    end;
  end;
end;

procedure TBaseDBGridEhForm.GetDBGridEhColor;
var
  ADOQryTmp1, ADOQryTmp2: TADOQuery;
begin
  try
  ADOQryTmp1:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp1);
  ADOQryTmp1.Close;
  ADOQryTmp1.SQL.Clear;
  ADOQryTmp1.SQL.Add('Select * From SystemTable Where Name=''DBGridEhOodColor''');
  ADOQryTmp1.Open;

  OneColor:= StringToColor(ADOQryTmp1.FieldByName('Code').AsString);
  finally
    ADOQryTmp1.Close;
    ADOQryTmp1.Free;
  end;

  try
  ADOQryTmp2:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp2);
  ADOQryTmp2.Close;
  ADOQryTmp2.SQL.Clear;
  ADOQryTmp2.SQL.Add('Select * From SystemTable Where Name=''DBGridEhEvenColor''');
  ADOQryTmp2.Open;

  TwoColor:= StringToColor(ADOQryTmp2.FieldByName('Code').AsString);
  finally
    ADOQryTmp2.Close;
    ADOQryTmp2.Free;
  end;
end;

end.
