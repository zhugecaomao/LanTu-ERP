unit ShowProgress;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ADODB;

type
  TProgressBar = class(TComponent)

  private
    { Private declarations }
  public
    { Public declarations }
    //数据加载窗体
    function ShowProgress(aqy: TADOQuery; sSql: String):Boolean;
  end;

implementation

uses ProgressBar;


function TProgressBar.ShowProgress(aqy: TADOQuery; sSql: String):Boolean;
begin
  if not aqy.Active then
  begin
    application.CreateForm (TProgressBarForm,ProgressBarForm);
    Try
      ProgressBarForm.P_message.Caption :='系统正在读取数据，请稍候……';
      ProgressBarForm.FormStyle :=FsStayOnTop;
      ProgressBarForm.show;
      ProgressBarForm.Update ;
      Application.ProcessMessages ;
      Screen.Cursor:=crSQLWait;
      with aqy do
      begin
        Close;
        Sql.Clear;
//        Sql.Add('select * from ' +TableName);
//        Sql.Add('ORDER BY ' +AscId+' ASC');
        Sql.Add(sSql);
        Open;
        ProgressBarForm.Free;
        Screen.Cursor :=crDefault;
      end;
      Result:=True;
      Except
        aqy.Close;
        Result:=False;
      End;
  end;
end;

end.
 