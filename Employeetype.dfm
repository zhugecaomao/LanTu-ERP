inherited EmployeetypeForm: TEmployeetypeForm
  Left = 212
  Top = 165
  Caption = #21592#24037#31867#21035'--'#22522#30784#36164#26009
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
        FieldName = #31867#21035#21517#31216
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
    Active = True
    CursorType = ctStatic
    SQL.Strings = (
      'Select * From '#21592#24037#31867#21035' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      OnValidate = QBaseInfoIDValidate
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner2: TMemoField
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
      'select ID from '#21592#24037#31867#21035'  where ID=:Code')
  end
end
