inherited ShopInfoForm: TShopInfoForm
  Left = 13
  Top = 301
  Caption = #22522#30784#36164#26009'-'#24215#38754
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
        FieldName = #24215#38754#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24215#38754#21517#31216
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select * From '#24215#38754#36164#26009' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #24215#38754#32534#21495
      OnValidate = QBaseInfoDSDesignerValidate
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #24215#38754#21517#31216
      Size = 30
    end
  end
  inherited QIsUnique: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#24215#38754#36164#26009'  where '#24215#38754#32534#21495'=:Code')
  end
end
