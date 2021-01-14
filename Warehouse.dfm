inherited WarehouseForm: TWarehouseForm
  Left = 92
  Top = 169
  Caption = #20179#24211'--'#22522#30784#36164#26009
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
        FieldName = #20179#24211#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20179#24211#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25340#38899#32534#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31616#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20301#32622
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #35828#26126
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
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
    OnNewRecord = QBaseInfoNewRecord
    SQL.Strings = (
      'Select * From '#20179#24211#36164#26009' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #20179#24211#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #20179#24211#32534#21495
      OnValidate = QBaseInfoDSDesigner2Validate
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #25340#38899#32534#30721
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #31616#31216
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #20301#32622
      Size = 50
    end
    object QBaseInfoDSDesigner6: TWideStringField
      FieldName = #35828#26126
      Size = 50
    end
    object QBaseInfoDSDesigner7: TMemoField
      FieldName = #22791#27880
      BlobType = ftMemo
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
      'select ID from '#20179#24211#36164#26009'  where '#20179#24211#32534#21495'=:Code')
  end
end
