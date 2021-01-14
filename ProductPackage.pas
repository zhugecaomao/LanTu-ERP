unit ProductPackage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin;

type
  TProductPackageForm = class(TBaseInfoForm)
    QBaseInfoID2: TAutoIncField;
    QBaseInfoDSDesigner15: TWideStringField;
    QBaseInfoDSDesigner16: TWideStringField;
    QBaseInfoDSDesigner17: TIntegerField;
    QBaseInfoDSDesigner: TWideStringField;
    QBaseInfoDSDesigner3: TWideStringField;
    QBaseInfoDSDesigner4: TBCDField;
    QBaseInfoDSDesigner6: TBCDField;
    QBaseInfoDSDesigner7: TBCDField;
    QBaseInfoDSDesigner8: TBCDField;
    QBaseInfoDSDesigner9: TBCDField;
    QBaseInfoDSDesigner10: TIntegerField;
    QBaseInfoDSDesigner11: TBooleanField;
    QBaseInfoDSDesigner12: TWideStringField;
    QBaseInfoDSDesigner13: TWideStringField;
    QBaseInfoDSDesigner2: TWideStringField;
    QBaseInfoDSDesigner14: TWideStringField;
    QBaseInfoDSDesigner5: TBCDField;
    procedure tbInsClick(Sender: TObject);
    procedure tbEdiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductPackageForm: TProductPackageForm;

implementation

uses Product, ProductPackageEdit;

{$R *.dfm}

procedure TProductPackageForm.tbInsClick(Sender: TObject);
begin
  inherited;
    ShowProductPackageEditForm(QBaseInfo, 'dsInsert');
end;

procedure TProductPackageForm.tbEdiClick(Sender: TObject);
begin
  inherited;
  ShowProductPackageEditForm(QBaseInfo, 'dsEdit');
end;

end.
