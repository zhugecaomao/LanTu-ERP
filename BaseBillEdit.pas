unit BaseBillEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, ComCtrls, ToolWin, ExtCtrls, Grids, DBGridEh,
  DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, PrintForm, BaseMdi;

type
  TBaseBillEditForm = class(TBaseNormalForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PrintForm1: TPrintForm;
    bbPrint: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
  private

    { Private declarations }
  protected
    ADOMaster, ADOList: TADOQuery;
  public

    { Public declarations }
  end;

var
  BaseBillEditForm: TBaseBillEditForm;

implementation

uses DataM;

{$R *.dfm}

procedure TBaseBillEditForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ADOMaster.Append;
end;

procedure TBaseBillEditForm.BitBtn2Click(Sender: TObject);
begin
  inherited;

//  if (ADOMaster.IsEmpty) or (ADOList.IsEmpty) then
//  BitBtn3Click(Self);

//   ADOMaster.Post;
   ADOMaster.UpdateBatch(arAll);
   ADOList.UpdateBatch(arAll);

   Close;
end;

procedure TBaseBillEditForm.BitBtn3Click(Sender: TObject);
begin
  inherited;
  ADOMaster.CancelBatch(arAll);
  ADOList.CancelBatch(arAll); 

  Close;
end;

procedure TBaseBillEditForm.DBGridEh1Enter(Sender: TObject);
begin
  inherited;
  if ADOMaster.Modified then
    ADOMaster.Post;
end;

procedure TBaseBillEditForm.FormShow(Sender: TObject);
begin
  inherited;
//  DBGridEh1.DataSource.DataSet := ADOList;
end;

procedure TBaseBillEditForm.bbPrintClick(Sender: TObject);
begin
  inherited;
  PrintForm1.PrintFastReport; 
end;

end.
