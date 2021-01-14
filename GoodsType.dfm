inherited GoodsTypeForm: TGoodsTypeForm
  Left = 94
  Top = 179
  Caption = #21830#21697#20998#31867'--'#22522#30784#36164#26009
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
      'Select * From '#21830#21697#31867#21035' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #31867#21035#32534#21495
      OnValidate = QBaseInfoDSDesignerValidate
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
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
      'select ID from '#21830#21697#31867#21035' where '#31867#21035#32534#21495'=:Code')
  end
end
