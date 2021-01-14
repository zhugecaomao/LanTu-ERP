object TestForm: TTestForm
  Left = 192
  Top = 107
  Width = 677
  Height = 378
  Caption = 'TestForm'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DsFancyButton1: TDsFancyButton
    Left = 56
    Top = 200
    Width = 97
    Height = 25
    ButtonColor = clBtnFace
    Caption = #23384#20648
    FrameColor = clGray
    FrameWidth = 6
    CornerRadius = 10
    TextStyle = txRaised
    OnClick = DsFancyButton1Click
  end
  object DsFancyButton2: TDsFancyButton
    Left = 232
    Top = 200
    Width = 97
    Height = 25
    ButtonColor = clBtnFace
    Caption = #35835#21462
    FrameColor = clGray
    FrameWidth = 6
    CornerRadius = 10
    TextStyle = txRaised
    OnClick = DsFancyButton2Click
  end
  object Image1: TImage
    Left = 336
    Top = 8
    Width = 321
    Height = 329
    Stretch = True
    OnDblClick = Image1DblClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 201
    Height = 153
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=True;User ID=sa;Initia' +
      'l Catalog=TLCYGLXT;Data Source=WANGCW'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 120
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
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
  object SavePictureDialog1: TSavePictureDialog
    Left = 176
    Top = 184
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 352
    Top = 184
  end
end
