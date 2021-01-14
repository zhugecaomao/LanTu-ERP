unit SetFormStyle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseNormal, StdCtrls, ExtCtrls, DB, ADODB, Buttons,
  Grids, DBGridEh, BaseEx;

type
  TSetFormStyleForm = class(TBaseNormalForm)
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    CheckBox3: TCheckBox;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    QBaseInfo: TADOQuery;
    dsBaseInfo: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    cColor1, cColor2: TColor;
    procedure ReadmxOutlookBarProStyle;
    procedure ReadCheckBox;
    procedure ReadCheckBox2;
    procedure SetListBoxColor;
    procedure SetColorPreview;
    procedure DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
    procedure SetDBGridEhColor;
    procedure ShowDBGridEhColor;
  public
    { Public declarations }
  end;

procedure ShowSetFormStyleForm;

implementation

uses SysPublic, Main;

{$R *.dfm}

procedure ShowSetFormStyleForm;
var
  SetFormStyleForm: TSetFormStyleForm;
begin
  SetFormStyleForm:= TSetFormStyleForm.Create(Nil);
  SetFormStyleForm.ShowModal;
end;

procedure TSetFormStyleForm.FormShow(Sender: TObject);
begin
  inherited;
  ReadmxOutlookBarProStyle;
  ReadCheckBox;
  ReadCheckBox2;
  if not QBaseInfo.Active then
    QBaseInfo.Open;

  ShowDBGridEhColor;
  SetDBGridEhColor;
end;

procedure TSetFormStyleForm.ReadmxOutlookBarProStyle;
var
  smxOutlookBarPro: string;
  ADOQryTmp: TADOQuery;
begin
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From SystemTable Where Name=''mxOutlookBarProStyle''');
  ADOQryTmp.Open;

  smxOutlookBarPro:= ADOQryTmp.FieldByName('Code').AsString;

  if smxOutlookBarPro = 'psOutlook' then
  RadioGroup2.ItemIndex:=0
  else
  if smxOutlookBarPro ='psFlatOutlook' then
  RadioGroup2.ItemIndex:=1
  else
  if smxOutlookBarPro = 'psOutlookExpress' then
  RadioGroup2.ItemIndex:=2
  else
  if smxOutlookBarPro = 'psOffice' then
  RadioGroup2.ItemIndex:=3
  else
  if smxOutlookBarPro= 'psOfficeXP' then
  RadioGroup2.ItemIndex:=4
  else
  if smxOutlookBarPro= 'psOffice2000' then
  RadioGroup2.ItemIndex:=5
  else
  if smxOutlookBarPro= 'psToolBox' then
  RadioGroup2.ItemIndex:=6
  else
  if smxOutlookBarPro= 'psFlatToolBox' then
  RadioGroup2.ItemIndex:=7
  else
  if smxOutlookBarPro= 'psExplorerBar' then
  RadioGroup2.ItemIndex:=8
  else
  if smxOutlookBarPro= 'psExplorerBarXP' then
  RadioGroup2.ItemIndex:=9
  else
  if smxOutlookBarPro= 'psExplorerBar2000' then
  RadioGroup2.ItemIndex:=10;
end;

procedure TSetFormStyleForm.ReadCheckBox;
var
  sCheck: string;
  ADOQryTmp: TADOQuery;
begin
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From SystemTable Where Name=''DBGridEhAutoFitColWidth''');
  ADOQryTmp.Open;

  sCheck:= ADOQryTmp.FieldByName('Code').AsString;

  if sCheck = 'True' then
    CheckBox1.Checked:= True
  else
    CheckBox1.Checked:= False;
end;

procedure TSetFormStyleForm.ReadCheckBox2;
var
  sCheck: string;
  ADOQryTmp: TADOQuery;
begin
  ADOQryTmp:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp);
  ADOQryTmp.Close;
  ADOQryTmp.SQL.Clear;
  ADOQryTmp.SQL.Add('Select * From SystemTable Where Name=''DBGridEhFlat''');
  ADOQryTmp.Open;

  sCheck:= ADOQryTmp.FieldByName('Code').AsString;

  if sCheck = 'True' then
    CheckBox2.Checked:= True
  else
    CheckBox2.Checked:= False;
end;

procedure TSetFormStyleForm.FormCreate(Sender: TObject);
begin
  inherited;
  bOperateLog:= False;
  SetDBGridEhColor;
end;

procedure TSetFormStyleForm.SetListBoxColor;
var
  ADOQryTmp1, ADOQryTmp2: TADOQuery;
