inherited ProductSelectForm: TProductSelectForm
  Caption = #20135#21697#21253#36164#26009
  PixelsPerInch = 96
  TextHeight = 12
  inherited CoolBar1: TCoolBar
    inherited ToolBar1: TToolBar
      inherited tbSel: TToolButton
        OnClick = tbSelClick
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
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#32534#21495
        Footers = <>
        Width = 96
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
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#26465#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20445#36136#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25104#26412#20215
        Footers = <>
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
        FieldName = #25240#25187
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38656#29992#31215#20998
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26159#21542#25171#21253
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #29366#24577
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select * From '#20135#21697#36164#26009' where '#26159#21542#25171#21253'='#39'1'#39' and '#29366#24577'='#39#20351#29992#39' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #20135#21697#32534#21495
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #20135#21697#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner3: TIntegerField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner5: TBCDField
      FieldName = #38144#21806#20215
      Precision = 19
    end
    object QBaseInfoDSDesigner6: TWideStringField
      FieldName = #20135#21697#26465#30721
    end
    object QBaseInfoDSDesigner7: TIntegerField
      FieldName = #20445#36136#26399
    end
    object QBaseInfoDSDesigner8: TBCDField
      FieldName = #25104#26412#20215
      Precision = 19
    end
    object QBaseInfoDSDesigner9: TIntegerField
      FieldName = #36229#20648#30028#32447
    end
    object QBaseInfoDSDesigner10: TIntegerField
      FieldName = #32570#36135#30028#32447
    end
    object QBaseInfoDSDesigner11: TFloatField
      FieldName = #20135#21697#25240#25187
    end
    object QBaseInfoDSDesigner12: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object QBaseInfoDSDesigner13: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object QBaseInfoDSDesigner14: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner15: TWideStringField
      FieldName = #29366#24577
    end
  end
end
