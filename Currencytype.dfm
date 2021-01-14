inherited CurrencytypeForm: TCurrencytypeForm
  Left = 146
  Top = 177
  Caption = #22806#24065#31181#31867'--'#22522#30784#36164#26009
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
        FieldName = #24065#31181#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #23545#20154#27665#24065#27719#29575
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
    SQL.Strings = (
      'Select * From '#22806#24065#31181#31867' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      OnValidate = QBaseInfoIDValidate
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #24065#31181#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner2: TFloatField
      FieldName = #23545#20154#27665#24065#27719#29575
    end
    object QBaseInfoDSDesigner3: TMemoField
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
      'select ID from '#22806#24065#31181#31867'  where ID=:Code')
  end
end
