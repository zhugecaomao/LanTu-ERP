inherited ProductBillForm: TProductBillForm
  Left = 283
  Top = 204
  Caption = #20135#21697#21333
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
  inherited ADOQMaster: TADOQuery
    SQL.Strings = (
      'Select * From New'#20135#21697#21333#20027#34920' Order by ID')
    object ADOQMasterID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQMasterDSDesigner: TWideStringField
      FieldName = #21333#25454#32534#21495
    end
    object ADOQMasterDSDesigner2: TDateTimeField
      FieldName = #24405#21333#26085#26399
    end
    object ADOQMasterDSDesigner3: TWideStringField
      FieldName = #21345#21495
    end
    object ADOQMasterDSDesigner4: TWideStringField
      FieldName = #20250#21592#32534#21495
    end
    object ADOQMasterDSDesigner5: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
  end
  inherited ADOQList: TADOQuery
    Parameters = <
      item
        Name = #21333#25454#32534#21495
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From New'#20135#21697#21333#20174#34920' Where '#21333#25454#32534#21495'=:'#21333#25454#32534#21495' Order by ID')
    object ADOQListID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQListDSDesigner: TWideStringField
      FieldName = #21333#25454#32534#21495
    end
    object ADOQListDSDesigner2: TWideStringField
      FieldName = #20135#21697#32534#21495
    end
    object ADOQListDSDesigner3: TWideStringField
      FieldName = #20135#21697#21517#31216
      Size = 30
    end
    object ADOQListDSDesigner4: TWideStringField
      FieldName = #20135#21697#31867#21035
    end
    object ADOQListDSDesigner5: TBCDField
      FieldName = #38144#21806#20215
      Precision = 18
      Size = 0
    end
    object ADOQListDSDesigner6: TWideStringField
      FieldName = #20135#21697#26465#30721
    end
    object ADOQListDSDesigner7: TDateTimeField
      FieldName = #20445#36136#26399
    end
    object ADOQListDSDesigner8: TBCDField
      FieldName = #25104#26412#20215
      Precision = 18
      Size = 0
    end
    object ADOQListDSDesigner9: TFloatField
      FieldName = #36229#20648#30028#32447
    end
    object ADOQListDSDesigner10: TFloatField
      FieldName = #32570#36135#30028#32447
    end
    object ADOQListDSDesigner11: TBCDField
      FieldName = #25240#25187
      Precision = 18
      Size = 0
    end
    object ADOQListDSDesigner12: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object ADOQListDSDesigner13: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object ADOQListDSDesigner14: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object ADOQListDSDesigner15: TWideStringField
      FieldName = #29366#24577
    end
  end
end
