inherited CashbankForm: TCashbankForm
  Left = 122
  Top = 176
  Caption = #29616#37329#38134#34892'--'#22522#30784#36164#26009
  PixelsPerInch = 96
  TextHeight = 12
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
        FieldName = #24080#25143#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38134#34892#20840#21517
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38134#34892#24080#21495
        Footers = <>
      end>
  end
  inherited ControlBar1: TControlBar
    inherited ToolBar2: TToolBar
      inherited tbSel: TToolButton
        OnClick = tbSelClick
      end
      inherited tbIns: TToolButton
        OnClick = tbInsClick
      end
      inherited tbEdi: TToolButton
        OnClick = tbEdiClick
      end
    end
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select * From '#29616#37329#38134#34892' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      OnValidate = QBaseInfoIDValidate
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #24080#25143#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #38134#34892#20840#21517
      Size = 50
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #38134#34892#24080#21495
      Size = 50
    end
  end
  inherited QIsUnique: TADOQuery
    Parameters = <
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#29616#37329#38134#34892'  where ID=:Code')
  end
end
