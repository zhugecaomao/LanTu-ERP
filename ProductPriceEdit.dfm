inherited ProductPriceEditForm: TProductPriceEditForm
  Left = 254
  Top = 201
  Caption = #20135#21697#21345#32423#20215#26684'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 16
    Top = 32
    Width = 48
    Height = 12
    Caption = #21345'    '#32423
    FocusControl = DBLookupComboboxEh1
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 61
    Width = 48
    Height = 12
    Caption = #21333'    '#20215
    FocusControl = DBEditEh1
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 90
    Width = 48
    Height = 12
    Caption = #25240'    '#25187
    FocusControl = DBEditEh2
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 72
    Top = 24
    Width = 121
    Height = 20
    DataField = #21345#32423#32534#21495
    DataSource = ProductPriceForm.dsBaseInfo
    DropDownBox.Options = []
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    KeyField = #21345#32423#32534#21495
    ListField = #21345#32423#32534#21495';'#21345#32423#21517#31216
    ListFieldIndex = 1
    ListSource = dsBaseInfo
    TabOrder = 3
    Visible = True
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 56
    Width = 121
    Height = 20
    DataField = #21333#20215
    DataSource = ProductPriceForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 88
    Width = 121
    Height = 20
    DataField = #25240#25187
    DataSource = ProductPriceForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 5
    Visible = True
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#21345#32423#32534#21495','#21345#32423#21517#31216','#29366#24577' From '#20250#21592#21345#32423' where '#29366#24577'='#39#20351#29992#39' Order by ID')
    Left = 208
    Top = 8
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      FieldName = #21345#32423#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #21345#32423#21517#31216
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #29366#24577
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 208
    Top = 64
  end
end
