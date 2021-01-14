inherited MemberManageEditForm: TMemberManageEditForm
  Left = 243
  Top = 215
  Width = 484
  Height = 295
  Caption = #20250#21592#20449#24687'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label2: TLabel [4]
    Left = 8
    Top = 61
    Width = 48
    Height = 12
    Caption = #20250#21592#32534#21495
  end
  object Label1: TLabel [5]
    Left = 8
    Top = 32
    Width = 48
    Height = 12
    Caption = #20250#21592#21517#31216
    FocusControl = DBEditEh1
  end
  object Label3: TLabel [6]
    Left = 200
    Top = 61
    Width = 48
    Height = 12
    Caption = #24320#25143#26085#26399
    FocusControl = DBDateTimeEditEh1
  end
  object Label4: TLabel [7]
    Left = 8
    Top = 91
    Width = 48
    Height = 12
    Caption = #21345#32423#21517#31216
    FocusControl = DBLookupComboboxEh1
  end
  object Label5: TLabel [8]
    Left = 200
    Top = 91
    Width = 48
    Height = 12
    Caption = #26377' '#25928' '#26399
    FocusControl = DBDateTimeEditEh2
  end
  object Label6: TLabel [9]
    Left = 8
    Top = 121
    Width = 48
    Height = 12
    Caption = #29983'    '#26085
  end
  object Label7: TLabel [10]
    Left = 200
    Top = 121
    Width = 48
    Height = 12
    Caption = #35777' '#20214' '#21495
    FocusControl = DBEditEh3
  end
  object Label8: TLabel [11]
    Left = 8
    Top = 150
    Width = 48
    Height = 12
    Caption = #32852' '#31995' '#20154
    FocusControl = DBEditEh4
  end
  object Label9: TLabel [12]
    Left = 200
    Top = 150
    Width = 48
    Height = 12
    Caption = #32852#31995#30005#35805
    FocusControl = DBEditEh5
  end
  object Label11: TLabel [13]
    Left = 8
    Top = 210
    Width = 48
    Height = 12
    Caption = #22320'    '#22336
    FocusControl = DBEditEh8
  end
  object Label10: TLabel [14]
    Left = 200
    Top = 180
    Width = 48
    Height = 12
    Caption = #37038#25919#32534#30721
    FocusControl = DBEditEh7
  end
  object Label12: TLabel [15]
    Left = 8
    Top = 240
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh9
  end
  object Label13: TLabel [16]
    Left = 8
    Top = 180
    Width = 48
    Height = 12
    Caption = #25163'    '#26426
    FocusControl = DBEditEh6
  end
  inherited btnIns: TBitBtn
    Left = 390
    Width = 72
    TabOrder = 13
  end
  inherited btnOK: TBitBtn
    Left = 390
    TabOrder = 12
  end
  inherited btnNO: TBitBtn
    Left = 390
    TabOrder = 14
  end
  object DBEditEh1: TDBEditEh
    Left = 64
    Top = 28
    Width = 313
    Height = 20
    DataField = #20250#21592#21517#31216
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 64
    Top = 57
    Width = 121
    Height = 20
    DataField = #20250#21592#32534#21495
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBDateTimeEditEh1: TDBDateTimeEditEh
    Left = 256
    Top = 57
    Width = 121
    Height = 20
    DataField = #24320#25143#26085#26399
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Kind = dtkDateEh
    TabOrder = 2
    Visible = True
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 64
    Top = 87
    Width = 121
    Height = 20
    DataField = #21345#32423#32534#21495
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    KeyField = #21345#32423#32534#21495
    ListField = #21345#32423#32534#21495';'#21345#32423#21517#31216
    ListFieldIndex = 1
    ListSource = dsBaseInfo
    TabOrder = 3
    Visible = True
  end
  object DBDateTimeEditEh2: TDBDateTimeEditEh
    Left = 256
    Top = 87
    Width = 121
    Height = 20
    DataField = #26377#25928#26399
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Kind = dtkDateEh
    TabOrder = 4
    Visible = True
  end
  object DBDateTimeEditEh3: TDBDateTimeEditEh
    Left = 64
    Top = 117
    Width = 121
    Height = 20
    DataField = #29983#26085
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Kind = dtkDateEh
    TabOrder = 5
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 256
    Top = 117
    Width = 121
    Height = 20
    DataField = #35777#20214#21495
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 6
    Visible = True
  end
  object DBEditEh4: TDBEditEh
    Left = 64
    Top = 146
    Width = 121
    Height = 20
    DataField = #32852#31995#20154
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 7
    Visible = True
  end
  object DBEditEh5: TDBEditEh
    Left = 256
    Top = 146
    Width = 121
    Height = 20
    DataField = #32852#31995#30005#35805
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 8
    Visible = True
  end
  object DBEditEh7: TDBEditEh
    Left = 256
    Top = 176
    Width = 121
    Height = 20
    DataField = #37038#25919#32534#30721
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 9
    Visible = True
  end
  object DBEditEh8: TDBEditEh
    Left = 64
    Top = 206
    Width = 313
    Height = 20
    DataField = #22320#22336
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 10
    Visible = True
  end
  object DBEditEh9: TDBEditEh
    Left = 64
    Top = 236
    Width = 313
    Height = 20
    DataField = #22791#27880
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 11
    Visible = True
  end
  object DBEditEh6: TDBEditEh
    Left = 64
    Top = 176
    Width = 121
    Height = 20
    DataField = #25163#26426
    DataSource = MemberManageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 15
    Visible = True
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#20250#21592#21345#32423' Order by ID')
    Left = 384
    Top = 200
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
    object QBaseInfoDSDesigner3: TFloatField
      FieldName = #39033#30446#25240#25187
    end
    object QBaseInfoDSDesigner4: TFloatField
      FieldName = #20135#21697#25240#25187
    end
    object QBaseInfoDSDesigner6: TBCDField
      FieldName = #19979#30028#32447
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner7: TBCDField
      FieldName = #19978#30028#32447
      Precision = 18
      Size = 0
    end
    object QBaseInfoDSDesigner5: TWideStringField
      FieldName = #29366#24577
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 424
    Top = 200
  end
end
