object TestMainForm: TTestMainForm
  Left = 133
  Top = 109
  Width = 696
  Height = 480
  Caption = 'TestMainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 184
    Top = 24
    Width = 23
    Height = 22
  end
  object BitBtn1: TBitBtn
    Left = 488
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 72
    Width = 688
    Height = 381
    Align = alBottom
    DataSource = DataSource1
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object ADODataSet1: TADODataSet
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    CommandText = 'select * from '#21830#21697#22522#30784#20449#24687#34920
    Parameters = <>
    Left = 96
    Top = 16
    object ADODataSet1DSDesigner: TAutoIncField
      FieldName = #32534#21495
      ReadOnly = True
    end
    object ADODataSet1DSDesigner2: TStringField
      FieldName = #21517#31216
    end
    object ADODataSet1DSDesigner3: TStringField
      FieldName = #31616#31216
      Size = 10
    end
    object ADODataSet1DSDesigner4: TStringField
      FieldName = #21333#20301
      Size = 10
    end
    object ADODataSet1DSDesigner5: TBCDField
      FieldName = #21333#20215
      Precision = 19
    end
    object ADODataSet1DSDesigner6: TStringField
      FieldName = #21830#21697#35828#26126
      Size = 30
    end
    object ADODataSet1DSDesigner7: TStringField
      FieldName = #20379#24212#21830
    end
    object ADODataSet1DSDesigner8: TStringField
      FieldName = #32852#31995#30005#35805
      Size = 15
    end
    object ADODataSet1DSDesigner9: TStringField
      FieldName = #32852#31995#22320#22336
      Size = 30
    end
    object ADODataSet1DSDesigner10: TStringField
      FieldName = #32852#31995#20154
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 136
    Top = 16
  end
end
