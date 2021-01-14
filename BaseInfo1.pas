unit BaseInfo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseInfo, PrintForm, DB, ADODB, Grids, DBGridEh, ComCtrls,
  ToolWin, ExtCtrls, PropStorageEh;

type
  TBaseInfo1Form = class(TBaseInfoForm)
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseInfo1Form: TBaseInfo1Form;

implementation

{$R *.dfm}

end.
