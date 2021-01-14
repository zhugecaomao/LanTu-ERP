inherited SaveRptForm: TSaveRptForm
  Caption = #23384#27454#25253#34920
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
        FieldName = #20250#21592#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20250#21592#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26085#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #37329#39069
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25805#20316#21592#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #25805#20316#21592
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #31867#22411
        Footers = <>
        Visible = False
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select * From New'#20250#21592#37329#39069#35774#32622)
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #20250#21592#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner7: TWideStringField
      FieldName = #20250#21592#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner2: TDateTimeField
      FieldName = #26085#26399
    end
    object QBaseInfoDSDesigner3: TBCDField
      FieldName = #37329#39069
      currency = True
      Precision = 19
    end
    object QBaseInfoDSDesigner8: TWideStringField
      FieldName = #25805#20316#21592#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #25805#20316#21592
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner6: TIntegerField
      FieldName = #31867#22411
    end
  end
end
