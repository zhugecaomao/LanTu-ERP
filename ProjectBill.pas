unit ProjectBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseBill, DB, ADODB, Grids, DBGridEh, ComCtrls, ToolWin,
  PrintForm;

type
  TProjectBillForm = class(TBaseBillForm)
    ADOQMasterID: TAutoIncField;
    ADOQMasterDSDesigner: TWideStringField;
    ADOQMasterDSDesigner2: TDateTimeField;
    ADOQMasterDSDesigner3: TWideStringField;
    ADOQMasterDSDesigner4: TWideStringField;
    ADOQMasterDSDesigner5: TWideStringField;
    procedure tbEdiClick(Sender: TObject);
    procedure tbInsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProjectBillForm: TProjectBillForm;

implementation

uses ProjectBillEdit;

{$R *.dfm}

procedure TProjectBillForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowProjectBillEditForm(ADOQMaster, ADOQList,'dsEdit');
end;

procedure TProjectBillForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowProjectBillEditForm(ADOQMaster, ADOQList,'dsInsert');
end;

end.
