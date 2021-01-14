inherited FilterPublicForm: TFilterPublicForm
  Left = 257
  Top = 155
  Caption = #19975#33021#36807#28388
  ClientHeight = 230
  ClientWidth = 435
  PixelsPerInch = 96
  TextHeight = 12
  object Label4: TLabel
    Left = 76
    Top = 8
    Width = 24
    Height = 12
    Caption = #21015#21517
  end
  object Label1: TLabel
    Left = 200
    Top = 8
    Width = 48
    Height = 12
    Caption = #27604#36739#20851#31995
  end
  object Label2: TLabel
    Left = 286
    Top = 8
    Width = 36
    Height = 12
    Caption = #27604#36739#20540
  end
  object edtDate6: TDateTimePicker
    Left = 285
    Top = 151
    Width = 145
    Height = 20
    Date = 38276.437048518500000000
    Time = 38276.437048518500000000
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 36
    OnChange = edtDate6Change
  end
  object edtCompValue: TComboBox
    Left = 200
    Top = 32
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 7
    Items.Strings = (
      ' Like '
      '<>'
      '>='
      '<='
      '>'
      '<')
  end
  object bbClear: TBitBtn
    Left = 194
    Top = 192
    Width = 75
    Height = 25
    Caption = #28165' '#38500'(&C)'
    TabOrder = 0
    OnClick = bbClearClick
  end
  object bbYes: TBitBtn
    Left = 274
    Top = 192
    Width = 75
    Height = 25
    Caption = #30830' '#23450'(&Y)'
    TabOrder = 1
    OnClick = bbYesClick
  end
  object bbNo: TBitBtn
    Left = 354
    Top = 192
    Width = 75
    Height = 25
    Caption = #21462' '#28040'(&X)'
    TabOrder = 2
    OnClick = bbNoClick
  end
  object chkSensitive: TCheckBox
    Left = 8
    Top = 176
    Width = 97
    Height = 17
    Caption = #21306#20998#22823#23567#20889
    TabOrder = 3
  end
  object chkPartial: TCheckBox
    Left = 8
    Top = 200
    Width = 97
    Height = 17
    Caption = #20840#37096#25968#25454#36807#28388
    TabOrder = 4
  end
  object edtFieldValue: TComboBox
    Left = 76
    Top = 32
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 6
  end
  object edtRow1: TComboBox
    Left = 76
    Top = 32
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 5
    OnChange = edtRow1Change
  end
  object edtAndValue: TComboBox
    Left = 8
    Top = 55
    Width = 65
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 11
    Items.Strings = (
      ' and '
      ' or ')
  end
  object edtAnd2: TComboBox
    Left = 8
    Top = 55
    Width = 65
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 10
    Items.Strings = (
      #24182#19988
      #25110#32773)
  end
  object edtAnd3: TComboBox
    Left = 8
    Top = 78
    Width = 65
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 12
    Items.Strings = (
      #24182#19988
      #25110#32773)
  end
  object edtAnd4: TComboBox
    Left = 8
    Top = 102
    Width = 65
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 13
    Items.Strings = (
      #24182#19988
      #25110#32773)
  end
  object edtAnd5: TComboBox
    Left = 8
    Top = 126
    Width = 65
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 14
    Items.Strings = (
      #24182#19988
      #25110#32773)
  end
  object edtAnd6: TComboBox
    Left = 8
    Top = 151
    Width = 65
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 15
    Items.Strings = (
      #24182#19988
      #25110#32773)
  end
  object edtRow2: TComboBox
    Left = 76
    Top = 55
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 16
    OnChange = edtRow2Change
  end
  object edtRow3: TComboBox
    Left = 76
    Top = 78
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 17
  end
  object edtRow4: TComboBox
    Left = 76
    Top = 102
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 18
  end
  object edtRow5: TComboBox
    Left = 76
    Top = 126
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 19
  end
  object edtRow6: TComboBox
    Left = 76
    Top = 151
    Width = 121
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 20
  end
  object edtComp2: TComboBox
    Left = 200
    Top = 55
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 21
    Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110)
  end
  object edtComp3: TComboBox
    Left = 200
    Top = 78
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 22
    Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110)
  end
  object edtComp4: TComboBox
    Left = 200
    Top = 102
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 23
    Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110)
  end
  object edtComp5: TComboBox
    Left = 200
    Top = 126
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 24
    Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110)
  end
  object edtComp6: TComboBox
    Left = 200
    Top = 151
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 25
    Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110)
  end
  object edtValue6: TEdit
    Left = 285
    Top = 151
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 30
  end
  object edtDate1: TDateTimePicker
    Left = 284
    Top = 32
    Width = 145
    Height = 20
    Date = 38276.434351354200000000
    Time = 38276.434351354200000000
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 31
    OnChange = edtDate1Change
  end
  object edtValue1: TEdit
    Left = 284
    Top = 32
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 9
  end
  object edtDate2: TDateTimePicker
    Left = 285
    Top = 55
    Width = 145
    Height = 20
    Date = 38276.435156446800000000
    Time = 38276.435156446800000000
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 32
    OnChange = edtDate2Change
  end
  object edtValue2: TEdit
    Left = 284
    Top = 55
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 26
  end
  object edtDate3: TDateTimePicker
    Left = 284
    Top = 78
    Width = 145
    Height = 20
    Date = 38276.435608946800000000
    Time = 38276.435608946800000000
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 33
    OnChange = edtDate3Change
  end
  object edtValue3: TEdit
    Left = 284
    Top = 78
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 27
  end
  object edtDate4: TDateTimePicker
    Left = 284
    Top = 102
    Width = 145
    Height = 20
    Date = 38276.436114884300000000
    Time = 38276.436114884300000000
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 34
    OnChange = edtDate4Change
  end
  object edtValue4: TEdit
    Left = 284
    Top = 102
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 28
  end
  object edtDate5: TDateTimePicker
    Left = 284
    Top = 126
    Width = 145
    Height = 20
    Date = 38276.436573067100000000
    Time = 38276.436573067100000000
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 35
    OnChange = edtDate5Change
  end
  object edtValue5: TEdit
    Left = 284
    Top = 126
    Width = 145
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 29
  end
  object edtComp1: TComboBox
    Left = 200
    Top = 32
    Width = 81
    Height = 20
    Style = csDropDownList
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    ItemHeight = 12
    TabOrder = 8
    Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110)
  end
end
