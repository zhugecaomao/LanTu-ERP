unit SetComboBox;

interface

uses Classes,ADODB,SysUtils,Dialogs, StdCtrls, Graphics;

type
  TSetComboBox=class(TComponent)

  public
    //加入COMBOBOX中
    Function SetComboBox(sFieldName, sTable: string; ADOQryTmp: TADOQuery; ComboBox1: TComboBox): Boolean;
end;

implementation

uses DataM;

{ TSetComboBox }

function TSetComboBox.SetComboBox(sFieldName, sTable: string;
  ADOQryTmp: TADOQuery; ComboBox1: TComboBox): Boolean;
var
  S1, S2: string;
  S, SS, SSS: string;
  i, l, l1, l2, n: integer;
  ADOTmp: TADOQuery;
begin
  Try
    Result := True;
    ComboBox1.Color:= clWindow;
    ComboBox1.Clear;
    ADOQryTmp.Close;
    ADOQryTmp.SQL.Clear;
    ADOQryTmp.SQL.Add('Select * From '+ sTable);
    ADOQryTmp.Open;

    ADOQryTmp.First;
    while not ADOQryTmp.Eof do
    begin
      i := 0;
      S1:= sFieldName + ',';
       //判断sFieldName中是否有，有，则继续
      while pos(',', S1) <>0 do
      begin
        //截取，之前的字符串
        S2:= Copy(S1, 0, Pos(',', S1)-1);
        //截取，之后的字符串
        S1 := copy(S1, pos(',', S1) + 1, Length(S1));
        if Trim(S2)<>'' then
        begin
          ADOTmp:= TADOQuery.Create(Nil);
          ADOTmp.Connection:= DataMForm.ADOConnet;

          ADOTmp.Close;
          ADOTmp.SQL.Clear;
          ADOTmp.SQL.Add('select top 1 ' + S2 + ' as S2 from ' + sTable + ' order by len( '+ S2 + ') desc');
          ADOTmp.Open;

          l:= Length(ADOTmp.FieldByName('S2').AsString);
          SS:= ADOQryTmp.FieldByName(S2).AsString;
          l1:= Length(ADOQryTmp.FieldByName(S2).AsString);
          l2:=l- l1;
          for n:=0 to l2-1 do
          begin
            SS:= SS + ' ';
          end;
        end;
          if i>0 then S:= S + '|';
            S:= S+ SS;
        Inc(i);
      end;
    ComboBox1.Items.Add(S);
    S:='';
     //每条记录加入COMBOBOX中
    ADOQryTmp.Next;
  end;
  ComboBox1.ItemIndex:= 0;
  Except
    Result:= False;
  end;
end;

end.
