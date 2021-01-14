inherited ProductPriceForm: TProductPriceForm
  Left = 159
  Top = 305
  Caption = #20135#21697#21345#32423#20215#26684
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
        FieldName = #20135#21697#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21333#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25240#25187
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    BeforePost = QBaseInfoBeforePost
    Parameters = <
      item
        Name = #20135#21697#32534#21495
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From '#20135#21697#21345#32423#20215#26684' Where '#20135#21697#32534#21495'=:'#20135#21697#32534#21495' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #20135#21697#32534#21495
    end
    object QBaseInfoDSDesigner2: TStringField
      FieldName = #21345#32423#32534#21495
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #21345#32423#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner3: TFloatField
      FieldName = #21333#20215
      currency = True
    end
    object QBaseInfoDSDesigner4: TFloatField
      FieldName = #25240#25187
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
      'select ID from '#20135#21697#21345#32423#20215#26684' where ID=:Code')
  end
end
