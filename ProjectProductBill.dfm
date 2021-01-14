inherited ProjectProductBillForm: TProjectProductBillForm
  Left = 210
  Top = 229
  Width = 599
  Height = 436
  Caption = #39033#30446#20135#21697#21333
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 591
    Height = 43
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 587
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 574
      Height = 37
      ButtonHeight = 35
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Flat = True
      Images = DataMForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      object tbIns: TToolButton
        Left = 0
        Top = 0
        Caption = #26032#22686
        ImageIndex = 18
        OnClick = tbInsClick
      end
      object tbEdi: TToolButton
        Left = 31
        Top = 0
        Caption = #20462#25913
        ImageIndex = 11
        OnClick = tbEdiClick
      end
      object tbDel: TToolButton
        Left = 62
        Top = 0
        Caption = #21024#38500
        ImageIndex = 1
        OnClick = tbDelClick
      end
      object tbRef: TToolButton
        Left = 93
        Top = 0
        Caption = #21047#26032
        ImageIndex = 42
        OnClick = tbRefClick
      end
      object tbSep1: TToolButton
        Left = 124
        Top = 0
        Width = 8
        Caption = 'tbSep1'
        ImageIndex = 43
        Style = tbsSeparator
      end
      object tbFin: TToolButton
        Left = 132
        Top = 0
        Caption = #26597#25214
        ImageIndex = 6
        OnClick = tbFinClick
      end
      object tbsFit: TToolButton
        Left = 163
        Top = 0
        Caption = #36807#28388
        ImageIndex = 3
        OnClick = tbsFitClick
      end
      object tbsSep2: TToolButton
        Left = 194
        Top = 0
        Width = 8
        Caption = 'tbsSep2'
        ImageIndex = 45
        Style = tbsSeparator
      end
      object tbsPri: TToolButton
        Left = 202
        Top = 0
        Caption = #25171#21360
        ImageIndex = 7
        OnClick = tbsPriClick
      end
      object tbsSav: TToolButton
        Left = 233
        Top = 0
        Caption = #23548#20986
        ImageIndex = 54
        OnClick = tbsSavClick
      end
      object tbsSep3: TToolButton
        Left = 264
        Top = 0
        Width = 8
        Caption = 'tbsSep3'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbsExi: TToolButton
        Left = 272
        Top = 0
        Caption = #36864#20986
        ImageIndex = 4
        OnClick = tbsExiClick
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 43
    Width = 591
    Height = 366
    Align = alClient
    DataSource = DataSource1
    DrawMemoText = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #21333#25454#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24405#21333#26085#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21345#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #20250#21592#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #20250#21592#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Visible = False
      end>
  end
  object ADOQuery1: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#39033#30446#20135#21697#21333#20027#34920' Order by ID')
    Left = 208
    Top = 64
    object ADOQuery1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery1DSDesigner: TWideStringField
      FieldName = #21333#25454#32534#21495
    end
    object ADOQuery1DSDesigner2: TDateTimeField
      FieldName = #24405#21333#26085#26399
    end
    object ADOQuery1DSDesigner3: TWideStringField
      FieldName = #21345#21495
    end
    object ADOQuery1DSDesigner4: TWideStringField
      FieldName = #20250#21592#32534#21495
    end
    object ADOQuery1DSDesigner6: TWideStringField
      FieldName = #20250#21592#21517#31216
      Size = 30
    end
    object ADOQuery1DSDesigner5: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
  end
  object ADOQuery2: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <
      item
        Name = #21333#25454#32534#21495
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From '#39033#30446#21333#20174#34920' Where '#21333#25454#32534#21495'=:'#21333#25454#32534#21495' Order by ID')
    Left = 160
    Top = 184
    object ADOQuery2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery2DSDesigner: TWideStringField
      FieldName = #21333#25454#32534#21495
    end
    object ADOQuery2DSDesigner2: TWideStringField
      FieldName = #39033#30446#32534#21495
    end
    object ADOQuery2DSDesigner3: TWideStringField
      FieldName = #39033#30446#21517#31216
      Size = 30
    end
    object ADOQuery2DSDesigner4: TWideStringField
      FieldName = #31867#21035#32534#21495
    end
    object ADOQuery2DSDesigner16: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object ADOQuery2DSDesigner5: TWideStringField
      FieldName = #39033#30446#26465#30721
    end
    object ADOQuery2DSDesigner6: TBCDField
      FieldName = #21333#20215
      Precision = 18
      Size = 0
    end
    object ADOQuery2DSDesigner7: TBCDField
      FieldName = #39033#30446#25240#25187
      Precision = 18
      Size = 0
    end
    object ADOQuery2DSDesigner8: TBCDField
      FieldName = #26448#26009#36153#29992
      Precision = 18
      Size = 0
    end
    object ADOQuery2DSDesigner9: TBCDField
      FieldName = #26448#26009#21333#20215
      Precision = 18
      Size = 0
    end
    object ADOQuery2DSDesigner10: TFloatField
      FieldName = #26631#20934#24037#26102
    end
    object ADOQuery2DSDesigner11: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object ADOQuery2DSDesigner12: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object ADOQuery2DSDesigner13: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object ADOQuery2DSDesigner14: TWideStringField
      FieldName = #29366#24577
    end
    object ADOQuery2DSDesigner15: TBCDField
      FieldName = #25968#37327
      Precision = 18
      Size = 0
    end
  end
  object ADOQuery3: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <
      item
        Name = #21333#25454#32534#21495
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From '#20135#21697#21333#20174#34920' Where '#21333#25454#32534#21495'=:'#21333#25454#32534#21495' Order by ID'
      '')
    Left = 320
    Top = 176
    object ADOQuery3ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery3DSDesigner: TWideStringField
      FieldName = #21333#25454#32534#21495
    end
    object ADOQuery3DSDesigner2: TWideStringField
      FieldName = #20135#21697#32534#21495
    end
    object ADOQuery3DSDesigner3: TWideStringField
      FieldName = #20135#21697#21517#31216
      Size = 30
    end
    object ADOQuery3DSDesigner4: TWideStringField
      FieldName = #31867#21035#32534#21495
    end
    object ADOQuery3DSDesigner5: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object ADOQuery3DSDesigner6: TBCDField
      FieldName = #38144#21806#20215
      Precision = 18
      Size = 0
    end
    object ADOQuery3DSDesigner7: TWideStringField
      FieldName = #20135#21697#26465#30721
    end
    object ADOQuery3DSDesigner8: TIntegerField
      FieldName = #20445#36136#26399
    end
    object ADOQuery3DSDesigner9: TBCDField
      FieldName = #25104#26412#20215
      Precision = 18
      Size = 0
    end
    object ADOQuery3DSDesigner10: TFloatField
      FieldName = #36229#20648#30028#32447
    end
    object ADOQuery3DSDesigner11: TFloatField
      FieldName = #32570#36135#30028#32447
    end
    object ADOQuery3DSDesigner12: TBCDField
      FieldName = #20135#21697#25240#25187
      Precision = 18
      Size = 0
    end
    object ADOQuery3DSDesigner13: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object ADOQuery3DSDesigner14: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object ADOQuery3DSDesigner15: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object ADOQuery3DSDesigner16: TWideStringField
      FieldName = #29366#24577
    end
    object ADOQuery3DSDesigner17: TBCDField
      FieldName = #25968#37327
      Precision = 18
      Size = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 248
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 200
    Top = 184
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 360
    Top = 176
  end
  object PrintForm1: TPrintForm
    DBGridEh = DBGridEh1
    Title = #19975#21830#20250#21592#28040#36153#31649#29702#31995#32479
    Alignment = TitleRight
    Left = 144
    Top = 144
  end
end
