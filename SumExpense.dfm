inherited SumExpenseForm: TSumExpenseForm
  Left = 445
  Top = 203
  Caption = #31215#20998#28040#36153
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 48
    Height = 12
    Caption = #21345'    '#21495
    FocusControl = Edit1
  end
  object Label2: TLabel
    Left = 24
    Top = 58
    Width = 48
    Height = 12
    Caption = #21475'    '#20196
  end
  object Label3: TLabel
    Left = 24
    Top = 85
    Width = 48
    Height = 12
    Caption = #31215'    '#20998
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 48
    Height = 12
    Caption = #20351#29992#31215#20998
  end
  object Edit1: TEdit
    Left = 80
    Top = 28
    Width = 121
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 80
    Top = 54
    Width = 121
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 80
    Top = 84
    Width = 121
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 2
    OnExit = Edit3Exit
  end
  object bbCard: TBitBtn
    Left = 232
    Top = 24
    Width = 75
    Height = 25
    Caption = #28040#36153
    TabOrder = 3
    OnClick = bbCardClick
  end
  object bbNO: TBitBtn
    Left = 232
    Top = 56
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 4
    OnClick = bbNOClick
  end
  object Edit4: TEdit
    Left = 80
    Top = 112
    Width = 121
    Height = 20
    ImeName = #32043#20809#25340#38899#36755#20837#27861
    TabOrder = 5
  end
end
