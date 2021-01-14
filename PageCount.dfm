object PageCountForm: TPageCountForm
  Left = 347
  Top = 184
  Width = 533
  Height = 436
  Caption = #20998#39029#28436#31034
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 36
    Height = 12
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 120
    Top = 48
    Width = 36
    Height = 12
    Caption = 'Label2'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 525
    Height = 321
    Align = alBottom
    DataSource = DataSource1
    ImeName = #32043#20809#25340#38899#36755#20837#27861
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
      '')
    Left = 120
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 88
  end
end
