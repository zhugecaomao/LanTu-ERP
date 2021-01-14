inherited ProductPackageForm: TProductPackageForm
  Left = 280
  Top = 187
  Caption = #20135#21697#25171#21253
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
        FieldName = #32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20135#21697#32534#21495
        Footers = <>
        Visible = False
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
        FieldName = #20135#21697#26465#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38144#21806#20215
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
      end
      item
        EditButtons = <>
        FieldName = #25968#37327
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    DataSource = ProductForm.dsBaseInfo
    Parameters = <
      item
        Name = #20135#21697#32534#21495
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From '#20135#21697#36164#26009#21253' where '#20135#21697#32534#21495'=:'#20135#21697#32534#21495' Order by ID')
    object QBaseInfoID2: TAutoIncField
      FieldName = 'ID'
    end
    object QBaseInfoDSDesigner16: TWideStringField
      FieldName = #20135#21697#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner15: TWideStringField
      FieldName = #32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #20135#21697#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner14: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #20135#21697#26465#30721
    end
    object QBaseInfoDSDesigner4: TBCDField
      FieldName = #38144#21806#20215
      currency = True
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner6: TBCDField
      FieldName = #25104#26412#20215
      currency = True
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner5: TBCDField
      FieldName = #20445#36136#26399
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner7: TBCDField
      FieldName = #36229#20648#30028#32447
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner8: TBCDField
      FieldName = #32570#36135#30028#32447
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner9: TBCDField
      FieldName = #20135#21697#25240#25187
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner10: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object QBaseInfoDSDesigner11: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object QBaseInfoDSDesigner12: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner13: TWideStringField
      FieldName = #29366#24577
    end
    object QBaseInfoDSDesigner17: TIntegerField
      FieldName = #25968#37327
    end
  end
  inherited QIsUnique: TADOQuery
    Parameters = <
      item
        Name = 'Code'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#20135#21697#36164#26009#21253' where ID=:Code')
  end
end
