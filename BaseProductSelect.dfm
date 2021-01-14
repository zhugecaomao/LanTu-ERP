inherited BaseProductSelectForm: TBaseProductSelectForm
  Left = 309
  Top = 251
  Caption = #20135#21697#36873#25321
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
        FieldName = #20135#21697#31867#21035
        Footers = <>
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
        FieldName = #20135#21697#25240#25187
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
      'Select * From '#20135#21697#36164#26009' where '#26159#21542#25171#21253'='#39'0'#39' and '#29366#24577'='#39#20351#29992#39' Order by ID'
      '')
  end
end
