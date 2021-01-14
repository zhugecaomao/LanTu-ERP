unit SoftDataType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSoftDataType = class(TComponent)
  private
    FConnStr: string;
    { Private declarations }
  public
    { Public declarations }
    procedure FSetConn(AValue: string);
    function FGetConn: string;
    property Conn: string read FGetConn write FSetConn;
end;

implementation

{ TSoftDataType }

function TSoftDataType.FGetConn: string;
begin
  Result := FConnStr;
end;

procedure TSoftDataType.FSetConn(AValue: string);
begin
  FConnStr := AValue;
end;

end.
