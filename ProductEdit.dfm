inherited ProductEditForm: TProductEditForm
  Left = 146
  Top = 153
  Caption = #20135#21697#36164#26009'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label2: TLabel [4]
    Left = 16
    Top = 54
    Width = 48
    Height = 12
    Caption = #20135#21697#32534#21495
    FocusControl = DBEditEh2
  end
  object Label1: TLabel [5]
    Left = 16
    Top = 28
    Width = 48
    Height = 12
    Caption = #20135#21697#21517#31216
    FocusControl = DBEditEh1
  end
  object Label3: TLabel [6]
    Left = 214
    Top = 54
    Width = 48
    Height = 12
    Caption = #31867#21035#21517#31216
    FocusControl = DBLookupComboboxEh1
  end
  object Label4: TLabel [7]
    Left = 16
    Top = 81
    Width = 48
    Height = 12
    Caption = #38144' '#21806' '#20215
    FocusControl = DBEditEh3
  end
  object Label5: TLabel [8]
    Left = 16
    Top = 107
    Width = 48
    Height = 12
    Caption = #20135#21697#26465#30721
    FocusControl = DBEditEh5
  end
  object Label6: TLabel [9]
    Left = 214
    Top = 107
    Width = 48
    Height = 12
    Caption = #20445' '#36136' '#26399
    FocusControl = DBEditEh6
  end
  object Label7: TLabel [10]
    Left = 16
    Top = 134
    Width = 48
    Height = 12
    Caption = #25104' '#26412' '#20215
    FocusControl = DBEditEh7
  end
  object Label8: TLabel [11]
    Left = 214
    Top = 134
    Width = 48
    Height = 12
    Caption = #36229#20648#30028#32447
    FocusControl = DBEditEh8
  end
  object Label9: TLabel [12]
    Left = 16
    Top = 160
    Width = 48
    Height = 12
    Caption = #32570#36135#30028#32447
    FocusControl = DBEditEh9
  end
  object Label10: TLabel [13]
    Left = 214
    Top = 160
    Width = 48
    Height = 12
    Caption = #20135#21697#25240#25187
    FocusControl = DBEditEh10
  end
  object Label13: TLabel [14]
    Left = 16
    Top = 213
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh11
  end
  object Label11: TLabel [15]
    Left = 16
    Top = 187
    Width = 48
    Height = 12
    Caption = #29366'    '#24577
    FocusControl = DBComboBoxEh1
  end
  object Label12: TLabel [16]
    Left = 214
    Top = 81
    Width = 48
    Height = 12
    Caption = #38656#29992#31215#20998
    FocusControl = DBEditEh4
  end
  inherited btnIns: TBitBtn
    Left = 405
    Top = 16
    TabOrder = 14
  end
  inherited btnOK: TBitBtn
    Left = 405
    Top = 44
    TabOrder = 15
  end
  inherited btnNO: TBitBtn
    Left = 405
    Top = 72
    TabOrder = 16
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 24
    Width = 321
    Height = 20
    DataField = #20135#21697#21517#31216
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 72
    Top = 50
    Width = 121
    Height = 20
    DataField = #20135#21697#32534#21495
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 272
    Top = 50
    Width = 121
    Height = 20
    DataField = #31867#21035#32534#21495
    DataSource = ProductForm.dsBaseInfo
    DropDownBox.Options = []
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    KeyField = 'ID'
    ListField = 'ID;'#31867#21035#21517#31216
    ListFieldIndex = 1
    ListSource = dsBaseInfo
    TabOrder = 2
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 77
    Width = 121
    Height = 20
    DataField = #38144#21806#20215
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
  end
  object DBEditEh5: TDBEditEh
    Left = 72
    Top = 103
    Width = 121
    Height = 20
    DataField = #20135#21697#26465#30721
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 5
    Visible = True
  end
  object DBEditEh6: TDBEditEh
    Left = 272
    Top = 103
    Width = 121
    Height = 20
    DataField = #20445#36136#26399
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 6
    Visible = True
  end
  object DBEditEh7: TDBEditEh
    Left = 72
    Top = 130
    Width = 121
    Height = 20
    DataField = #25104#26412#20215
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 7
    Visible = True
  end
  object DBEditEh8: TDBEditEh
    Left = 272
    Top = 130
    Width = 121
    Height = 20
    DataField = #36229#20648#30028#32447
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 8
    Visible = True
  end
  object DBEditEh9: TDBEditEh
    Left = 72
    Top = 156
    Width = 121
    Height = 20
    DataField = #32570#36135#30028#32447
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 9
    Visible = True
  end
  object DBEditEh10: TDBEditEh
    Left = 272
    Top = 156
    Width = 121
    Height = 20
    DataField = #20135#21697#25240#25187
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 10
    Visible = True
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 72
    Top = 183
    Width = 121
    Height = 20
    DataField = #29366#24577
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Items.Strings = (
      #20351#29992
      #26410#29992)
    TabOrder = 11
    Visible = True
  end
  object DBEditEh11: TDBEditEh
    Left = 72
    Top = 209
    Width = 320
    Height = 20
    DataField = #22791#27880
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 12
    Visible = True
  end
  object DBEditEh4: TDBEditEh
    Left = 272
    Top = 77
    Width = 121
    Height = 20
    DataField = #38656#29992#31215#20998
    DataSource = ProductForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
  object DBCheckBoxEh1: TDBCheckBoxEh
    Left = 72
    Top = 240
    Width = 97
    Height = 17
    Caption = #26159#21542#25171#21253
    DataField = #26159#21542#25171#21253
    DataSource = ProductForm.dsBaseInfo
    TabOrder = 13
    TabStop = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#20135#21697#31867#21035' Order by ID')
    Left = 400
    Top = 112
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TStringField
      DisplayWidth = 12
      FieldName = #31867#21035#32534#21495
      Size = 50
    end
    object QBaseInfoDSDesigner2: TStringField
      DisplayWidth = 20
      FieldName = #31867#21035#21517#31216
      Size = 50
    end
    object QBaseInfoDSDesigner3: TStringField
      FieldName = #22791#27880
      Size = 500
    end
  end
  object dsBaseInfo: TDataSource
    DataSet = QBaseInfo
    Left = 400
    Top = 160
  end
end
