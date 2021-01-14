inherited EmployeeEditForm: TEmployeeEditForm
  Left = 117
  Top = 197
  Caption = #21592#24037'--'#20462#25913
  ClientHeight = 293
  ClientWidth = 529
  PixelsPerInch = 96
  TextHeight = 12
  inherited btnIns: TBitBtn
    Left = 438
  end
  inherited btnOK: TBitBtn
    Left = 438
  end
  inherited btnNO: TBitBtn
    Left = 438
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 417
    Height = 293
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = #22522#26412#20449#24687
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 48
        Height = 12
        Caption = #21592#24037#22995#21517
        FocusControl = DBEditEh1
      end
      object Label2: TLabel
        Left = 16
        Top = 45
        Width = 48
        Height = 12
        Caption = #21592#24037#32534#21495
        FocusControl = DBEditEh2
      end
      object Label3: TLabel
        Left = 216
        Top = 45
        Width = 48
        Height = 12
        Caption = #31867#21035#21517#31216
        FocusControl = DBLookupComboboxEh1
      end
      object Label4: TLabel
        Left = 16
        Top = 75
        Width = 48
        Height = 12
        Caption = #25340#38899#32534#30721
        FocusControl = DBEditEh3
      end
      object Label5: TLabel
        Left = 216
        Top = 75
        Width = 48
        Height = 12
        Caption = #20986#29983#26085#26399
        FocusControl = DBDateTimeEditEh1
      end
      object Label6: TLabel
        Left = 16
        Top = 105
        Width = 48
        Height = 12
        Caption = #24615'    '#21035
        FocusControl = DBComboBoxEh1
      end
      object Label7: TLabel
        Left = 216
        Top = 105
        Width = 48
        Height = 12
        Caption = #37096#38376#21517#31216
        FocusControl = DBLookupComboboxEh2
      end
      object Label8: TLabel
        Left = 16
        Top = 134
        Width = 48
        Height = 12
        Caption = #23398#21382#32534#21495
        FocusControl = DBLookupComboboxEh3
      end
      object Label9: TLabel
        Left = 16
        Top = 164
        Width = 48
        Height = 12
        Caption = #36523#20221#35777#21495
        FocusControl = DBEditEh4
      end
      object Label10: TLabel
        Left = 16
        Top = 194
        Width = 48
        Height = 12
        Caption = #31821'    '#36143
        FocusControl = DBEditEh5
      end
      object Label11: TLabel
        Left = 16
        Top = 224
        Width = 48
        Height = 12
        Caption = #22791'    '#27880
        FocusControl = DBEditEh6
      end
      object DBEditEh1: TDBEditEh
        Left = 72
        Top = 12
        Width = 321
        Height = 20
        DataField = #21592#24037#22995#21517
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh2: TDBEditEh
        Left = 72
        Top = 41
        Width = 121
        Height = 20
        DataField = #21592#24037#32534#21495
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh3: TDBEditEh
        Left = 72
        Top = 71
        Width = 121
        Height = 20
        DataField = #25340#38899#32534#30721
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBLookupComboboxEh1: TDBLookupComboboxEh
        Left = 272
        Top = 41
        Width = 121
        Height = 20
        DataField = #31867#21035#32534#21495
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBLookupComboboxEh1EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        KeyField = 'ID'
        ListField = #31867#21035#21517#31216
        ListSource = EmployeeForm.dsEmployeetype
        TabOrder = 2
        Visible = True
      end
      object DBComboBoxEh1: TDBComboBoxEh
        Left = 72
        Top = 101
        Width = 121
        Height = 20
        DataField = #24615#21035
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        Items.Strings = (
          #30007
          #22899)
        TabOrder = 5
        Visible = True
      end
      object DBLookupComboboxEh2: TDBLookupComboboxEh
        Left = 272
        Top = 101
        Width = 121
        Height = 20
        DataField = #37096#38376#32534#21495
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBLookupComboboxEh2EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        KeyField = 'ID'
        ListField = #37096#38376#21517#31216
        ListSource = EmployeeForm.dsDepart
        TabOrder = 6
        Visible = True
      end
      object DBLookupComboboxEh3: TDBLookupComboboxEh
        Left = 72
        Top = 130
        Width = 121
        Height = 20
        DataField = #23398#21382#32534#21495
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBLookupComboboxEh3EditButtons0Click
          end>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        KeyField = 'ID'
        ListField = #23398#21382#21517#31216
        ListSource = EmployeeForm.dsDegree
        TabOrder = 7
        Visible = True
      end
      object DBEditEh4: TDBEditEh
        Left = 72
        Top = 160
        Width = 321
        Height = 20
        DataField = #36523#20221#35777#21495
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 9
        Visible = True
      end
      object DBEditEh5: TDBEditEh
        Left = 72
        Top = 190
        Width = 321
        Height = 20
        DataField = #31821#36143
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 10
        Visible = True
      end
      object DBEditEh6: TDBEditEh
        Left = 72
        Top = 220
        Width = 321
        Height = 20
        DataField = #22791#27880
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 11
        Visible = True
      end
      object DBCheckBoxEh1: TDBCheckBoxEh
        Left = 216
        Top = 132
        Width = 97
        Height = 17
        Caption = #26159#21542#31163#32844
        DataField = #26159#21542#31163#32844
        DataSource = EmployeeForm.dsBaseInfo
        TabOrder = 8
        TabStop = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBDateTimeEditEh1: TDBDateTimeEditEh
        Left = 272
        Top = 71
        Width = 121
        Height = 20
        DataField = #20986#29983#26085#26399
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 4
        Visible = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20854#20182#20449#24687
      ImageIndex = 1
      object Label12: TLabel
        Left = 14
        Top = 24
        Width = 48
        Height = 12
        Caption = #22522#26412#24037#36164
        FocusControl = DBEditEh7
      end
      object Label13: TLabel
        Left = 14
        Top = 52
        Width = 48
        Height = 12
        Caption = #32844'    '#21153
        FocusControl = DBEditEh8
      end
      object Label14: TLabel
        Left = 214
        Top = 52
        Width = 48
        Height = 12
        Caption = #20837#32844#26085#26399
        FocusControl = DBDateTimeEditEh2
      end
      object Label15: TLabel
        Left = 14
        Top = 81
        Width = 48
        Height = 12
        Caption = #30005'    '#35805
        FocusControl = DBEditEh9
      end
      object Label16: TLabel
        Left = 214
        Top = 81
        Width = 48
        Height = 12
        Caption = #20256'    '#21628
        FocusControl = DBEditEh10
      end
      object Label17: TLabel
        Left = 14
        Top = 110
        Width = 48
        Height = 12
        Caption = #25163'    '#26426
        FocusControl = DBEditEh11
      end
      object Label18: TLabel
        Left = 214
        Top = 110
        Width = 48
        Height = 12
        Caption = #20256'    '#30495
        FocusControl = DBEditEh12
      end
      object Label19: TLabel
        Left = 14
        Top = 139
        Width = 48
        Height = 12
        Caption = #37038'    '#32534
        FocusControl = DBEditEh13
      end
      object Label20: TLabel
        Left = 214
        Top = 139
        Width = 48
        Height = 12
        Caption = #30005#23376#37038#20214
        FocusControl = DBEditEh14
      end
      object Label21: TLabel
        Left = 14
        Top = 168
        Width = 48
        Height = 12
        Caption = #22320'    '#22336
        FocusControl = DBEditEh15
      end
      object DBEditEh7: TDBEditEh
        Left = 70
        Top = 20
        Width = 121
        Height = 20
        DataField = #22522#26412#24037#36164
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 0
        Visible = True
      end
      object DBEditEh8: TDBEditEh
        Left = 70
        Top = 48
        Width = 121
        Height = 20
        DataField = #32844#21153
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 1
        Visible = True
      end
      object DBEditEh9: TDBEditEh
        Left = 70
        Top = 77
        Width = 121
        Height = 20
        DataField = #30005#35805
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 3
        Visible = True
      end
      object DBEditEh10: TDBEditEh
        Left = 272
        Top = 77
        Width = 121
        Height = 20
        DataField = #20256#21628
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 4
        Visible = True
      end
      object DBEditEh11: TDBEditEh
        Left = 70
        Top = 106
        Width = 121
        Height = 20
        DataField = #25163#26426
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = True
      end
      object DBEditEh12: TDBEditEh
        Left = 272
        Top = 106
        Width = 121
        Height = 20
        DataField = #20256#30495
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = True
      end
      object DBEditEh13: TDBEditEh
        Left = 70
        Top = 135
        Width = 121
        Height = 20
        DataField = #37038#32534
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 7
        Visible = True
      end
      object DBEditEh14: TDBEditEh
        Left = 272
        Top = 135
        Width = 121
        Height = 20
        DataField = #30005#23376#37038#20214
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 8
        Visible = True
      end
      object DBEditEh15: TDBEditEh
        Left = 70
        Top = 164
        Width = 321
        Height = 20
        DataField = #22320#22336
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        TabOrder = 9
        Visible = True
      end
      object DBDateTimeEditEh2: TDBDateTimeEditEh
        Left = 272
        Top = 48
        Width = 121
        Height = 20
        DataField = #20837#32844#26085#26399
        DataSource = EmployeeForm.dsBaseInfo
        EditButtons = <>
        ImeName = #32043#20809#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 2
        Visible = True
      end
    end
  end
  object ADOQryEmployeetype: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#31867#21035#21517#31216' From '#21592#24037#31867#21035' Order by ID')
    Left = 272
    Top = 24
  end
  object dsEmployeetype: TDataSource
    AutoEdit = False
    DataSet = ADOQryEmployeetype
    Left = 312
    Top = 24
  end
  object ADOQryDepart: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#37096#38376#21517#31216' From '#37096#38376#36164#26009' Order by ID')
    Left = 432
    Top = 104
  end
  object dsDepart: TDataSource
    AutoEdit = False
    DataSet = ADOQryDepart
    Left = 472
    Top = 104
  end
  object ADOQryDegree: TADOQuery
    Connection = DataMForm.ADOConnet
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,'#23398#21382#21517#31216' From '#23398#21382#36164#26009' Order by ID')
    Left = 448
    Top = 168
  end
  object dsDegree: TDataSource
    AutoEdit = False
    DataSet = ADOQryDegree
    Left = 488
    Top = 168
  end
end
