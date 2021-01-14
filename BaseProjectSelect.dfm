inherited BaseProjectSelectForm: TBaseProjectSelectForm
  Left = 389
  Top = 298
  Caption = #39033#30446#36873#25321
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
        FieldName = #39033#30446#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#26465#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21333#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#25240#25187
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26448#26009#36153#29992
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26448#26009#21333#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26631#20934#24037#26102
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
      'Select * From '#26381#21153#39033#30446' where '#26159#21542#25171#21253'='#39'0'#39' and '#29366#24577'='#39#20351#29992#39' Order by ID'
      '')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #39033#30446#32534#21495
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #39033#30446#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner3: TIntegerField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #39033#30446#26465#30721
    end
    object QBaseInfoDSDesigner6: TBCDField
      FieldName = #21333#20215
      Precision = 19
    end
    object QBaseInfoDSDesigner7: TFloatField
      FieldName = #39033#30446#25240#25187
    end
    object QBaseInfoDSDesigner8: TBCDField
      FieldName = #26448#26009#36153#29992
      Precision = 19
    end
    object QBaseInfoDSDesigner9: TFloatField
      FieldName = #26448#26009#21333#20215
    end
    object QBaseInfoDSDesigner10: TFloatField
      FieldName = #26631#20934#24037#26102
    end
    object QBaseInfoDSDesigner11: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object QBaseInfoDSDesigner12: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object QBaseInfoDSDesigner13: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner14: TWideStringField
      FieldName = #29366#24577
    end
  end
end
