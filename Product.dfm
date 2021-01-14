inherited ProductForm: TProductForm
  Left = 237
  Top = 221
  Caption = #20135#21697#36164#26009
  PixelsPerInch = 96
  TextHeight = 12
  inherited CoolBar1: TCoolBar
    inherited ToolBar1: TToolBar
      inherited tbIns: TToolButton
        OnClick = tbInsClick
      end
      inherited tbEdi: TToolButton
        OnClick = tbEdiClick
      end
    end
  end
  inherited DBGridEh1: TDBGridEh
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#32534#21495
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#21517#31216
        Footers = <>
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#21517#31216
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #38144#21806#20215
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#26465#30721
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #20445#36136#26399
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #25104#26412#20215
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #36229#20648#30028#32447
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #32570#36135#30028#32447
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#25240#25187
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #26159#21542#25171#21253
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Visible = False
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = #29366#24577
        Footers = <>
        Width = 32
      end>
  end
  inherited Panel1: TPanel
    object btnPrice: TBitBtn
      Left = 0
      Top = 1
      Width = 75
      Height = 25
      Caption = #21345#32423#20215#26684
      TabOrder = 0
      OnClick = btnPriceClick
    end
    object btnpackage: TBitBtn
      Left = 74
      Top = 1
      Width = 75
      Height = 25
      Caption = #25171#21253#35774#32622
      TabOrder = 1
      OnClick = btnpackageClick
    end
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    BeforePost = QBaseInfoBeforePost
    SQL.Strings = (
      'Select * From '#20135#21697#36164#26009' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #20135#21697#32534#21495
      OnValidate = QBaseInfoDSDesignerValidate
      Size = 50
    end
    object QBaseInfoDSDesigner2: TStringField
      FieldName = #20135#21697#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner3: TIntegerField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoDSDesigner15: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner4: TBCDField
      FieldName = #38144#21806#20215
      currency = True
      Precision = 19
    end
    object QBaseInfoDSDesigner5: TStringField
      FieldName = #20135#21697#26465#30721
      Size = 50
    end
    object QBaseInfoDSDesigner6: TIntegerField
      FieldName = #20445#36136#26399
    end
    object QBaseInfoDSDesigner7: TBCDField
      FieldName = #25104#26412#20215
      currency = True
      Precision = 19
    end
    object QBaseInfoDSDesigner8: TIntegerField
      FieldName = #36229#20648#30028#32447
    end
    object QBaseInfoDSDesigner9: TIntegerField
      FieldName = #32570#36135#30028#32447
    end
    object QBaseInfoDSDesigner10: TFloatField
      FieldName = #20135#21697#25240#25187
    end
    object QBaseInfoDSDesigner12: TStringField
      FieldName = #22791#27880
      Size = 500
    end
    object QBaseInfoDSDesigner11: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object QBaseInfoDSDesigner14: TBooleanField
      FieldName = #26159#21542#25171#21253
      OnGetText = QBaseInfoDSDesigner14GetText
      OnSetText = QBaseInfoDSDesigner14SetText
    end
    object QBaseInfoDSDesigner13: TStringField
      FieldName = #29366#24577
      Size = 50
    end
  end
  inherited dsBaseInfo: TDataSource
    OnDataChange = dsBaseInfoDataChange
  end
  inherited QIsUnique: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#20135#21697#36164#26009' where '#20135#21697#32534#21495'=:Code')
  end
end
