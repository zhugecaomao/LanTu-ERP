unit publicUn;          //公共单元

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs,StdCtrls,AdoDb;
  //检查数据完整性
  Function check_data(str_tmp : string) : Boolean;

  //获取会员信息
  Function Get_hy_info(str_tmp:string; var sRet : Array of string) : Boolean;             //取会员编号、名称

  //开台、订台操作
  Procedure insert_data(str_id,str_name,str_seat,str_number,str_note,str_type : string);  //订台  或  开台

  //获取 空台列表
  procedure ini_dtbase(Combobox : TCombobox);

implementation

uses SysPublic;

Const
  Tab_hy  ='会员资料';
  Tab_dt  ='台位资料表';
  Tab_dtyy='台位营业表';


// str_tmp 为传进来的卡号 ; 返回会员编号、名称
Function Get_hy_info(str_tmp:string; var sRet : Array of string) : Boolean;
var
  Tmp_Ado : TAdoquery;
  str_sql : string;
  i,j     : integer;
begin
  Result:=true;
  Tmp_ado:=nil;
  i:=low(sRet);
  j:=high(sRet);
  str_sql:=''''+str_tmp+'''';
  try
    Tmp_ado:=TAdoquery.Create(nil);
    GetConn(Tmp_ado);
    with Tmp_ado do
    begin
      sql.Add(format('select 会员编号,会员名称 from %s where 卡号=%s',[Tab_hy,str_sql]));
      sql.add(' and 卡状态 is null');
      open;
      if recordcount<1 then
      begin
        sRet[i] :='';
        sRet[j]:='';
        close;
      end
      else
      begin
        sRet[i] :=trim(fieldvalues['会员编号']);
        sRet[j]:=trim(fieldvalues['会员名称']);
        close;
      end;
    end;
  finally
    Tmp_Ado.Free;
  end;
end;


//===========================添加数据================================
procedure insert_data(str_id,str_name,str_seat,str_number,str_note,str_type : string);         //订台  或  开台
var
  Tmp_Ado  : TAdoquery;
  str_list : string;
  str_val  : string;
  str_tmp  : string;
begin
  Tmp_ado:=nil;
  try
    Tmp_ado:=TAdoquery.create(nil);
    Getconn(Tmp_ado);
    with Tmp_ado do
    begin
      str_list:='会员编号,会员名称,台号,台号名称,人数,备注,操作员,状态';
      str_val:=''''+str_id+''''+',';                       //会员编号

      str_val:=str_val+''''+str_name+''''+',';             //会员名称

      str_val:=str_val+''''+trim(copy(str_seat,1,pos('|',str_seat)-1))+''''+',';  //台位编号
      str_val:=str_val+''''+trim(copy(str_seat,pos('|',str_seat)+1,length(str_seat)))+''''+','; //台位名称

      if trim(str_number)='' then                          //人数
      str_val:=str_val+'0'+','
      else
      str_val:=str_val+str_number+',';

      str_val:=str_val+''''+str_note+''''+',';             //备注

      str_val:=str_val+''''+LoginEmployeName+''''+',';     //操作者

      str_val:=str_val+''''+str_type+'''';                 //开台、订台

      sql.Add(format('insert into %s (%s) values (%s)',[Tab_dtyy,str_list,str_val]));
      execsql;
      close;

      //更新 订台资料表
      str_val:=''''+trim(copy(str_seat,1,pos('|',str_seat)-1))+'''';
      if str_type='开台' then
      str_tmp:=''''+'营业'+''''
      else
      str_tmp:=''''+'预订'+'''';

      sql.Clear;
      sql.Add(format('update %s set 营业状态=%s where 编号=%s',[Tab_dt,str_tmp,str_val]));
      execsql;
      close;

      if str_type='开台' then
      showmessage('开台完成!')
      else
      showmessage('订台完成!');
    end;
  finally
    Tmp_ado.free;
  end;
end;


Function check_data(str_tmp : string) : Boolean;
begin
  Result:=true;
  if trim(str_tmp)='' then
  begin
    showmessage('请选择台号!');
    Result:=false;
  end;
end;


//获取空台列表
procedure ini_dtbase(Combobox : TCombobox);
var
  Tmp_Ado : TAdoquery;
  str_val : string;
  str_id,str_name : string;
begin
  Tmp_ado:=nil;
  str_val:=''''+'''';
  combobox.Clear;
  try
    Tmp_Ado:=TAdoquery.Create(nil);
    GetConn(Tmp_ado);
    with Tmp_ado do
    begin
      SQL.Clear;
      SQL.Add(format('SELECT * FROM %s where 营业状态=%s',[Tab_dt,str_val]));
      Open;
      while not eof do
      begin
        str_id  :=trim(fieldbyname('编号').AsString);
        str_name:=trim(fieldbyname('名称').AsString);
        while length(str_id)<10 do
        str_id:=str_id+' ';
        str_val:=str_id+'|'+str_name;
        combobox.Items.Add(str_val);
        next;
      end;
    end;
    Tmp_ado.Close;
  finally
    Tmp_ado.Close;
    Tmp_ado.Free;
  end;
end;


end.
