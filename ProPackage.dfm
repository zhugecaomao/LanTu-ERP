inherited ProPackageForm: TProPackageForm
  Left = 255
  Top = 237
  Caption = #39033#30446#21253#28040#36153
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
        FieldName = #32534#21495
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#21517#31216
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#32534#21495
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #31867#21035#21517#31216
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#26465#30721
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21333#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#25240#25187
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26448#26009#36153#29992
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26448#26009#21333#20215
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26631#20934#24037#26102
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38656#29992#31215#20998
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #26159#21542#25171#21253
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #29366#24577
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #28040#36153#26041#24335
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #38271#24230
        Footers = <>
      end>
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    DataSource = ProjectForm.dsBaseInfo
    Parameters = <
      item
        Name = #39033#30446#32534#21495
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '0001'
      end>
    SQL.Strings = (
      'Select * From '#26381#21153#39033#30446#21253' where '#39033#30446#32534#21495'=:'#39033#30446#32534#21495' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner2: TStringField
      FieldName = #39033#30446#32534#21495
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #39033#30446#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner4: TWideStringField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoDSDesigner17: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #39033#30446#26465#30721
      Size = 30
    end
    object QBaseInfoDSDesigner6: TBCDField
      FieldName = #21333#20215
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner7: TBCDField
      FieldName = #39033#30446#25240#25187
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner8: TBCDField
      FieldName = #26448#26009#36153#29992
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner9: TBCDField
      FieldName = #26448#26009#21333#20215
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner10: TBCDField
      FieldName = #26631#20934#24037#26102
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner11: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object QBaseInfoDSDesigner13: TBooleanField
      FieldName = #26159#21542#25171#21253
    end
    object QBaseInfoDSDesigner15: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
    object QBaseInfoDSDesigner16: TWideStringField
      FieldName = #29366#24577
    end
    object QBaseInfoDSDesigner12: TWideStringField
      FieldName = #28040#36153#26041#24335
      Size = 10
    end
    object QBaseInfoDSDesigner14: TIntegerField
      FieldName = #38271#24230
    end
  end
  inherited QIsUnique: TADOQuery
    Active = True
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
      'select ID from '#26381#21153#39033#30446#21253' where ID=:Code')
  end
end
