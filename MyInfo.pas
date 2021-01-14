unit MyInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids,
  DBGridEh, DBCtrlsEh, Mask, StdCtrls, ComCtrls;

type
  TMyInfoForm = class(TBaseNormalForm)
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADODataSet1ID: TAutoIncField;
    ADODataSet1Date: TDateTimeField;
    ADODataSet1Title: TWideStringField;
    ADODataSet1content: TMemoField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyInfoForm: TMyInfoForm;

implementation

{$R *.dfm}

procedure TMyInfoForm.FormShow(Sender: TObject);
begin
  inherited;
  if not ADODataSet1.Active then
    ADODataSet1.Open;
end;

end.
