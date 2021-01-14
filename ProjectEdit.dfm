inherited ProjectEditForm: TProjectEditForm
  Left = 218
  Top = 191
  Width = 493
  Height = 290
  Caption = #26381#21153#39033#30446'---'#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  object Label2: TLabel [4]
    Left = 8
    Top = 60
    Width = 48
    Height = 12
    Caption = #39033#30446#32534#21495
    FocusControl = DBEditEh2
  end
  object Label1: TLabel [5]
    Left = 8
    Top = 32
    Width = 48
    Height = 12
    Caption = #39033#30446#21517#31216
    FocusControl = DBEditEh1
  end
  object Label3: TLabel [6]
    Left = 208
    Top = 60
    Width = 48
    Height = 12
    Caption = #39033#30446#31867#21035
    FocusControl = DBLookupComboboxEh1
  end
  object Label4: TLabel [7]
    Left = 8
    Top = 89
    Width = 48
    Height = 12
    Caption = #39033#30446#26465#30721
    FocusControl = DBEditEh3
  end
  object Label5: TLabel [8]
    Left = 208
    Top = 89
    Width = 48
    Height = 12
    Caption = #21333'    '#20215
    FocusControl = DBEditEh4
  end
  object Label6: TLabel [9]
    Left = 208
    Top = 117
    Width = 48
    Height = 12
    Caption = #39033#30446#25240#25187
    FocusControl = DBEditEh6
  end
  object Label7: TLabel [10]
    Left = 8
    Top = 146
    Width = 48
    Height = 12
    Caption = #26448#26009#36153#29992
    FocusControl = DBEditEh7
  end
  object Label8: TLabel [11]
    Left = 208
    Top = 146
    Width = 48
    Height = 12
    Caption = #26448#26009#21333#20215
    FocusControl = DBEditEh8
  end
  object Label9: TLabel [12]
    Left = 8
    Top = 174
    Width = 48
    Height = 12
    Caption = #26631#20934#24037#26102
    FocusControl = DBEditEh9
  end
  object Label11: TLabel [13]
    Left = 208
    Top = 174
    Width = 48
    Height = 12
    Caption = #29366'    '#24577
    FocusControl = DBComboBoxEh1
  end
  object Label10: TLabel [14]
    Left = 8
    Top = 117
    Width = 48
    Height = 12
    Caption = #38656#29992#31215#20998
    FocusControl = DBEditEh5
  end
  object Label12: TLabel [15]
    Left = 8
    Top = 203
    Width = 48
    Height = 12
    Caption = #22791'    '#27880
    FocusControl = DBEditEh10
  end
  object Label13: TLabel [16]
    Left = 400
    Top = 96
    Width = 6
    Height = 12
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  inherited btnIns: TBitBtn
    Left = 399
    TabOrder = 13
  end
  inherited btnOK: TBitBtn
    Left = 399
    TabOrder = 14
  end
  inherited btnNO: TBitBtn
    Left = 399
    TabOrder = 15
  end
  object DBEditEh1: TDBEditEh
    Left = 64
    Top = 28
    Width = 321
    Height = 20
    DataField = #39033#30446#21517#31216
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 64
    Top = 56
    Width = 121
    Height = 20
    DataField = #39033#30446#32534#21495
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 264
    Top = 56
    Width = 121
    Height = 20
    DataField = #31867#21035#32534#21495
    DataSource = ProjectForm.dsBaseInfo
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
    Left = 64
    Top = 85
    Width = 121
    Height = 20
    DataField = #39033#30446#26465#30721
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
  end
  object DBEditEh4: TDBEditEh
    Left = 264
    Top = 85
    Width = 121
    Height = 20
    DataField = #21333#20215
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
    OnDblClick = DBEditEh4DblClick
  end
  object DBEditEh6: TDBEditEh
    Left = 264
    Top = 113
    Width = 121
    Height = 20
    DataField = #39033#30446#25240#25187
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 6
    Visible = True
  end
  object DBEditEh7: TDBEditEh
    Left = 64
    Top = 142
    Width = 121
    Height = 20
    DataField = #26448#26009#36153#29992
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 7
    Visible = True
  end
  object DBEditEh8: TDBEditEh
    Left = 264
    Top = 142
    Width = 121
    Height = 20
    DataField = #26448#26009#21333#20215
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 8
    Visible = True
  end
  object DBEditEh9: TDBEditEh
    Left = 64
    Top = 170
    Width = 121
    Height = 20
    DataField = #26631#20934#24037#26102
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 9
    Visible = True
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 264
    Top = 170
    Width = 121
    Height = 20
    DataField = #29366#24577
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Items.Strings = (
      #20351#29992
      #26410#29992)
    TabOrder = 10
    Visible = True
  end
  object DBEditEh5: TDBEditEh
    Left = 64
    Top = 113
    Width = 121
    Height = 20
    DataField = #38656#29992#31215#20998
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 5
    Visible = True
  end
  object DBCheckBoxEh1: TDBCheckBoxEh
    Left = 64
    Top = 232
    Width = 97
    Height = 17
    Caption = #26159#21542#25171#21253
    DataField = #26159#21542#25171#21253
    DataSource = ProjectForm.dsBaseInfo
    TabOrder = 12
    TabStop = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBEditEh10: TDBEditEh
    Left = 64
    Top = 199
    Width = 321
    Height = 20
    DataField = #22791#27880
    DataSource = ProjectForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 11
    Visible = True
  end
  object QBaseInfo: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#39033#30446#31867#21035' Order by ID')
    Left = 392
    Top = 120
    object QBaseInfoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QBaseInfoDSDesigner: TWideStringField
      DisplayWidth = 12
      FieldName = #31867#21035#32534#21495
      Size = 10
    end
    object QBaseInfoDSDesigner2: TWideStringField
      FieldName = #31867#21035#21517#31216
    end
    object QBaseInfoDSDesigner3: TWideStringField
      FieldName = #22791#27880
      Size = 200
    end
  end
  object dsBaseInfo: TDataSource
    AutoEdit = False
    DataSet = QBaseInfo
    Left = 448
    Top = 120
  end
end
