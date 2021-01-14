unit BaseSdInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, ExtCtrls, Grids, DBGridEh, DB, ADODB, StdCtrls,
  Buttons, Menus, PrintForm, BaseDBGridEh, ComCtrls, ToolWin;

type
  TBaseSdInfoForm = class(TBaseDBGridEhForm)
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    DBGridEh1: TDBGridEh;
    QIsUnique: TADOQuery;
    PrintForm1: TPrintForm;
    PopupMenu1: TPopupMenu;
    word1: TMenuItem;
    excel1: TMenuItem;
    html1: TMenuItem;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    tbSel: TToolButton;
    tbIns: TToolButton;
    tbEdi: TToolButton;
    tbDel: TToolButton;
    tbRef: TToolButton;
    ToolButton2: TToolButton;
    tbFin: TToolButton;
    tbsFit: TToolButton;
    tbSetCol: TToolButton;
    ToolButton6: TToolButton;
    tbsPri: TToolButton;
    tbsSav: TToolButton;
    ToolButton9: TToolButton;
    tbsExi: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbSetColClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure tbsExiClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure tbRefClick(Sender: TObject);
  private
    procedure SetPopupMenuPosition;
    { Private declarations }
  protected
    sReturn: string;
    sFormStyle: TFormStyle;
    sPubFindText: string;
    lPubFindFiled: Integer;
    Function IsUnique(ParamName,ParamValue: String): Boolean; {检测编号是否重复}
  public
    { Public declarations }
  end;

var
  BaseSdInfoForm: TBaseSdInfoForm;

implementation

uses SysPublic;

{$R *.dfm}

function TBaseSdInfoForm.IsUnique(ParamName, ParamValue: String): Boolean;
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

procedure TBaseSdInfoForm.FormShow(Sender: TObject);
begin
  inherited;

  SetCol(Caption, TDBGridEh(DBGridEh1), 1);
end;

procedure TBaseSdInfoForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SetColWidth(Caption, TDBGridEh(DBGridEh1));
end;

procedure TBaseSdInfoForm.tbFinClick(Sender: TObject);
begin
  inherited;
  FindPublic(DBGridEh1, sPubFindText, lPubFindFiled);
end;

procedure TBaseSdInfoForm.tbsFitClick(Sender: TObject);
begin
  inherited;
  FilterPublic(DBGridEh1);
end;

procedure TBaseSdInfoForm.tbSetColClick(Sender: TObject);
begin
  inherited;
  SetCol(Caption, TDBGridEh(DBGridEh1), 0);
end;

procedure TBaseSdInfoForm.tbsPriClick(Sender: TObject);
begin
  inherited;
  PrintForm1.PrintFastReport;
end;

procedure TBaseSdInfoForm.tbsSavClick(Sender: TObject);
begin
  inherited;
  //SetPopupMenuPosition;
  DBGridEhExport(DBGridEh1, Self);
end;

procedure TBaseSdInfoForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBaseSdInfoForm.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  if tbSel.Visible = True then
    tbSel.OnClick(Self)
  else
    tbEdi.OnClick(Self);
end;

procedure TBaseSdInfoForm.tbDelClick(Sender: TObject);
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

procedure TBaseSdInfoForm.tbRefClick(Sender: TObject);
begin
  inherited;
  QBaseInfo.Filter := '';
end;

procedure TBaseSdInfoForm.SetPopupMenuPosition;
var
  p:TPoint;
begin
  getcursorpos(p);
  PopupMenu1.popup(p.x,p.y);
end;

end.
