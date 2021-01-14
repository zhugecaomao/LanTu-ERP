unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, Grids, DBGridEh, DB, ADODB;

type
  TBaseMdiForm1 = class(TBaseMdiForm)
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    ADOQuery1: TADOQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseMdiForm1: TBaseMdiForm1;

implementation

uses DataM;

{$R *.dfm}

procedure TBaseMdiForm1.FormShow(Sender: TObject);
begin
  inherited;
  if not ADOQuery1.Active then
    ADOQuery1.Open;
end;

end.
