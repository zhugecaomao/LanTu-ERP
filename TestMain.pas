unit TestMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls, Mask, DBTables, DBGridEh, Buttons, DBGrids;

type
  TTestMainForm = class(TForm)
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    ADODataSet1DSDesigner: TAutoIncField;
    ADODataSet1DSDesigner2: TStringField;
    ADODataSet1DSDesigner3: TStringField;
    ADODataSet1DSDesigner4: TStringField;
    ADODataSet1DSDesigner5: TBCDField;
    ADODataSet1DSDesigner6: TStringField;
    ADODataSet1DSDesigner7: TStringField;
    ADODataSet1DSDesigner8: TStringField;
    ADODataSet1DSDesigner9: TStringField;
    ADODataSet1DSDesigner10: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestMainForm: TTestMainForm;

implementation

uses DataM;

{$R *.dfm}

procedure TTestMainForm.FormShow(Sender: TObject);
begin
  if not ADODataSet1.Active then
    ADODataSet1.Open;
end;

procedure TTestMainForm.BitBtn1Click(Sender: TObject);
begin
  MessageDlg('See, ya!', mtInformation, [mbOK], 0);
end;

procedure TTestMainForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
with DBGrid1.DataSource.DataSet do
 begin
   if DataCol = 0 then//µÚÒ»ÁÐ
     DBGrid1.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, IntToStr(RecNo));
 end;

end;

end.
