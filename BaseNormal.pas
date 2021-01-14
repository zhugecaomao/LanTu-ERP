unit BaseNormal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBGridEh, Base;

type
  TBaseNormalForm = class(TBaseDBGridEhForm)
  private
    { Private declarations }
    protected
      SubBaseInfoEditForm: TForm;
  public
    { Public declarations }
  end;

var
  BaseNormalForm: TBaseNormalForm;

implementation

{$R *.dfm}

end.
