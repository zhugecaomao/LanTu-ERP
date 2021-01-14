unit BaseInfoSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, ComCtrls, ToolWin, Grids, DBGridEh, DB, ADODB,
  PrintForm;

type
  TBaseInfoSelectForm = class(TBaseNormalForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbSel: TToolButton;
    tbRef: TToolButton;
    tbSep1: TToolButton;
    tbFin: TToolButton;
    tbsFit: TToolButton;
    tbsSep2: TToolButton;
    tbsPri: TToolButton;
    tbsSav: TToolButton;
    tbsSep3: TToolButton;
    tbsExi: TToolButton;
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    DBGridEh1: TDBGridEh;
    PrintForm1: TPrintForm;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbRefClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsExiClick(Sender: TObject);
  private
    { Private declarations }
  protected
    ADOQrySel: TADOQuery;
    sPubFindText: string;
    lPubFindFiled: Integer;
  public
    { Public declarations }
  end;

var
  BaseInfoSelectForm: TBaseInfoSelectForm;

implementation

uses SysPublic;

{$R *.dfm}

procedure TBaseInfoSelectForm.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  if DBGridEh1.DataSource.DataSet.IsEmpty then Exit;
  tbSel.OnClick(Self);
end;

procedure TBaseInfoSelectForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;
end;

procedure TBaseInfoSelectForm.tbRefClick(Sender: TObject);
begin
  inherited;
  QBaseInfo.Filter := '';
end;

procedure TBaseInfoSelectForm.tbFinClick(Sender: TObject);
begin
  inherited;
  FindPublic(DBGridEh1, sPubFindText, lPubFindFiled);
end;

procedure TBaseInfoSelectForm.tbsFitClick(Sender: TObject);
begin
  inherited;
  FilterPublic(DBGridEh1);
end;

procedure TBaseInfoSelectForm.tbsSavClick(Sender: TObject);
begin
  inherited;
  DBGridEhExport(DBGridEh1, Self);
end;

procedure TBaseInfoSelectForm.tbsPriClick(Sender: TObject);
begin
  inherited;
  PrintForm1.PrintFastReport; 
end;

procedure TBaseInfoSelectForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
