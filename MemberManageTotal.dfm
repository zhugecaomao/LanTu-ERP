inherited MemberManageTotalForm: TMemberManageTotalForm
  Caption = #20250#21592#27719#24635
  PixelsPerInch = 96
  TextHeight = 12
  inherited DBGridEh1: TDBGridEh
    Columns = <
      item
        EditButtons = <>
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
        FieldName = #21345#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20250#21592#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24320#25143#26085#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21345#32423#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #35777#20214#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #32852#31995#20154
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #32852#31995#30005#35805
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24635#23384#27454#37329#39069
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20313#39069
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      
        'Select ID,'#20250#21592#32534#21495','#21345#21495','#20250#21592#21517#31216','#24320#25143#26085#26399','#21345#32423#21517#31216','#35777#20214#21495','#32852#31995#20154','#32852#31995#30005#35805','#24635#23384#27454#37329#39069','#20313#39069' From '#20250#21592#36164#26009 +
        ' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #20250#21592#32534#21495
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21345#21495
    end
    object QBaseInfoDSDesigner3: TStringField
      FieldName = #20250#21592#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner4: TDateTimeField
      FieldName = #24320#25143#26085#26399
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #21345#32423#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner6: TStringField
      FieldName = #35777#20214#21495
      Size = 50
    end
    object QBaseInfoDSDesigner7: TStringField
      FieldName = #32852#31995#20154
    end
    object QBaseInfoDSDesigner8: TStringField
      FieldName = #32852#31995#30005#35805
    end
    object QBaseInfoDSDesigner9: TBCDField
      FieldName = #24635#23384#27454#37329#39069
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner10: TBCDField
      FieldName = #20313#39069
      currency = True
      Precision = 18
      Size = 0
    end
  end
end
