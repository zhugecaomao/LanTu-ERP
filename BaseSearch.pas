unit BaseSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, Grids, DBGridEh, ComCtrls, ToolWin, DB, ADODB,
  PrintForm, BaseNormal;

type
  TBaseSearchForm = class(TBaseNormalForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbRef: TToolButton;
    tbSep1: TToolButton;
    tbFin: TToolButton;
    tbsFit: TToolButton;
    tbsSep2: TToolButton;
    tbsPri: TToolButton;
    tbsSav: TToolButton;
    tbsSep3: TToolButton;
    tbsExi: TToolButton;
    DBGridEh1: TDBGridEh;
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    PrintForm1: TPrintForm;
    procedure tbRefClick(Sender: TObject);
    procedure tbFinClick(Sender: TObject);
    procedure tbsPriClick(Sender: TObject);
    procedure tbsFitClick(Sender: TObject);
    procedure tbsSavClick(Sender: TObject);
    procedure tbsExiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    bPrint: Boolean;
    { Private declarations }
  protected
    sPubFindText: string;
    lPubFindFiled: Integer;
  public
    { Public declarations }
  end;

var
  BaseSearchForm: TBaseSearchForm;

implementation

uses DataM, SysPublic;

{$R *.dfm}

procedure TBaseSearchForm.tbRefClick(Sender: TObject);
begin
  inherited;
  QBaseInfo.Filter := '';
end;

procedure TBaseSearchForm.tbFinClick(Sender: TObject);
begin
  inherited;
  FindPublic(DBGridEh1, sPubFindText, lPubFindFiled);
end;

procedure TBaseSearchForm.tbsPriClick(Sender: TObject);
begin
  inherited;
  if bPrint then
    PrintForm1.PrintFastReport; 
end;

procedure TBaseSearchForm.tbsFitClick(Sender: TObject);
begin
  inherited;
  FilterPublic(DBGridEh1);
end;

procedure TBaseSearchForm.tbsSavClick(Sender: TObject);
begin
  inherited;
  DBGridEhExport(DBGridEh1, Self);
end;

procedure TBaseSearchForm.tbsExiClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBaseSearchForm.FormShow(Sender: TObject);
begin
  inherited;
  if not QBaseInfo.Active then
    QBaseInfo.Open;

  bPrint:= True;  
end;

end.
