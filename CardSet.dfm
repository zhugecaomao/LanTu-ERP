inherited CardSetForm: TCardSetForm
  Left = 194
  Top = 244
  Width = 504
  Caption = #20250#21592#21345#32423
  PixelsPerInch = 96
  TextHeight = 12
  inherited CoolBar1: TCoolBar
    Width = 496
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 37
        Width = 492
      end>
    inherited ToolBar1: TToolBar
      Width = 479
      inherited tbIns: TToolButton
        OnClick = tbInsClick
      end
      inherited tbEdi: TToolButton
        OnClick = tbEdiClick
      end
    end
  end
  inherited DBGridEh1: TDBGridEh
    Width = 496
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#25240#25187
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#25240#25187
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #19979#30028#32447
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #19978#30028#32447
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31215#20998#19979#32447
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31215#20998#19978#32447
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #29366#24577
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #25171#25240
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #39044#23384#20139#21463#25171#25240
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #31215#20998#25442#22870#21697
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #25209#36141#20248#24800
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #28040#36153#36820#28857
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #20449#29992'/'#25346#36134
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #36149#23486#24453#36935
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #20250#21592#21319#32423
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    BeforePost = QBaseInfoBeforePost
    SQL.Strings = (
      'Select * From '#20250#21592#21345#32423' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #21345#32423#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21345#32423#21517#31216
    end
    object QBaseInfoDSDesigner3: TFloatField
      FieldName = #39033#30446#25240#25187
    end
    object QBaseInfoDSDesigner4: TFloatField
      FieldName = #20135#21697#25240#25187
    end
    object QBaseInfoDSDesigner6: TBCDField
      FieldName = #19979#30028#32447
      currency = True
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner7: TBCDField
      FieldName = #19978#30028#32447
      currency = True
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner8: TIntegerField
      FieldName = #31215#20998#19979#32447
    end
    object QBaseInfoDSDesigner9: TIntegerField
      FieldName = #31215#20998#19978#32447
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #29366#24577
    end
    object QBaseInfoDSDesigner10: TBooleanField
      FieldName = #25171#25240
      OnGetText = QBaseInfoDSDesigner10GetText
    end
    object QBaseInfoDSDesigner11: TBooleanField
      FieldName = #39044#23384#20139#21463#25171#25240
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
    object QBaseInfoDSDesigner12: TBooleanField
      FieldName = #31215#20998#25442#22870#21697
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
    object QBaseInfoDSDesigner13: TBooleanField
      FieldName = #25209#36141#20248#24800
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
    object QBaseInfoDSDesigner14: TBooleanField
      FieldName = #28040#36153#36820#28857
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
    object QBaseInfoDSDesigner15: TBooleanField
      FieldName = #20449#29992'/'#25346#36134
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
    object QBaseInfoDSDesigner16: TBooleanField
      FieldName = #36149#23486#24453#36935
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
    object QBaseInfoDSDesigner17: TBooleanField
      FieldName = #20250#21592#21319#32423
      OnGetText = QBaseInfoDSDesigner10GetText
      OnSetText = QBaseInfoDSDesigner11SetText
    end
  end
  inherited QIsUnique: TADOQuery
    Parameters = <
      item
        Name = 'Code'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#20250#21592#21345#32423' where '#21345#32423#32534#21495'=:Code')
  end
end
