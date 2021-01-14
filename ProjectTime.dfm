inherited ProjectTimeForm: TProjectTimeForm
  Left = 227
  Top = 245
  Caption = #35745#26102#20215#26684
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
        FieldName = #39033#30446#32534#21495
        Footers = <>
        Visible = False
        Width = 121
      end
      item
        DisplayFormat = 'hh:mm'
        EditButtons = <>
        FieldName = #24320#22987#26102#38388
        Footers = <>
        Width = 121
      end
      item
        DisplayFormat = 'hh:mm'
        EditButtons = <>
        FieldName = #32467#26463#26102#38388
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #21333#20301#26102#38388
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #26368#23567#21333#20301
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #20215#26684
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = #39033#30446#32534#21495
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From '#35745#26102#20215#26684' Where '#39033#30446#32534#21495'=:'#39033#30446#32534#21495' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #39033#30446#32534#21495
    end
    object QBaseInfoDSDesigner2: TDateTimeField
      FieldName = #24320#22987#26102#38388
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object QBaseInfoDSDesigner3: TDateTimeField
      FieldName = #32467#26463#26102#38388
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object QBaseInfoDSDesigner4: TFloatField
      FieldName = #21333#20301#26102#38388
    end
    object QBaseInfoDSDesigner5: TFloatField
      FieldName = #26368#23567#21333#20301
    end
    object QBaseInfoDSDesigner6: TFloatField
      FieldName = #20215#26684
      currency = True
    end
  end
  inherited QIsUnique: TADOQuery
    CursorType = ctStatic
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
      'select ID from '#35745#26102#20215#26684' where ID=:Code')
  end
end
