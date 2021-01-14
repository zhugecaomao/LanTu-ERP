unit DragMoveComponent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

const
  sc_DragMove: Longint = $F012;

type
  TDragMoveComponentForm = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DragMoveComponentForm: TDragMoveComponentForm;

implementation

{$R *.dfm}

end.
