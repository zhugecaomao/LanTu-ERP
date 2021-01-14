inherited ProjectForm: TProjectForm
  Left = 297
  Top = 172
  Caption = #26381#21153#39033#30446
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
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#21517#31216
        Footers = <>
        Width = 121
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
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #21333#20215
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#25240#25187
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = #26448#26009#36153#29992
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #26448#26009#21333#20215
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #26631#20934#24037#26102
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = #38656#29992#31215#20998
        Footers = <>
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = #26159#21542#25171#21253
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = #29366#24577
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #22791#27880
        Footers = <>
        Visible = False
      end>
  end
  inherited Panel1: TPanel
    object btnpackage: TBitBtn
      Left = 0
      Top = 1
      Width = 75
      Height = 25
      Caption = #25171#21253#35774#32622
      TabOrder = 2
      OnClick = btnpackageClick
    end
    object btnTime: TBitBtn
      Left = 74
      Top = 1
      Width = 75
      Height = 25
      Caption = #35745'  '#26102
      TabOrder = 0
      Visible = False
      OnClick = btnTimeClick
    end
    object btnPrice: TBitBtn
      Left = 148
      Top = 1
      Width = 75
      Height = 25
      Caption = #21345#32423#20215#26684
      TabOrder = 1
      Visible = False
      OnClick = btnPriceClick
    end
  end
  inherited QBaseInfo: TADOQuery
    CursorType = ctStatic
    BeforePost = QBaseInfoBeforePost
    SQL.Strings = (
      'Select * From '#26381#21153#39033#30446' Order by ID')
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      FieldName = #39033#30446#32534#21495
      OnValidate = QBaseInfoDSDesignerValidate
    end
    object QBaseInfoDSDesigner2: TStringField
      FieldName = #39033#30446#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner3: TIntegerField
      FieldName = #31867#21035#32534#21495
    end
    object QBaseInfoDSDesigner14: TWideStringField
      FieldName = #31867#21035#21517#31216
      Size = 30
    end
    object QBaseInfoDSDesigner4: TStringField
      FieldName = #39033#30446#26465#30721
    end
    object QBaseInfoDSDesigner5: TBCDField
      FieldName = #21333#20215
      Precision = 19
    end
    object QBaseInfoDSDesigner6: TFloatField
      FieldName = #39033#30446#25240#25187
    end
    object QBaseInfoDSDesigner7: TBCDField
      FieldName = #26448#26009#36153#29992
      Precision = 19
    end
    object QBaseInfoDSDesigner8: TFloatField
      FieldName = #26448#26009#21333#20215
    end
    object QBaseInfoDSDesigner9: TFloatField
      FieldName = #26631#20934#24037#26102
    end
    object QBaseInfoDSDesigner11: TIntegerField
      FieldName = #38656#29992#31215#20998
    end
    object QBaseInfoDSDesigner12: TBooleanField
      FieldName = #26159#21542#25171#21253
      OnGetText = QBaseInfoDSDesigner12GetText
      OnSetText = QBaseInfoDSDesigner12SetText
    end
    object QBaseInfoDSDesigner10: TStringField
      FieldName = #29366#24577
    end
    object QBaseInfoDSDesigner13: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
  end
  inherited dsBaseInfo: TDataSource
    OnDataChange = dsBaseInfoDataChange
  end
  inherited QIsUnique: TADOQuery
    Parameters = <
      item
        Name = 'Code'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select ID from '#26381#21153#39033#30446' where '#39033#30446#32534#21495'=:Code')
  end
end
