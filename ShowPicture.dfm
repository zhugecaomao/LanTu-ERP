object ShowPictureForm: TShowPictureForm
  Left = 307
  Top = 195
  Width = 677
  Height = 378
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #22270#29255#35835#21462
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Image1: TImage
    Left = 336
    Top = 8
    Width = 321
    Height = 329
    Proportional = True
    Stretch = True
    OnDblClick = Image1DblClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 321
    Height = 305
    DataSource = DataSource1
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#22270#20687#34920)
    Left = 96
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 40
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 352
    Top = 184
  end
end
