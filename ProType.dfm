inherited ProTypeForm: TProTypeForm
  Left = 44
  Top = 194
  Caption = #39033#30446#31867#21035
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
        Visible = False
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select * From '#39033#30446#31867#21035' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #31867#21035#32534#21495
      OnValidate = QBaseInfoDSDesignerValidate
      Size = 10
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #31867#21035#21517#31216
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
  end
  inherited QIsUnique: TADOQuery
    CursorType = ctStatic
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
      'select ID from '#39033#30446#31867#21035' where '#31867#21035#32534#21495'=:Code')
  end
end
