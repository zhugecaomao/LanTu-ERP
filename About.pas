unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base, StdCtrls, jpeg, ExtCtrls, BaseNormal;

type
  TAboutForm = class(TBaseForm)
    Label1: TLabel;
    procedure FormDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowAboutForm;

implementation

{$R *.dfm}

procedure ShowAboutForm;
var
  AboutForm: TAboutForm;
begin
  AboutForm:= TAboutForm.Create(Application);
  AboutForm.ShowModal; 
end;

procedure TAboutForm.FormDblClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  inherited;
  bOperateLog:= False;
end;

end.
