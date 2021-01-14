unit PrintDBGrid;

interface

uses
 DBGridEh, QuickRpt, DB, Qrctrls,qrprntr,printers, Dialogs, Graphics, Classes;

procedure PrintDBGridEh(DBGridEh: TDBGridEh; pTitle: string);

implementation

procedure PrintDBGridEh(DBGridEh: TDBGridEh; pTitle: string);
const
  VER_MSG = '显示信息';
  VG_UnitName='公司名称';
var
  aReport: TQuickRep;
  i, aLeft: integer;
  PageHeaderBand1: TQRBand;
  ColumnHeaderBand1: TQRBand;
  DetailBand1: TQRBand;
  PageFooterBand1: TQRBand;
  oldBmk: TBookMark;
begin
  if not DBGridEh.DataSource.DataSet.Active then
  begin
    ShowMessage('数据集没有打开!');
    Exit;
  end;

  oldBmk := DBGridEh.DataSource.DataSet.GetBookmark;
  DBGridEh.DataSource.DataSet.First;
  aReport := TQuickRep.Create(nil);
  PageHeaderBand1 := aReport.CreateBand(rbPageHeader);
  ColumnHeaderBand1 := aReport.CreateBand(rbColumnHeader);
  DetailBand1 := aReport.CreateBand(rbDetail);
  PageFooterBand1 := aReport.CreateBand(rbPageFooter);
  aReport.DataSet := DBGridEh.DataSource.DataSet;
  aReport.Font := DBGridEh.Font;
  DetailBand1.Height := 27;

  with TQRLabel(PageHeaderBand1.AddPrintable(TQRLabel)) do
  begin
    Caption := pTitle;
    Top := 10;
    Left := 0;
    Font.Style := [fsBold];
    Font.Size := 14;
    Width := 0;
  end;

  aLeft := 0;
  for i := 0 to DBGridEh.FieldCount - 1 do
    aLeft := aLeft + DBGridEh.Columns[i].Width + 10;

  if aLeft > 728 then
    aReport.Page.Orientation := poLandscape
  else
    aReport.Page.Orientation := poPortrait;
  with TQRShape(PageHeaderBand1.AddPrintable(TQRShape)) do
  begin
    Top := 37;
    Left := 0;
    Height := 2;
    pen.Width := 2;
    Width := PageHeaderBand1.Width;
  end;
  with TQRShape(PageFooterBand1.AddPrintable(TQRShape)) do
  begin
    Top := 2;
    Left := 0;
    Height := 1;
    pen.Width := 1;
    Width := PageFooterBand1.Width;
  end;
  with TQRLabel(PageHeaderBand1.AddPrintable(TQRLabel)) do
  begin
    Font.Size := 8;
    Caption := VG_UnitName;
    Top := PageHeaderBand1.height - Height - 5;
    Left := PageHeaderBand1.Width - length(VER_MSG) * Font.Size - 5;
  end;
  with TQRSysData(PageFooterBand1.AddPrintable(TQRSysData)) do
  begin
    Data := qrsDateTime;
    Top := 10;
    Left := 0;
  end;
  with TQRLabel(PageFooterBand1.AddPrintable(TQRLabel)) do
  begin
    Caption := '第';
    Top := 10;
    Left := PageFooterBand1.Width - 380;
  end;
  with TQRSysData(PageFooterBand1.AddPrintable(TQRSysData)) do
  begin
    Data := qrsPageNumber;
    Top := 10;
    Left := PageFooterBand1.Width - 360;
  end;
  with TQRLabel(PageFooterBand1.AddPrintable(TQRLabel)) do
  begin
    Caption := '页';
    Top := 10;
    Left := PageFooterBand1.Width - 300;
  end;
  with TQRLabel(PageFooterBand1.AddPrintable(TQRLabel)) do
  begin
    Caption := '记录总数：';
    Top := 10;
    Left := PageFooterBand1.Width - 180;
  end;
  with TQRSysData(PageFooterBand1.AddPrintable(TQRSysData)) do
  begin
    Data := qrsDetailCount;
    Top := 10;
    Left := PageFooterBand1.Width - 100;
  end;

  aLeft := 0;
  for i := 0 to DBGridEh.FieldCount - 1 do
  begin
    if DBGridEh.Columns[i].Visible = false then
      continue;
    if aLeft + DBGridEh.Columns[i].Width > PageHeaderBand1.Width then
      Break;
    with TQRShape(ColumnHeaderBand1.AddPrintable(TQRShape)) do
    begin
      Height := 1;
      Top := ColumnHeaderBand1.Height - 5;
      Left := aLeft;
      Width := DBGridEh.Columns[i].Width;
    end;

    with TQRLabel(ColumnHeaderBand1.AddPrintable(TQRLabel)) do
    begin
      AutoSize := false;
      Width := DBGridEh.Columns[i].Width;
      Caption := DBGridEh.Columns[i].Title.Caption;
      Alignment := taCenter;
      Top := 10;
      Left := aLeft;
    end;

    with TQRDBText(DetailBand1.AddPrintable(TQRDBText)) do
    begin
      DataSet := DBGridEh.DataSource.DataSet;
      DataField := DBGridEh.Columns[i].FieldName;
      Alignment := DBGridEh.Columns[i].Alignment;
      Top := 5;
      Left := aLeft;
      AutoSize := False;
      Width := DBGridEh.Columns[i].Width;
    end;

    aLeft := aLeft + DBGridEh.Columns[i].Width + 10;
  end;

  aReport.Preview;

  ColumnHeaderBand1.Free;
  DetailBand1.Free;
  PageFooterBand1.Free;
  PageHeaderBand1.Free;

  aReport.Free;

  DBGridEh.DataSource.DataSet.GotoBookmark(oldBmk);
  DBGridEh.DataSource.DataSet.FreeBookmark(oldBmk);
end;

end.
