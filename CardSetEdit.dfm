inherited CardSetEditForm: TCardSetEditForm
  Left = 221
  Top = 137
  Width = 555
  Height = 298
  Caption = #20250#21592#21345#32423'---'#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel [4]
    Left = 240
    Top = 32
    Width = 48
    Height = 12
    Caption = #32534'    '#21495
    FocusControl = DBEditEh2
  end
  object Label2: TLabel [5]
    Left = 16
    Top = 32
    Width = 48
    Height = 12
    Caption = #21345#32423#21517#31216
    FocusControl = DBEditEh1
  end
  object Label3: TLabel [6]
    Left = 16
    Top = 61
    Width = 48
    Height = 12
    Caption = #39033#30446#25240#25187
    FocusControl = DBEditEh3
  end
  object Label4: TLabel [7]
    Left = 240
    Top = 61
    Width = 48
    Height = 12
    Caption = #20135#21697#25240#25187
    FocusControl = DBEditEh4
  end
  object Label8: TLabel [8]
    Left = 16
    Top = 148
    Width = 48
    Height = 12
    Caption = #29366'    '#24577
    FocusControl = DBComboBoxEh1
  end
  object Label5: TLabel [9]
    Left = 16
    Top = 90
    Width = 48
    Height = 12
    Caption = #19979' '#30028' '#32447
    FocusControl = DBEditEh5
  end
  object Label6: TLabel [10]
    Left = 240
    Top = 90
    Width = 48
    Height = 12
    Caption = #19978' '#30028' '#32447
    FocusControl = DBEditEh6
  end
  object Label7: TLabel [11]
    Left = 16
    Top = 119
    Width = 48
    Height = 12
    Caption = #31215#20998#19979#32447
    FocusControl = DBEditEh7
  end
  object Label9: TLabel [12]
    Left = 240
    Top = 119
    Width = 48
    Height = 12
    Caption = #31215#20998#19978#32447
    FocusControl = DBEditEh8
  end
  inherited btnIns: TBitBtn
    Left = 459
  end
  inherited btnOK: TBitBtn
    Left = 459
  end
  inherited btnNO: TBitBtn
    Left = 459
  end
  object DBEditEh1: TDBEditEh
    Left = 72
    Top = 28
    Width = 145
    Height = 20
    DataField = #21345#32423#21517#31216
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 3
    Visible = True
  end
  object DBEditEh2: TDBEditEh
    Left = 296
    Top = 28
    Width = 145
    Height = 20
    DataField = #21345#32423#32534#21495
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 4
    Visible = True
  end
  object DBEditEh3: TDBEditEh
    Left = 72
    Top = 57
    Width = 145
    Height = 20
    DataField = #39033#30446#25240#25187
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 5
    Visible = True
  end
  object DBEditEh4: TDBEditEh
    Left = 296
    Top = 57
    Width = 145
    Height = 20
    DataField = #20135#21697#25240#25187
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 6
    Visible = True
  end
  object DBComboBoxEh1: TDBComboBoxEh
    Left = 72
    Top = 144
    Width = 145
    Height = 20
    DataField = #29366#24577
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    Items.Strings = (
      #20351#29992
      #26410#29992)
    TabOrder = 7
    Visible = True
  end
  object DBEditEh5: TDBEditEh
    Left = 72
    Top = 86
    Width = 145
    Height = 20
    DataField = #19979#30028#32447
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 8
    Visible = True
  end
  object DBEditEh6: TDBEditEh
    Left = 296
    Top = 86
    Width = 145
    Height = 20
    DataField = #19978#30028#32447
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 9
    Visible = True
  end
  object DBEditEh7: TDBEditEh
    Left = 72
    Top = 115
    Width = 145
    Height = 20
    DataField = #31215#20998#19979#32447
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 10
    Visible = True
  end
  object DBEditEh8: TDBEditEh
    Left = 296
    Top = 115
    Width = 145
    Height = 20
    DataField = #31215#20998#19978#32447
    DataSource = CardSetForm.dsBaseInfo
    EditButtons = <>
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 11
    Visible = True
  end
  object GroupBox1: TGroupBox
    Left = 15
    Top = 173
    Width = 433
    Height = 68
    Caption = #33829#38144#35268#21017
    TabOrder = 12
    object DBCheckBoxEh1: TDBCheckBoxEh
      Left = 16
      Top = 16
      Width = 90
      Height = 17
      Caption = #25171#25240
      DataField = #25171#25240
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 0
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh2: TDBCheckBoxEh
      Left = 104
      Top = 16
      Width = 90
      Height = 17
      Caption = #39044#23384#20139#21463#25171#25240
      DataField = #39044#23384#20139#21463#25171#25240
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 1
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh3: TDBCheckBoxEh
      Left = 232
      Top = 16
      Width = 90
      Height = 17
      Caption = #31215#20998#25442#22870#21697
      DataField = #31215#20998#25442#22870#21697
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 2
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh4: TDBCheckBoxEh
      Left = 336
      Top = 16
      Width = 90
      Height = 17
      Caption = #25209#36141#20248#24800
      DataField = #25209#36141#20248#24800
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 3
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh5: TDBCheckBoxEh
      Left = 16
      Top = 40
      Width = 90
      Height = 17
      Caption = #28040#36153#36820#28857
      DataField = #28040#36153#36820#28857
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 4
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh6: TDBCheckBoxEh
      Left = 104
      Top = 40
      Width = 90
      Height = 17
      Caption = #20449#29992'/'#25346#36134
      DataField = #20449#29992'/'#25346#36134
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 5
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh7: TDBCheckBoxEh
      Left = 232
      Top = 40
      Width = 90
      Height = 17
      Caption = #36149#23486#24453#36935
      DataField = #36149#23486#24453#36935
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 6
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBoxEh8: TDBCheckBoxEh
      Left = 336
      Top = 40
      Width = 90
      Height = 17
      Caption = #20250#21592#21319#32423
      DataField = #20250#21592#21319#32423
      DataSource = CardSetForm.dsBaseInfo
      TabOrder = 7
      TabStop = True
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object btnSelect: TBitBtn
    Left = 464
    Top = 178
    Width = 75
    Height = 25
    Caption = #20840#36873
    TabOrder = 13
    OnClick = btnSelectClick
  end
  object btnClear: TBitBtn
    Left = 464
    Top = 202
    Width = 75
    Height = 25
    Caption = #20840#28165
    TabOrder = 14
    OnClick = btnClearClick
  end
end
