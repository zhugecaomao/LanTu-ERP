inherited EmployeeForm: TEmployeeForm
  Left = 127
  Top = 255
  Caption = #21592#24037'--'#22522#30784#36164#26009
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
        FieldName = #21592#24037#22995#21517
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21592#24037#32534#21495
        Footers = <>
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
        FieldName = #25340#38899#32534#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20986#29983#26085#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24615#21035
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #37096#38376#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #37096#38376#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #23398#21382#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #23398#21382#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #36523#20221#35777#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31821#36143
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22522#26412#24037#36164
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #32844#21153
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20837#32844#26085#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #30005#35805
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20256#21628
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
        FieldName = #37038#32534
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #30005#23376#37038#20214
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22320#22336
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26159#21542#31163#32844
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
      'Select * From '#21592#24037#36164#26009' Order by ID')
    object QBaseInfoID: TIntegerField
      FieldName = 'ID'
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #21592#24037#22995#21517
      Size = 30
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21592#24037#32534#21495
      OnValidate = QBaseInfoDSDesigner2Validate
    end
    object QBaseInfoDSDesigner3: TIntegerField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoField: TStringField
      FieldKind = fkLookup
      FieldName = #31867#21035#21517#31216
      LookupDataSet = ADOQryEmployeetype
      LookupKeyFields = 'ID'
      LookupResultField = #31867#21035#21517#31216
      KeyFields = #31867#21035#32534#21495
      Lookup = True
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #25340#38899#32534#30721
    end
    object QBaseInfoDSDesigner5: TDateTimeField
      FieldName = #20986#29983#26085#26399
    end
    object QBaseInfoDSDesigner6: TWideStringField
      FieldName = #24615#21035
    end
    object QBaseInfoDSDesigner7: TIntegerField
      FieldName = #37096#38376#32534#21495
    end
    object QBaseInfoField2: TStringField
      FieldKind = fkLookup
      FieldName = #37096#38376#21517#31216
      LookupDataSet = ADOQryDepart
      LookupKeyFields = 'ID'
      LookupResultField = #37096#38376#21517#31216
      KeyFields = #37096#38376#32534#21495
      Lookup = True
    end
    object QBaseInfoDSDesigner8: TIntegerField
      FieldName = #23398#21382#32534#21495
    end
    object QBaseInfoField3: TStringField
      FieldKind = fkLookup
      FieldName = #23398#21382#21517#31216
      LookupDataSet = ADOQryDegree
      LookupKeyFields = 'ID'
      LookupResultField = #23398#21382#21517#31216
      KeyFields = #23398#21382#32534#21495
      Lookup = True
    end
    object QBaseInfoDSDesigner9: TWideStringField
      FieldName = #36523#20221#35777#21495
      Size = 18
    end
    object QBaseInfoDSDesigner10: TWideStringField
      FieldName = #31821#36143
      Size = 30
    end
    object QBaseInfoDSDesigner11: TMemoField
      FieldName = #22791#27880
      BlobType = ftMemo
    end
    object QBaseInfoDSDesigner12: TBCDField
      FieldName = #22522#26412#24037#36164
      Precision = 19
    end
    object QBaseInfoDSDesigner13: TWideStringField
      FieldName = #32844#21153
      Size = 30
    end
    object QBaseInfoDSDesigner14: TDateTimeField
      FieldName = #20837#32844#26085#26399
    end
    object QBaseInfoDSDesigner15: TWideStringField
      FieldName = #30005#35805
      Size = 30
    end
    object QBaseInfoDSDesigner16: TWideStringField
      FieldName = #20256#21628
      Size = 30
    end
    object QBaseInfoDSDesigner17: TWideStringField
      FieldName = #25163#26426
      Size = 30
    end
    object QBaseInfoDSDesigner18: TWideStringField
      FieldName = #20256#30495
      Size = 30
    end
    object QBaseInfoDSDesigner19: TWideStringField
      FieldName = #37038#32534
      Size = 6
    end
    object QBaseInfoDSDesigner20: TWideStringField
      FieldName = #30005#23376#37038#20214
      Size = 30
    end
    object QBaseInfoDSDesigner21: TWideStringField
      FieldName = #22320#22336
      Size = 50
    end
    object QBaseInfoDSDesigner22: TBooleanField
      FieldName = #26159#21542#31163#32844
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
      'select ID from '#21592#24037#36164#26009'  where '#21592#24037#32534#21495'=:Code')
  end
  object ADOQryEmployeetype: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#31867#21035#21517#31216' From '#21592#24037#31867#21035' Order by ID')
    Left = 256
    Top = 232
  end
  object dsEmployeetype: TDataSource
    AutoEdit = False
    DataSet = ADOQryEmployeetype
    Left = 296
    Top = 232
  end
  object ADOQryDepart: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#37096#38376#21517#31216' From '#37096#38376#36164#26009' Order by ID')
    Left = 72
    Top = 208
  end
  object dsDepart: TDataSource
    AutoEdit = False
    DataSet = ADOQryDepart
    Left = 112
    Top = 208
  end
  object ADOQryDegree: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#23398#21382#21517#31216' From '#23398#21382#36164#26009' Order by ID')
    Left = 56
    Top = 88
  end
  object dsDegree: TDataSource
    AutoEdit = False
    DataSet = ADOQryDegree
    Left = 96
    Top = 88
  end
end