begin
  if ListBox1.Selected[0] =True then
  begin
    cColor1 :=clWhite;
    cColor2 :=clInfoBk ;
  end;
  if ListBox1.Selected[1] = True then
  begin
    cColor1 :=$00FDF2DF;
    cColor2 :=clInfoBk;
  end;
  if ListBox1.Selected[2] = True then
  begin
    cColor1 :=clWhite;
    cColor2 :=$00EEEEEE;
  end;
  if ListBox1.Selected[3] = True then
  begin
    cColor1:= $CCFFCC;
    cColor2:= $C0F09B;
  end;
  if ListBox1.Selected[4] = True then
  begin
    cColor1:= clAqua;
    cColor2:= clblue;
  end;
  try

    ADOQryTmp1:= TADOQuery.Create(Nil);
    GetConn(ADOQryTmp1);
    ADOQryTmp1.Close;
    ADOQryTmp1.SQL.Clear;
    ADOQryTmp1.SQL.Add('Select * From SystemTable Where Name=''DBGridEhEvenColor''');  //偶数
    ADOQryTmp1.Open;
    ADOQryTmp1.Edit;
    ADOQryTmp1.FieldByName('Code').AsString := ColorToString(cColor1);
    ADOQryTmp1.Post;

    ADOQryTmp2:= TADOQuery.Create(Nil);
    GetConn(ADOQryTmp2);
    ADOQryTmp2.Close;
    ADOQryTmp2.SQL.Clear;
    ADOQryTmp2.SQL.Add('Select * From SystemTable Where Name=''DBGridEhOodColor''');
    ADOQryTmp2.Open;
    ADOQryTmp2.Edit;
    ADOQryTmp2.FieldByName('Code').AsString := ColorToString(cColor2);
    ADOQryTmp2.Post;
  finally
    ADOQryTmp1.Close;
    ADOQryTmp1.Free;
    ADOQryTmp2.Close;
    ADOQryTmp2.Free;
  end;

end;

procedure TSetFormStyleForm.SetColorPreview;
begin
  if ListBox1.Selected[0] =True then
  begin
    cColor1 :=clWhite;
    cColor2 :=clInfoBk ;
  end;
  if ListBox1.Selected[1] = True then
  begin
    cColor1 :=$00FDF2DF;
    cColor2 :=clInfoBk;
  end;
  if ListBox1.Selected[2] = True then
  begin
    cColor1 :=clWhite;
    cColor2 :=$00EEEEEE;
  end;
  if ListBox1.Selected[3] = True then
  begin
    cColor1 :=$CCFFCC;
    cColor2 :=$C0F09B;
  end;
  if ListBox1.Selected[4] = True then
  begin
    cColor1 :=clAqua;
    cColor2 :=clblue;
  end;
end;

procedure TSetFormStyleForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SetColorPreview;
  SetDBGridEhColor;  
end;

procedure TSetFormStyleForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
  SaveDBGridEhAutoFitColWidth(CheckBox1);
  SaveDBGridEhFlat(CheckBox2);
  SaveDBEditEhFlat(CheckBox3);
  SetListBoxColor;
  Close;
end;

procedure TSetFormStyleForm.DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  cColor: TColor;
begin
  if gdSelected in State then Exit;
    if TDBGridEh(Sender).SumList.RecNo Mod 2= 0 then
    cColor:= cColor1
  else
    cColor := cColor2;
  (Sender as TDBGridEh).Canvas.Brush.Color:= cColor;
  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TSetFormStyleForm.SetDBGridEhColor;
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin  { 遍历Form组件 }
      if Components[i] is TDBGridEh then
      begin
        (Components[i] as TDBGridEh).Refresh; 
        (Components[i] as TDBGridEh).OnDrawColumnCell:= DBGridEhDrawColumnCell;
      end;
  end;
end;

procedure TSetFormStyleForm.ShowDBGridEhColor;
var
  ADOQryTmp1, ADOQryTmp2: TADOQuery;
begin
  ADOQryTmp1:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp1);

  ADOQryTmp1.Close;
  ADOQryTmp1.SQL.Clear;
  ADOQryTmp1.SQL.Add('Select * From SystemTable Where Name=''DBGridEhEvenColor''');
  ADOQryTmp1.Open;

  cColor1:= StringToColor(ADOQryTmp1.FieldByName('Code').AsString);

  ADOQryTmp2:= TADOQuery.Create(Nil);
  GetConn(ADOQryTmp2);

  ADOQryTmp2.Close;
  ADOQryTmp2.SQL.Clear;
  ADOQryTmp2.SQL.Add('Select * From SystemTable Where Name=''DBGridEhOodColor''');
  ADOQryTmp2.Open;

  cColor2:= StringToColor(ADOQryTmp2.FieldByName('Code').AsString);

end;

end.
