unit ProductBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseBill, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TProductBillForm = class(TBaseBillForm)
    ADOQMasterID: TAutoIncField;
    ADOQMasterDSDesigner: TWideStringField;
    ADOQMasterDSDesigner2: TDateTimeField;
    ADOQMasterDSDesigner3: TWideStringField;
    ADOQMasterDSDesigner4: TWideStringField;
    ADOQMasterDSDesigner5: TWideStringField;
    ADOQListID: TAutoIncField;
    ADOQListDSDesigner: TWideStringField;
    ADOQListDSDesigner2: TWideStringField;
    ADOQListDSDesigner3: TWideStringField;
    ADOQListDSDesigner4: TWideStringField;
    ADOQListDSDesigner5: TBCDField;
    ADOQListDSDesigner6: TWideStringField;
    ADOQListDSDesigner7: TDateTimeField;
    ADOQListDSDesigner8: TBCDField;
    ADOQListDSDesigner9: TFloatField;
    ADOQListDSDesigner10: TFloatField;
    ADOQListDSDesigner11: TBCDField;
    ADOQListDSDesigner12: TIntegerField;
    ADOQListDSDesigner13: TBooleanField;
    ADOQListDSDesigner14: TWideStringField;
    ADOQListDSDesigner15: TWideStringField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductBillForm: TProductBillForm;

implementation

uses ProductBillEdit;

{$R *.dfm}

procedure TProductBillForm.tbInsClick(Sender: TObject);
begin
  inherited;
  ShowProductBillEditForm(ADOQMaster, ADOQList, 'dsInsert');
end;

procedure TProductBillForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowProductBillEditForm(ADOQMaster, ADOQList, 'dsEdit');
end;

end.
