inherited SupplierForm: TSupplierForm
  Left = 131
  Top = 153
  Caption = #20379#24212#21830'--'#22522#30784#36164#26009
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
        FieldName = #20379#24212#21830#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20379#24212#21830#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31616#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22320#21306#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25340#38899#32534#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22320#21306#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #30005#35805
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #32852#31995#20154
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25163#26426
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20256#30495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22320#22336
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26399#21021#24212#20184
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24320#25143#38134#34892
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38134#34892#24080#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20449#35465#31243#24230
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #30005#23376#37038#20214
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #37038#32534
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20256#21628
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #32593#22336
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
      'Select * From '#20379#24212#21830#36164#26009' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #20379#24212#21830#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #20379#24212#21830#32534#21495
      OnValidate = QBaseInfoDSDesigner2Validate
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #31616#31216
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #22320#21306#32534#21495
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #25340#38899#32534#30721
    end
    object QBaseInfoField: TStringField
      FieldKind = fkLookup
      FieldName = #22320#21306#21517#31216
      LookupDataSet = QAreaInfo
      LookupKeyFields = #22320#21306#32534#21495
      LookupResultField = #22320#21306#21517#31216
      KeyFields = #22320#21306#32534#21495
      Lookup = True
    end
    object QBaseInfoDSDesigner6: TWideStringField
      FieldName = #30005#35805
      Size = 30
    end
    object QBaseInfoDSDesigner7: TWideStringField
      FieldName = #32852#31995#20154
      Size = 30
    end
    object QBaseInfoDSDesigner8: TWideStringField
      FieldName = #25163#26426
      Size = 30
    end
    object QBaseInfoDSDesigner9: TWideStringField
      FieldName = #20256#30495
      Size = 30
    end
    object QBaseInfoDSDesigner10: TWideStringField
      FieldName = #22320#22336
      Size = 50
    end
    object QBaseInfoDSDesigner11: TBCDField
      FieldName = #26399#21021#24212#20184
      currency = True
      Precision = 19
    end
    object QBaseInfoDSDesigner12: TMemoField
      FieldName = #22791#27880
      BlobType = ftMemo
    end
    object QBaseInfoDSDesigner13: TWideStringField
      FieldName = #24320#25143#38134#34892
      Size = 30
    end
    object QBaseInfoDSDesigner14: TWideStringField
      FieldName = #38134#34892#24080#21495
      Size = 30
    end
    object QBaseInfoDSDesigner15: TWideStringField
      FieldName = #20449#35465#31243#24230
    end
    object QBaseInfoDSDesigner16: TWideStringField
      FieldName = #30005#23376#37038#20214
      Size = 30
    end
    object QBaseInfoDSDesigner17: TWideStringField
      FieldName = #37038#32534
      Size = 6
    end
    object QBaseInfoDSDesigner18: TWideStringField
      FieldName = #20256#21628
      Size = 30
    end
    object QBaseInfoDSDesigner19: TWideStringField
      FieldName = #32593#22336
      Size = 30
    end
  end
  inherited QIsUnique: TADOQuery
    Parameters = <
      item
        Name = 'Code'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#20379#24212#21830#36164#26009'  where '#20379#24212#21830#32534#21495'=:Code')
  end
  object QAreaInfo: TADOQuery
    Active = True
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#22320#21306#32534#21495','#22320#21306#21517#31216' From '#22320#21306#36164#26009' Order by ID')
    Left = 288
    Top = 224
  end
  object dsAreaInfo: TDataSource
    AutoEdit = False
    DataSet = QAreaInfo
    Left = 328
    Top = 224
  end
end
