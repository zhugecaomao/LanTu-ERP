unit ProjectProductBillEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, ExtCtrls, Grids, DBGridEh, ComCtrls, StdCtrls, Mask,
  DBCtrls, ADODB, Buttons, DB, DBCtrlsEh, DBLookupEh;

type
  TProjectProductBillEditForm = class(TBaseNormalForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh4: TDBEditEh;
    Edit1: TEdit;
    DBEditEh2: TDBEditEh;
    Label6: TLabel;
    DBEditEh3: TDBEditEh;
    ADOQryTmp: TADOQuery;
    Ado_insert: TADOQuery;
    procedure DBGridEh2Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure DBGridEh2Enter(Sender: TObject);
  private
    { Private declarations }

  protected
    ADOMaster, ADOProject, ADOProduct: TADOQuery;
  public
    { Public declarations }
  end;

procedure ShowProjectProductBillEditForm(ADOMaster1, ADOList1, ADOList2: TADOQuery; State1: string);

implementation

uses SysPublic, DataM, ProjectProductBill, ProductSelect, ProjectSelect;

{$R *.dfm}

procedure ShowProjectProductBillEditForm(ADOMaster1, ADOList1, ADOList2: TADOQuery; State1: string);
var
  ProjectProductBillEditForm: TProjectProductBillEditForm;
begin
  ProjectProductBillEditForm:= TProjectProductBillEditForm.Create(Nil);
  ProjectProductBillEditForm.ADOMaster:= ADOMaster1;
  ProjectProductBillEditForm.ADOProject := ADOList1;
  ProjectProductBillEditForm.ADOProduct := ADOList2;
    if State1 = 'dsEdit' then
        ProjectProductBillEditForm.ADOMaster.Edit;

    if State1 = 'dsInsert' then
//      ProductBillEditForm.ADOMaster.Insert;
  IDGen(ProjectProductBillEditForm.ADOMaster, 'XC', '项目产品单主表', '单据编号', '录单日期', 11, 4);

  ProjectProductBillEditForm.ShowModal;
end;

procedure TProjectProductBillEditForm.DBGridEh2Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  inherited;
  ShowProductSelectForm(ADOProduct);
end;

procedure TProjectProductBillEditForm.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  inherited;
  ShowProjectSelectForm(ADOProject);
end;

procedure TProjectProductBillEditForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ADOMaster.Append;

end;

procedure TProjectProductBillEditForm.BitBtn2Click(Sender: TObject);
Const
  Tab_pre_proj   ='订制项目明细表';
  Tab_pre_prod   ='订制产品明细表';
  Tab_ServerPack ='服务项目包';
  Tab_ServerPack_prod ='产品资料包';
var
  str_hyid : string;
  str_tmp  : string;    // 编号
  str_sql  : string;
  int_num  : double;    //数量
  str_packname : string;
  Tmp_ado  : TAdoquery;
begin
  inherited;
   if ADOMaster.State in [dsEdit, dsInsert] then
    ADOMaster.Post;

  if ADOProject.State in [dsEdit, dsInsert] then
    ADOProject.Post;

  if ADOProduct.State in [dsEdit, dsInsert] then
    ADOProduct.Post;

 //----------------------------------------------------------------------------
    Tmp_ado:=nil;
    str_hyid:=''''+trim(DBEditEh2.Field.Text)+'''';
    try
      Tmp_ado:=TAdoquery.Create(nil);
      Getconn(Tmp_ado);
      if Adoproject.RecordCount>0 then
      begin
      while not Adoproject.eof do
      begin
        str_tmp:=''''+trim(Adoproject.fieldbyname('项目编号').AsString)+'''';      //包编号
        str_packname:=''''+trim(Adoproject.fieldbyname('项目名称').AsString)+''''; //包名称
        int_num:=Adoproject.fieldbyname('数量').AsFloat;      //数量
        Tmp_ado.close;
        Tmp_ado.SQL.clear;
        Tmp_ado.sql.Add(format('select * from %s where 项目编号=%s',[Tab_ServerPack,str_tmp]));
        Tmp_ado.Open;
        while not Tmp_ado.eof do
        begin
          str_sql:=format('insert into %s (会员编号,项目编号,项目名称,消费方式,量,金额,剩余,所属包编号,所属包名称,类别编号,类别名称) values(',[Tab_pre_proj]);
          str_sql:=str_sql+str_hyid+',';
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('编号').asstring+''''+',';       // 详细条目项目编号
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('项目名称').asstring+''''+',';   // 详细条目项目名称
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('消费方式').asstring+''''+',';   // 详细条目消费方式
          str_sql:=str_sql+floattostr(Tmp_ado.fieldbyname('长度').AsFloat*int_num)+',';
          str_sql:=str_sql+floattostr(Tmp_ado.fieldbyname('单价').AsFloat*int_num)+',';
          str_sql:=str_sql+floattostr(Tmp_ado.fieldbyname('长度').AsFloat*int_num)+',';

          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('项目编号').asstring+''''+',';// 所属包编号
          str_sql:=str_sql+str_packname+',';                                      // 所属包名称
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('类别编号').asstring+''''+',';
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('类别名称').asstring+'''';
          str_sql:=str_sql+')';

       //   showmessage(str_sql);

          Ado_insert.Close;
          Ado_insert.SQL.Clear;
          Ado_insert.SQL.add(str_sql);
          Ado_insert.ExecSQL;
          Tmp_ado.Next;
        end;
        Adoproject.Next;
      end;  //       > 0 end
      end;


      //产品包
      if ADOProduct.RecordCount>0 then
      while not ADOProduct.eof do
      begin
        str_tmp:=''''+trim(ADOProduct.fieldbyname('产品编号').AsString)+'''';      //包编号
        str_packname:=''''+trim(ADOProduct.fieldbyname('产品名称').AsString)+''''; //包名称
        int_num:=ADOProduct.fieldbyname('数量').AsFloat;      //数量
        Tmp_ado.close;
        Tmp_ado.SQL.clear;
        Tmp_ado.sql.Add(format('select * from %s where 产品编号=%s',[Tab_ServerPack_prod,str_tmp]));

 //       showmessage(Tmp_ado.SQL.Text);

        Tmp_ado.Open;
        while not Tmp_ado.eof do
        begin
          str_sql:=format('insert into %s (会员编号,产品编号,产品名称,量,金额,剩余,所属包编号,所属包名称,类别编号,类别名称) values(',[Tab_pre_prod]);
          str_sql:=str_sql+str_hyid+',';
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('编号').asstring+''''+',';       // 详细条目项目编号
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('产品名称').asstring+''''+',';   // 详细条目项目名称
//          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('消费方式').asstring+''''+',';   // 详细条目消费方式
          str_sql:=str_sql+floattostr(Tmp_ado.fieldbyname('数量').AsFloat*int_num)+',';
          str_sql:=str_sql+floattostr(Tmp_ado.fieldbyname('销售价').AsFloat*int_num)+',';
          str_sql:=str_sql+floattostr(Tmp_ado.fieldbyname('数量').AsFloat*int_num)+',';

          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('产品编号').asstring+''''+',';// 所属包编号
          str_sql:=str_sql+str_packname+',';                                      // 所属包名称
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('类别编号').asstring+''''+',';
          str_sql:=str_sql+''''+Tmp_ado.fieldbyname('类别名称').asstring+'''';
          str_sql:=str_sql+')';

 //         showmessage(str_sql);

          Ado_insert.Close;
          Ado_insert.SQL.Clear;
          Ado_insert.SQL.add(str_sql);
          Ado_insert.ExecSQL;
          Tmp_ado.Next;
        end;
        Adoproduct.Next;
      end;

    finally
      Tmp_ado.Free;
    end;
  //----------------------------------------------------------------------------



  Close;
end;

procedure TProjectProductBillEditForm.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TProjectProductBillEditForm.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F1 then
  ShowProjectSelectForm(ADOProject);
end;

procedure TProjectProductBillEditForm.DBGridEh2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F1 then
  ShowProductSelectForm(ADOProduct);
end;

procedure TProjectProductBillEditForm.Edit1Change(Sender: TObject);
begin
  inherited;

  with ADOQryTmp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * From 会员资料 where 卡号= :Param');
    Parameters.ParamByName('Param').Value := Trim(Edit1.Text);
    Open;
    Edit;
  end;
end;

procedure TProjectProductBillEditForm.Edit1Exit(Sender: TObject);
begin
  inherited;
  if not ADOQryTmp.Active  then Exit;

  if ADOQryTmp.RecordCount>0 then
  begin
    ADOMaster.Edit;
    ADOMaster.FieldByName('会员编号').AsString := ADOQryTmp.FieldByName('会员编号').AsString;
    ADOMaster.FieldByName('会员名称').AsString := ADOQryTmp.FieldByName('会员名称').AsString
  end
  else
  begin
    ShowMsg('此会员不存在!');
    Edit1.SetFocus;
//    Exit;
  end;
end;

procedure TProjectProductBillEditForm.DBGridEh1Enter(Sender: TObject);
begin
  inherited;
  if ADOMaster.Modified then
    ADOMaster.Post;

end;

procedure TProjectProductBillEditForm.DBGridEh2Enter(Sender: TObject);
begin
  inherited;
  if ADOMaster.Modified then
    ADOMaster.Post;
end;

end.
