inherited ProductPackageEditForm: TProductPackageEditForm
  Left = 262
  Top = 169
  Caption = #20135#21697#25171#21253'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label14: TLabel [4]
    Left = 8
    Top = 272
    Width = 48
    Height = 12
    Caption = #25968'    '#37327
    FocusControl = DBEditEh14
  end
  inherited btnIns: TBitBtn
    Left = 452
    TabOrder = 1
  end
  inherited btnOK: TBitBtn
    Left = 452
    TabOrder = 2
  end
  inherited btnNO: TBitBtn
    Left = 452
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 19
    Width = 425
    Height = 238
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 46
      Width = 48
      Height = 12
      Caption = #20135#21697#32534#21495
      FocusControl = DBEditEh2
    end
    object Label2: TLabel
      Left = 24
      Top = 20
      Width = 48
      Height = 12
      Caption = #20135#21697#21517#31216
      FocusControl = DBEditEh1
    end
    object Label3: TLabel
      Left = 224
      Top = 46
      Width = 48
      Height = 12
      Caption = #31867#21035#21517#31216
      FocusControl = DBEditEh3
    end
    object Label4: TLabel
      Left = 24
      Top = 73
      Width = 48
      Height = 12
      Caption = #20135#21697#26465#30721
      FocusControl = DBEditEh4
    end
    object Label5: TLabel
      Left = 224
      Top = 73
      Width = 48
      Height = 12
      Caption = #38144' '#21806' '#20215
      FocusControl = DBEditEh5
    end
    object Label6: TLabel
      Left = 24
      Top = 100
      Width = 48
      Height = 12
      Caption = #20445' '#36136' '#26399
      FocusControl = DBEditEh6
    end
    object Label7: TLabel
      Left = 224
      Top = 100
      Width = 48
      Height = 12
      Caption = #25104' '#26412' '#20215
      FocusControl = DBEditEh7
    end
    object Label8: TLabel
      Left = 24
      Top = 127
      Width = 48
      Height = 12
      Caption = #36229#20648#30028#32447
      FocusControl = DBEditEh8
    end
    object Label9: TLabel
      Left = 224
      Top = 127
      Width = 48
      Height = 12
      Caption = #32570#36135#30028#32447
      FocusControl = DBEditEh9
    end
    object Label10: TLabel
      Left = 24
      Top = 154
      Width = 48
      Height = 12
      Caption = #20135#21697#25240#25187
      FocusControl = DBEditEh10
    end
    object Label11: TLabel
      Left = 224
      Top = 154
      Width = 48
      Height = 12
      Caption = #38656#29992#31215#20998
      FocusControl = DBEditEh11
    end
    object Label12: TLabel
      Left = 24
      Top = 208
      Width = 48
      Height = 12
      Caption = #22791'    '#27880
      FocusControl = DBEditEh13
    end
    object Label13: TLabel
      Left = 224
      Top = 183
      Width = 48
      Height = 12
      Caption = #29366'    '#24577
      FocusControl = DBEditEh12
    end
    object DBEditEh1: TDBEditEh
      Left = 80
      Top = 16
      Width = 321
      Height = 20
      DataField = #20135#21697#21517#31216
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <
        item
          Style = ebsEllipsisEh
          OnClick = DBEditEh1EditButtons0Click
        end>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 0
      Visible = True
    end
    object DBEditEh2: TDBEditEh
      Left = 80
      Top = 42
      Width = 121
      Height = 20
      DataField = #32534#21495
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 280
      Top = 42
      Width = 121
      Height = 20
      DataField = #31867#21035#32534#21495
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 80
      Top = 69
      Width = 121
      Height = 20
      DataField = #20135#21697#26465#30721
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 280
      Top = 69
      Width = 121
      Height = 20
      DataField = #38144#21806#20215
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 4
      Visible = True
    end
    object DBEditEh6: TDBEditEh
      Left = 80
      Top = 96
      Width = 121
      Height = 20
      DataField = #20445#36136#26399
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 5
      Visible = True
    end
    object DBEditEh7: TDBEditEh
      Left = 280
      Top = 96
      Width = 121
      Height = 20
      DataField = #25104#26412#20215
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 6
      Visible = True
    end
    object DBEditEh8: TDBEditEh
      Left = 80
      Top = 123
      Width = 121
      Height = 20
      DataField = #36229#20648#30028#32447
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 7
      Visible = True
    end
    object DBEditEh9: TDBEditEh
      Left = 280
      Top = 123
      Width = 121
      Height = 20
      DataField = #32570#36135#30028#32447
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 8
      Visible = True
    end
    object DBEditEh10: TDBEditEh
      Left = 80
      Top = 150
      Width = 121
      Height = 20
      DataField = #20135#21697#25240#25187
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 9
      Visible = True
    end
    object DBEditEh11: TDBEditEh
      Left = 280
      Top = 150
      Width = 121
      Height = 20
      DataField = #38656#29992#31215#20998
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 10
      Visible = True
    end
    object DBCheckBoxEh1: TDBCheckBoxEh
      Left = 24
      Top = 181
      Width = 97
      Height = 17
      Caption = #26159#21542#25171#21253
      DataField = #26159#21542#25171#21253
      DataSource = ProductPackageForm.dsBaseInfo
      TabOrder = 11
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEditEh12: TDBEditEh
      Left = 280
      Top = 179
      Width = 121
      Height = 20
      DataField = #29366#24577
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 12
      Visible = True
    end
    object DBEditEh13: TDBEditEh
      Left = 80
      Top = 204
      Width = 321
      Height = 20
      DataField = #22791#27880
      DataSource = ProductPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 13
      Visible = True
    end
  end
  object DBEditEh14: TDBEditEh
    Left = 64
    Top = 268
    Width = 121
    Height = 20
    DataField = #25968#37327
    DataSource = ProductPackageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
end
