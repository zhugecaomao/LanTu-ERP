unit PassEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, StdCtrls, Buttons, ADODB;

type
  TPassEditForm = class(TBaseNormalForm)
    Edit1: TEdit;
    Label1: TLabel;
    bbOk: TBitBtn;
    bbNo: TBitBtn;
    procedure bbNoClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FADOQryTmp: TADOQuery;
  public
    { Public declarations }
  end;

procedure ShowPassEditForm(ADOQryTmp: TADOQuery);

implementation

uses SysPublic;

{$R *.dfm}

procedure ShowPassEditForm(ADOQryTmp: TADOQuery);
var
  PassEditForm: TPassEditForm;
begin
  PassEditForm:= TPassEditForm.Create(Nil);
  PassEditForm.FADOQryTmp:= ADOQryTmp; 
  PassEditForm.ShowModal;  
end;

procedure TPassEditForm.bbNoClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPassEditForm.bbOkClick(Sender: TObject);
begin
  inherited;
  try
    FADOQryTmp.Edit;
    FADOQryTmp.FieldByName('员工密码').AsString := Trim(Edit1.Text);
    FADOQryTmp.Post;
    ShowMsg('密码修改成功！');
    Close;
  except
  end;
end;

procedure TPassEditForm.FormCreate(Sender: TObject);
begin
  inherited;
  bOperateLog:= False;
end;

end.
