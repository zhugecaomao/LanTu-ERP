inherited PrepareAgreeForm: TPrepareAgreeForm
  Left = 98
  Top = 208
  Caption = #39044#32422#30331#35760
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
  inherited QBaseInfo: TADOQuery
    SQL.Strings = (
      'Select * From New'#39044#32422#30331#35760' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #24037#21495
    end
    object QBaseInfoDSDesigner2: TDateTimeField
      FieldName = #39044#23450#26102#38388
    end
    object QBaseInfoDSDesigner3: TStringField
      FieldName = #39038#23458#22995#21517
    end
    object QBaseInfoDSDesigner4: TStringField
      FieldName = #26381#21153#39033#30446
      Size = 50
    end
    object QBaseInfoDSDesigner5: TStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner6: TStringField
      FieldName = #29366#24577
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
      'select ID from New'#39044#32422#30331#35760' where ID=:Code')
  end
end
