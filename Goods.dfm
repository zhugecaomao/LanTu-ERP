inherited GoodsForm: TGoodsForm
  Left = 2
  Top = 219
  Caption = #21830#21697'--'#22522#30784#36164#26009
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
        FieldName = #21830#21697#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21830#21697#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31616#31216
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
        FieldName = #21830#21697#35268#26684
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21830#21697#22411#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21333#20301#32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21333#20301#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #25340#38899#32534#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26465#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21333#20301#27604#20363
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #20135#22320
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26159#21542#21487#20351#29992
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21442#32771#36827#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21442#32771#21806#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39044#35774#21806#20215'1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39044#35774#21806#20215'2'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39044#35774#21806#20215'3'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39044#35774#21806#20215'4'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24211#23384#19978#38480
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #24211#23384#19979#38480
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
      'Select * From '#21830#21697#36164#26009' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #21830#21697#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21830#21697#32534#21495
      OnValidate = QBaseInfoDSDesigner2Validate
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #31616#31216
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoField: TStringField
      FieldKind = fkLookup
      FieldName = #31867#21035#21517#31216
      LookupDataSet = ADOQryGoodsType
      LookupKeyFields = #31867#21035#32534#21495
      LookupResultField = #31867#21035#21517#31216
      KeyFields = #31867#21035#32534#21495
      Lookup = True
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #21830#21697#35268#26684
      Size = 30
    end
    object QBaseInfoDSDesigner6: TWideStringField
      FieldName = #21830#21697#22411#21495
    end
    object QBaseInfoDSDesigner7: TWideStringField
      FieldName = #21333#20301#32534#21495
    end
    object QBaseInfoField2: TStringField
      FieldKind = fkLookup
      FieldName = #21333#20301#21517#31216
      LookupDataSet = ADOQryCalculateUnit
      LookupKeyFields = #21333#20301#32534#21495
      LookupResultField = #21333#20301#21517#31216
      KeyFields = #21333#20301#32534#21495
      Lookup = True
    end
    object QBaseInfoDSDesigner8: TWideStringField
      FieldName = #25340#38899#32534#30721
    end
    object QBaseInfoDSDesigner10: TWideStringField
      FieldName = #26465#30721
    end
    object QBaseInfoDSDesigner11: TWideStringField
      FieldName = #21333#20301#27604#20363
    end
    object QBaseInfoDSDesigner12: TWideStringField
      FieldName = #20135#22320
      Size = 50
    end
    object QBaseInfoDSDesigner13: TBooleanField
      FieldName = #26159#21542#21487#20351#29992
    end
    object QBaseInfoDSDesigner14: TMemoField
      FieldName = #22791#27880
      BlobType = ftMemo
    end
    object QBaseInfoDSDesigner15: TBCDField
      FieldName = #21442#32771#36827#20215
      Precision = 19
    end
    object QBaseInfoDSDesigner16: TBCDField
      FieldName = #21442#32771#21806#20215
      Precision = 19
    end
    object QBaseInfoDSDesigner1: TBCDField
      FieldName = #39044#35774#21806#20215'1'
      Precision = 19
    end
    object QBaseInfoDSDesigner22: TBCDField
      FieldName = #39044#35774#21806#20215'2'
      Precision = 19
    end
    object QBaseInfoDSDesigner32: TBCDField
      FieldName = #39044#35774#21806#20215'3'
      Precision = 19
    end
    object QBaseInfoDSDesigner42: TBCDField
      FieldName = #39044#35774#21806#20215'4'
      Precision = 19
    end
    object QBaseInfoDSDesigner17: TIntegerField
      FieldName = #24211#23384#19978#38480
    end
    object QBaseInfoDSDesigner18: TIntegerField
      FieldName = #24211#23384#19979#38480
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
      'select ID from '#21830#21697#36164#26009'  where '#21830#21697#32534#21495'=:Code')
  end
  object ADOQryCalculateUnit: TADOQuery
    Active = True
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    OnNewRecord = QBaseInfoNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select * From '#35745#37327#21333#20301' Order by ID')
    Left = 216
    Top = 248
    object AutoIncField2: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      FieldName = #21333#20301#32534#21495
    end
    object WideStringField4: TWideStringField
      FieldName = #21333#20301#21517#31216
      Size = 30
    end
    object MemoField2: TMemoField
      FieldName = #22791#27880
      BlobType = ftMemo
    end
  end
  object dsCalculateUnit: TDataSource
    AutoEdit = False
    DataSet = ADOQryCalculateUnit
    Left = 256
    Top = 248
  end
  object ADOQryGoodsType: TADOQuery
    Active = True
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    OnNewRecord = QBaseInfoNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select * From '#21830#21697#31867#21035' Order by ID')
    Left = 128
    Top = 184
    object AutoIncField1: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = #31867#21035#32534#21495
    end
    object WideStringField2: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object MemoField1: TMemoField
      FieldName = #22791#27880
      BlobType = ftMemo
    end
  end
  object dsGoodsType: TDataSource
    AutoEdit = False
    DataSet = ADOQryGoodsType
    Left = 168
    Top = 184
  end
end
