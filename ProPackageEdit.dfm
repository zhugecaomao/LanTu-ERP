inherited ProPackageEditForm: TProPackageEditForm
  Left = 242
  Top = 210
  Width = 524
  Height = 316
  Caption = #39033#30446#21253#28040#36153'---'#20462#25913
  PixelsPerInch = 96
  TextHeight = 12
  object Label13: TLabel [4]
    Left = 24
    Top = 264
    Width = 48
    Height = 12
    Caption = #28040#36153#26041#24335
    FocusControl = DBComboBoxEh1
  end
  object Label14: TLabel [5]
    Left = 224
    Top = 264
    Width = 48
    Height = 12
    Caption = #38271'    '#24230
  end
  inherited btnIns: TBitBtn
    Left = 429
    TabOrder = 2
  end
  inherited btnOK: TBitBtn
    Left = 429
    TabOrder = 3
  end
  inherited btnNO: TBitBtn
    Left = 429
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 17
    Width = 412
    Height = 232
    TabOrder = 5
    object Label1: TLabel
      Left = 16
      Top = 49
      Width = 48
      Height = 12
      Caption = #39033#30446#32534#21495
    end
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 12
      Caption = #39033#30446#21517#31216
    end
    object Label3: TLabel
      Left = 216
      Top = 49
      Width = 48
      Height = 12
      Caption = #31867#21035#21517#31216
    end
    object Label4: TLabel
      Left = 16
      Top = 75
      Width = 48
      Height = 12
      Caption = #39033#30446#26465#30721
    end
    object Label5: TLabel
      Left = 216
      Top = 75
      Width = 48
      Height = 12
      Caption = #21333'    '#20215
    end
    object Label6: TLabel
      Left = 16
      Top = 101
      Width = 48
      Height = 12
      Caption = #39033#30446#25240#25187
    end
    object Label7: TLabel
      Left = 216
      Top = 101
      Width = 48
      Height = 12
      Caption = #26448#26009#36153#29992
    end
    object Label8: TLabel
      Left = 16
      Top = 127
      Width = 48
      Height = 12
      Caption = #26448#26009#21333#20215
    end
    object Label9: TLabel
      Left = 216
      Top = 127
      Width = 48
      Height = 12
      Caption = #26631#20934#24037#26102
    end
    object Label10: TLabel
      Left = 16
      Top = 153
      Width = 48
      Height = 12
      Caption = #38656#29992#31215#20998
    end
    object Label11: TLabel
      Left = 16
      Top = 179
      Width = 48
      Height = 12
      Caption = #22791'    '#27880
    end
    object Label12: TLabel
      Left = 16
      Top = 205
      Width = 48
      Height = 12
      Caption = #29366'    '#24577
    end
    object DBEditEh1: TDBEditEh
      Left = 72
      Top = 20
      Width = 321
      Height = 20
      DataField = #39033#30446#21517#31216
      DataSource = ProPackageForm.dsBaseInfo
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
      Left = 72
      Top = 45
      Width = 121
      Height = 20
      DataField = #32534#21495
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 1
      Visible = True
    end
    object DBEditEh3: TDBEditEh
      Left = 272
      Top = 45
      Width = 121
      Height = 20
      DataField = #31867#21035#21517#31216
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 2
      Visible = True
    end
    object DBEditEh4: TDBEditEh
      Left = 72
      Top = 71
      Width = 121
      Height = 20
      DataField = #39033#30446#26465#30721
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = True
    end
    object DBEditEh5: TDBEditEh
      Left = 272
      Top = 71
      Width = 121
      Height = 20
      DataField = #21333#20215
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 4
      Visible = True
    end
    object DBEditEh6: TDBEditEh
      Left = 72
      Top = 97
      Width = 121
      Height = 20
      DataField = #39033#30446#25240#25187
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 5
      Visible = True
    end
    object DBEditEh7: TDBEditEh
      Left = 272
      Top = 97
      Width = 121
      Height = 20
      DataField = #26448#26009#36153#29992
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 6
      Visible = True
    end
    object DBEditEh8: TDBEditEh
      Left = 72
      Top = 123
      Width = 121
      Height = 20
      DataField = #26448#26009#21333#20215
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 7
      Visible = True
    end
    object DBEditEh9: TDBEditEh
      Left = 272
      Top = 123
      Width = 121
      Height = 20
      DataField = #26631#20934#24037#26102
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 8
      Visible = True
    end
    object DBEditEh10: TDBEditEh
      Left = 72
      Top = 149
      Width = 121
      Height = 20
      DataField = #38656#29992#31215#20998
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 9
      Visible = True
    end
    object DBCheckBoxEh1: TDBCheckBoxEh
      Left = 216
      Top = 151
      Width = 97
      Height = 17
      Caption = #26159#21542#25171#21253
      DataField = #26159#21542#25171#21253
      DataSource = ProPackageForm.dsBaseInfo
      TabOrder = 10
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEditEh11: TDBEditEh
      Left = 72
      Top = 175
      Width = 321
      Height = 20
      DataField = #22791#27880
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 11
      Visible = True
    end
    object DBEditEh12: TDBEditEh
      Left = 72
      Top = 201
      Width = 321
      Height = 20
      DataField = #29366#24577
      DataSource = ProPackageForm.dsBaseInfo
      EditButtons = <>
      ImeName = #32043#20809#25340#38899#36755#20837#27861
      TabOrder = 12
      Visible = True
    end
  end
  object DBEditEh13: TDBEditEh
    Left = 280
    Top = 260
    Width = 121
    Height = 20
    DataField = #38271#24230
    DataSource = ProPackageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
    Visible = True
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 80
    Top = 260
    Width = 121
    Height = 20
    DataField = #28040#36153#26041#24335
    DataSource = ProPackageForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Items.Strings = (
      #35745#26102
      #35745#27425)
    TabOrder = 0
    Visible = True
    OnChange = DBComboBoxEh1Change
  end
end
