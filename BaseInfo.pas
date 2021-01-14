unit BaseInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, ComCtrls, ToolWin, Grids, DBGridEh, DB, BaseMdi,
  ADODB, PrintForm, PropStorageEh, FR_Desgn, PrnDbgeh;

type
  TBaseInfoForm = class(TBaseMdiForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbIns: TToolButton;
    tbEdi: TToolButton;
    tbDel: TToolButton;
    tbRef: TToolButton;
    DBGridEh1: TDBGridEh;
    tbSep1: TToolButton;
    tbFin: TToolButton;
    tbsPri: TToolButton;
    tbsSep2: TToolButton;
    tbsExi: TToolButton;
    tbsSav: TToolButton;
    tbsFit: TToolButton;
    tbsSep3: TToolButton;
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    QIsUnique: TADOQuery;
    PrintForm1: TPrintForm;
    tbSetCol: TToolButton;
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure tbsExiClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbRefClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure tbSetColClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    sPubFindText: string;
    lPubFindFiled: Integer;
    Function IsUnique(ParamName,ParamValue: String): Boolean; {检测编号是否重复}
  public

    { Public declarations }
  end;

var
  BaseInfoForm: TBaseInfoForm;

implementation

uses DataM, SysPublic, Find, BaseInfoEdit, PrintDBGrid;

{$R *.dfm}

procedure TBaseInfoForm.DBGridEh1CellClick(Column: TColumnEh);
begin
  inherited;
//  if FShowDBGridEhMessage then ShowDBGridEhMessage(DBGridEh1);
end;

procedure TBaseInfoForm.FormShow(Sender: TObject);
begin
  inherited;

  SetCol(Caption, TDBGridEh(DBGridEh1), 1);  

  if not QBaseInfo.Active then
    QBaseInfo.Open;

  if not QIsUnique.Active then
    QIsUnique.Open;

//   SetColWidth(Caption, TDBGridEh(DBGridEh1));

//  SetCol(Caption, TDBGridEh(DBGridEh1), 1);


end;

procedure TBaseInfoForm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
//var
//  cColor: TColor;
begin
  inherited;
{  if DBGridEh1.DataSource.DataSet.IsEmpty then Exit;
  with DBGridEh1.DataSource.DataSet do
  begin
    if DataCol = 0 then//第一列
      DBGridEh1.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, IntToStr(RecNo));
  end;
  if Column.FieldName = 'ID' then
    Column.Title.Caption:= '序号';}
end;

procedure TBaseInfoForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBaseInfoForm.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
//  if not DBGridEh1.DataSource.DataSet.IsEmpty then
  tbEdi.OnClick(Self);
end;

procedure TBaseInfoForm.tbFinClick(Sender: TObject);
begin
  inherited;

  FindPublic(DBGridEh1, sPubFindText, lPubFindFiled);
  //  ShowPublicFindForm(DBGridEh1);
end;

procedure TBaseInfoForm.tbsSavClick(Sender: TObject);
begin
  inherited;


  DBGridEhExport(DBGridEh1, Self);
end;

procedure TBaseInfoForm.tbDelClick(Sender: TObject);
begin
  inherited;


  if QBaseInfo.IsEmpty then  abort;
  if MsgBox('数据删除后不可恢复，确认要删除？', MB_OKCancel) = IDOK then
    try
      QBaseInfo.Delete;
    except
      QBaseInfo.Close;
      QBaseInfo.Open;
    end
  else
    exit;
end;

procedure TBaseInfoForm.tbsFitClick(Sender: TObject);
begin
  inherited;
  FilterPublic(DBGridEh1);
end;

function TBaseInfoForm.IsUnique(ParamName, ParamValue: String): Boolean;
begin
Result:=True;
//if QBaseInfo.State = dsInsert then
   With QIsUnique do
       begin
       parameters.ParamValues[ParamName]:=ParamValue;
       if Active then Requery else Open;
       if RecordCount > 0 then Result:=False;
       end
end;

procedure TBaseInfoForm.tbsPriClick(Sender: TObject);
begin
  inherited;


  PrintForm1.PrintFastReport;
  //  PrintDBGridEh(DBGridEh1, Self.Caption);
end;

procedure TBaseInfoForm.tbRefClick(Sender: TObject);
begin
  inherited;
  QBaseInfo.Filter := '';
end;

procedure TBaseInfoForm.FormCreate(Sender: TObject);
//var
//  AColumn: TColumnEh;
begin
  inherited;
//  DBGridEh1.Columns.Clear;
//  AColumn := DBGridEh1.Columns.Add;
//  AColumn.FieldName := '姓名';
  {DBGridEh1.Columns.Add;
   DBGridEh1.Columns[DBGridEh1.Columns.Count-1].FieldName:='YourFieldName';
   DBGridEh1.Columns[DBGridEh1.Columns.Count-1].Title.Caption:='YourNewTitle';}

end;

procedure TBaseInfoForm.ToolButton1Click(Sender: TObject);
begin
  inherited;
//  SetCol(Caption, TDBGridEh(DBGridEh1), 0);
end;

procedure TBaseInfoForm.tbSetColClick(Sender: TObject);
begin
  inherited;
  SetCol(Caption, TDBGridEh(DBGridEh1), 0);
end;

procedure TBaseInfoForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SetColWidth(Caption, TDBGridEh(DBGridEh1));
end;

end.
