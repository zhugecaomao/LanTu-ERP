inherited ProjectBillForm: TProjectBillForm
  Left = 175
  Top = 187
  Caption = #39033#30446#21333
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
    LockType = ltBatchOptimistic
    SQL.Strings = (
      'Select * From New'#39033#30446#21333#20027#34920' Order by ID')
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
    Active = True
    Parameters = <
      item
        Name = #21333#25454#32534#21495
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select * From New'#39033#30446#21333#20174#34920' where '#21333#25454#32534#21495'=:'#21333#25454#32534#21495' Order by ID')
  end
end
