unit BaseBillMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMdi, ComCtrls, ToolWin;

type
  TBaseBillMainForm = class(TBaseMdiForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbIns: TToolButton;
    tbEdi: TToolButton;
    tbDel: TToolButton;
    tbRef: TToolButton;
    tbSep1: TToolButton;
    tbFin: TToolButton;
    tbsFit: TToolButton;
    tbsSep2: TToolButton;
    tbsPri: TToolButton;
    tbsSav: TToolButton;
    tbsSep3: TToolButton;
    tbsExi: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseBillMainForm: TBaseBillMainForm;

implementation

{$R *.dfm}

end.
